v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -220 -20 -60 -20 {lab=#net1}
N -220 0 -220 40 {lab=#net2}
N -160 0 -60 0 {lab=#net3}
N -120 20 -60 20 {lab=#net4}
C {bootcamp_opamp.sym} 60 0 0 0 {name=x1}
C {devices/vsource.sym} -120 -140 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} -280 10 2 0 {name=VCM value=0.9 savecurrent=false}
C {devices/vsource.sym} -120 50 0 0 {name=VB value=0.7 savecurrent=false}
C {devices/vsource.sym} -190 0 3 1 {name=VDIFF value="dc 0 ac 1" savecurrent=false}
C {devices/gnd.sym} -120 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -120 80 0 0 {name=l2 lab=GND}
C {devices/res.sym} -250 -20 3 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -250 40 3 1 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} -120 -170 0 0 {name=l3 lab=VDD}
C {devices/code_shown.sym} 200 -130 0 0 {name=s1 only_toplevel=false value=blabla}
C {sky130_fd_pr/corner.sym} 300 -110 0 0 {name=CORNER only_toplevel=false corner=tt}
