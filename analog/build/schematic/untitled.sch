v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -340 -30 -180 -30 {lab=inn}
N -240 10 -180 10 {lab=#net1}
N 120 -10 180 -10 {lab=out}
N -290 -10 -180 -10 {lab=out}
N -290 -10 -290 190 {lab=out}
N -290 190 120 190 {lab=out}
N 120 -10 120 190 {lab=out}
C {bootcamp_opamp.sym} -60 -10 0 0 {name=x1}
C {devices/vsource.sym} -240 -150 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} -240 40 0 0 {name=VB value=0.7 savecurrent=false}
C {devices/gnd.sym} -240 -120 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -240 70 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -240 -180 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 180 -10 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/vsource.sym} -370 -30 1 1 {name=VCM value="dc 0.9 ac 1" savecurrent=false}
C {devices/gnd.sym} -400 -30 1 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -300 -30 3 1 {name=p2 sig_type=std_logic lab=inn}
C {devices/lab_pin.sym} -290 -10 1 1 {name=p3 sig_type=std_logic lab=inp}
C {devices/code_shown.sym} 370 -50 0 0 {name=s1 only_toplevel=false value=".control
save all
op
ac dec 100 1 10G
let zin = abs(v(inp) / i(VCM))
let zout = abs(v(out) / 1e-6)
plot zin title 'Input Impedance (Ohm)' ylog
plot zout title 'Output Impedance (Ohm)' ylog
meas ac zin_lf find zin at=1
meas ac zout_lf find zout at=1
print zin_lf zout_lf
.endc"}
C {sky130_fd_pr/corner.sym} 380 -270 0 0 {name=CORNER only_toplevel=false corner=tt}
