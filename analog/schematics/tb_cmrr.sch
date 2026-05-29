v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -20 -40 -20 {lab=#net1}
N -200 0 -200 40 {lab=#net2}
N -140 0 -40 0 {lab=#net2}
N -100 20 -40 20 {lab=#net3}
N -280 -20 -280 10 {lab=#net4}
N -280 -20 -260 -20 {lab=#net4}
N -280 10 -280 40 {lab=#net4}
N -280 40 -260 40 {lab=#net4}
N -200 -0 -140 0 {lab=#net2}
C {bootcamp_opamp.sym} 80 0 0 0 {name=x1}
C {devices/vsource.sym} -100 -140 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} -310 10 1 1 {name=VCM value=0.9 savecurrent=false}
C {devices/vsource.sym} -100 50 0 0 {name=VB value=0.7 savecurrent=false}
C {devices/gnd.sym} -100 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -100 80 0 0 {name=l2 lab=GND}
C {devices/res.sym} -230 -20 3 1 {name=R1
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -230 40 3 1 {name=R2
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} -100 -170 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/corner.sym} 320 -110 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/gnd.sym} -340 10 1 0 {name=l4 lab=GND}
