{pkgs ? import <nixpkgs> {}}: let
  xschem = pkgs.stdenv.mkDerivation rec {
    pname = "xschem";
    version = "3.4.6";
    src = pkgs.fetchFromGitHub {
      owner = "StefanSchippers";
      repo = "xschem";
      rev = "3.4.6";
      sha256 = "sha256-1jP1SJeq23XNkOQgcl2X+rBrlka4a04irmfhoKRM1j4=";
    };
    nativeBuildInputs = with pkgs; [
      pkg-config
      autoconf
      automake
    ];
    buildInputs = with pkgs; [
      tcl
      tk
      xorg.libX11
      xorg.libXpm
      cairo
      readline
      flex
      bison
      zlib
    ];
    configureFlags = [
      "--prefix=${placeholder "out"}"
    ];
    enableParallelBuilding = true;

    buildPhase = ''
      make
    '';
    installPhase = ''
      make install
    '';
    meta = {
      description = "Schematic capture and netlisting EDA tool";
      homepage = "https://xschem.sourceforge.io/";
      platforms = pkgs.lib.platforms.linux;
    };
  };

  magic-vlsi-old = pkgs.stdenv.mkDerivation rec {
    pname = "magic-vlsi";
    version = "8.3.466";
    src = pkgs.fetchurl {
      url = "http://opencircuitdesign.com/magic/archive/magic-${version}.tgz";
      sha256 = "sha256-HbkWS2cp1lz2UnAlbYbqYY7/7XrbUuq9axXrs8zt5FY=";
    };
    nativeBuildInputs = [pkgs.python311];
    buildInputs = with pkgs; [
      cairo
      xorg.libX11
      m4
      mesa_glu
      ncurses
      tcl
      tcsh
      tk
      git
    ];
    enableParallelBuilding = true;
    configureFlags = [
      "--with-tcl=${pkgs.tcl}"
      "--with-tk=${pkgs.tk}"
      "--disable-werror"
    ];
    postPatch = ''
      patchShebangs scripts/*
    '';
    NIX_CFLAGS_COMPILE = "-Wno-implicit-function-declaration -O2";
    meta = with pkgs.lib; {
      description = "VLSI layout tool written in Tcl";
      homepage = "http://opencircuitdesign.com/magic/";
      license = licenses.mit;
      maintainers = with maintainers; [thoughtpolice];
    };
  };

  netgen-old = pkgs.stdenv.mkDerivation rec {
    name = "netgen";
    version = "1.5.295";
    src = pkgs.fetchurl {
      url = "http://opencircuitdesign.com/netgen/archive/netgen-${version}.tgz";
      sha256 = "sha256-y2UBf564WefrDbIxSrFbNc1FxQfDdYzRORrJjRdkKrg=";
    };
    nativeBuildInputs = [pkgs.python312];
    buildInputs = with pkgs; [
      tcl
      tk
      xorg.libX11
    ];
    enableParallelBuilding = true;
    configureFlags = [
      "--with-tcl=${pkgs.tcl}"
      "--with-tk=${pkgs.tk}"
    ];
    NIX_CFLAGS_COMPILE = "-O2";
    postPatch = ''
      find . -name "*.sh" -exec patchShebangs {} \; || true
    '';
    meta = with pkgs.lib; {
      description = "LVS netlist comparison tool";
      homepage = "http://opencircuitdesign.com/netgen/";
      license = licenses.mit;
      maintainers = with maintainers; [thoughtpolice];
    };
  };
in
  pkgs.mkShell {
    name = "eda-environment-v1.0";
    buildInputs = with pkgs; [
      # Builds
      gnumake
      git
      python312
      ccache

      # Digital design
      verilog
      slang
      verilator
      yosys
      gtkwave
      gaw
      # Pytest and Cocotb setup
      python312Packages.pytest
      python312Packages.cocotb
      python312Packages.pip # requirements.txt

      # OpenRoad + dep
      openroad
      ruby
      stdenv.cc.cc.lib
      expat
      zlib
      python312Packages.rich
      python312Packages.click
      python312Packages.tkinter
      python312Packages.pyyaml

      # Analog Design
      xschem
      ngspice
      xyce
      netgen-old
      klayout
      magic-vlsi-old
      vim
      # For Data (python)
      python312Packages.numpy
      python312Packages.matplotlib
      python312Packages.scipy

      # Graphics/GUI support
      xorg.libX11
      xorg.libXpm
      xorg.libXt
      cairo
      xterm
      xorg.fontutil
      xorg.fontmiscmisc
      xorg.fontcursormisc
      dejavu_fonts
      liberation_ttf
    ];

    shellHook = ''
          export PROJECT_ROOT="$(pwd)"
          export TOOLS_DIR="$PROJECT_ROOT/.tools"
          mkdir -p "$TOOLS_DIR/bin"
          export PATH="$TOOLS_DIR/bin:$PATH"
          export CCACHE_DIR="$TOOLS_DIR/ccache"
          export CC="ccache gcc"
          export CXX="ccache g++"

          export NIX_LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib}/lib:${pkgs.expat}/lib:${pkgs.zlib}/lib"
          export FONTCONFIG_FILE=${pkgs.fontconfig.out}/etc/fonts/fonts.conf
          export FONTCONFIG_PATH=${pkgs.fontconfig.out}/etc/fonts

          # PDK setup
          export PDK_ROOT="$HOME/.volare"
          export PDK="sky130A"
          export KLAYOUT_PATH="$PDK_ROOT/$PDK/libs.tech/klayout"
          export XSCHEM_USER_LIBRARY_PATH="$PDK_ROOT/$PDK/libs.tech/xschem"
          export XSCHEM_LIBRARY_PATH="$PDK_ROOT/$PDK/libs.tech/xschem:${xschem}/share/xschem/xschem_library"

          # Setup Python virtual environment with Python 3.12
          export VENV_DIR="$PROJECT_ROOT/.venv"
          if [ -z "$VIRTUAL_ENV" ] || [ "$VIRTUAL_ENV" != "$VENV_DIR" ]; then
              if [ ! -d "$VENV_DIR" ]; then
                  echo "Creating Python virtual environment..."
                  python3 -m venv "$VENV_DIR"
              fi
              source "$VENV_DIR/bin/activate"
          fi

          # Install additional Python packages with pinned versions
          pip install --upgrade pip==24.2 setuptools==75.1.0 wheel==0.44.0
          pip install --no-build-isolation \
              volare \
              openlane==2.3.10 \
              cace

          if [ ! -d "$PDK_ROOT/$PDK" ]; then
              echo "Downloading PDK..."
              volare enable --pdk sky130 0fe599b2afb6708d281543108caf8310912f54af
          fi

          # Create ngspice init file for faster sky130 simulation
          mkdir -p "$HOME/.xschem/simulations"
          if [ ! -f "$HOME/.xschem/simulations/.spiceinit" ]; then
            cat > "$HOME/.xschem/simulations/.spiceinit" << 'EOF'
      set ngbehavior=hsa
      set ng_nomodcheck
      set num_threads=4
      EOF
          fi

          echo "=== EDA Environment v1.0 ==="
          echo ""
          echo "System tools available:"
          echo "  - Python: $(python --version)"
          echo "  - xschem: $(xschem --version 2>/dev/null || echo 'custom build')"
          echo "  - yosys: $(yosys -V 2>/dev/null | head -1 || echo 'unknown version')"
          echo "  - ngspice: $(ngspice --version 2>/dev/null | head -1 || echo 'unknown version')"
          echo "  - verilator: $(verilator --version 2>/dev/null | head -1 || echo 'unknown version')"
          echo "  - magic: $(magic --version 2>/dev/null || echo 'custom build ${magic-vlsi-old.version}')"
          echo "  - PDK: $PDK in $PDK_ROOT"
    '';
  }
