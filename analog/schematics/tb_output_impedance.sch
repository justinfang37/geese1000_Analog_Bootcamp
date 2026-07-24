v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -20 -40 -20 {lab=inn}
N -100 20 -40 20 {lab=#net1}
N 260 -0 320 0 {lab=out}
N 320 0 320 70 {lab=out}
N -150 0 -40 0 {lab=out}
N -150 0 -150 200 {lab=out}
N -150 200 260 200 {lab=out}
N 260 0 260 200 {lab=out}
C {bootcamp_opamp.sym} 80 0 0 0 {name=x1}
C {devices/vsource.sym} -100 -140 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} -100 50 0 0 {name=VB value=0.7 savecurrent=false}
C {devices/gnd.sym} -100 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -100 80 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -100 -170 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/corner.sym} 370 -270 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/gnd.sym} 320 130 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 320 0 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/vsource.sym} -230 -20 1 1 {name=VCM value=0.9 savecurrent=false}
C {devices/gnd.sym} -260 -20 1 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -160 -20 3 1 {name=p2 sig_type=std_logic lab=inn}
C {devices/code_shown.sym} 510 -40 0 0 {name=s1 only_toplevel=false value=".control
op
* z = v/I
ac dec 100 1 10G
let zout_mag = 1/abs(i(vtest))
meas ac zout find zout_mag at=1 
* at 1 hz
print zout
plot zout_mag title 'Output Impedance (Ohm)' ylog
.endc"}
C {devices/vsource.sym} 320 100 0 0 {name=Vtest value="dc 0.9 ac 1" savecurrent=false}
