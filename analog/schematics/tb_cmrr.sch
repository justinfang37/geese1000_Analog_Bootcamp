v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -20 -40 -20 {lab=#net1}
N -200 0 -200 40 {lab=#net2}
N -140 0 -40 0 {lab=#net3}
N -100 20 -40 20 {lab=#net4}
N -280 -20 -280 10 {lab=#net5}
N -280 -20 -260 -20 {lab=#net5}
N -280 10 -280 40 {lab=#net5}
N -280 40 -260 40 {lab=#net5}
N 260 -0 270 60 {lab=out}
C {bootcamp_opamp.sym} 80 0 0 0 {name=x1}
C {devices/vsource.sym} -100 -140 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} -310 10 1 1 {name=VCM value="dc 0.9 ac 1" savecurrent=false}
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
C {devices/code_shown.sym} 90 -310 0 0 {name=s1 only_toplevel=false value=".control
save all
op
ac dec 100 1 10G
*cmmr
let acm_db = db(v(out))
plot acm_db title 'Common-Mode Gain (dB)' ylabel 'dB'
meas ac cm_gain max acm_db
print cm_gain
let cmmr = 82.1359-cm_gain
print cmmr
.endc"}
C {devices/lab_pin.sym} 270 60 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/vsource.sym} -170 0 1 0 {name=VDIFF value="dc -0.6353087m ac 0" savecurrent=false}
