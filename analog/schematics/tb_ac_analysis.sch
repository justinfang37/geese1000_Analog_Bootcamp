v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -350 -10 -190 -10 {lab=#net1}
N -350 10 -350 50 {lab=#net2}
N -290 10 -190 10 {lab=#net3}
N -250 30 -190 30 {lab=#net4}
N -430 -10 -430 20 {lab=#net5}
N -430 -10 -410 -10 {lab=#net5}
N -430 20 -430 50 {lab=#net5}
N -430 50 -410 50 {lab=#net5}
N 110 10 120 40 {lab=out}
C {devices/code_shown.sym} 190 20 0 0 {name=s1 only_toplevel=false value=".control
save all
op
ac dec 100 1 10G
* double checking gain
let gain_db = db(v(out))
let phase = 180/PI * ph(v(out))
plot gain_db title 'AC Gain (dB)' ylabel 'dB'
plot phase title 'Phase (deg)' ylabel 'degrees'

* 3dB bandwidth
meas ac dc_gain max gain_db
meas ac bw_3db when gain_db=dc_gain-3

* gbw product
meas ac gbw when gain_db=0
print dc_gain bw_3db gbw
.endc"}
C {sky130_fd_pr/corner.sym} 130 -180 0 0 {name=CORNER only_toplevel=false corner=tt}
C {bootcamp_opamp.sym} -70 10 0 0 {name=x1}
C {devices/vsource.sym} -250 -130 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} -460 20 1 1 {name=VCM value=0.9 savecurrent=false}
C {devices/vsource.sym} -250 60 0 0 {name=VB value=0.7 savecurrent=false}
C {devices/vsource.sym} -320 10 1 0 {name=VDIFF value="dc -0.6353087m ac 1" savecurrent=false}
C {devices/gnd.sym} -250 -100 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -250 90 0 0 {name=l2 lab=GND}
C {devices/res.sym} -380 -10 3 1 {name=R1
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -380 50 3 1 {name=R2
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} -250 -160 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -490 20 1 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 120 40 0 1 {name=p1 sig_type=std_logic lab=out}
