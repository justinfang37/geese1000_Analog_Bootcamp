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
C {devices/vsource.sym} -190 0 1 0 {name=VDIFF value="dc 0 ac 1" savecurrent=false}
C {devices/gnd.sym} -120 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -120 80 0 0 {name=l2 lab=GND}
C {devices/res.sym} -250 -20 3 1 {name=R1
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -250 40 3 1 {name=R2
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} -120 -170 0 0 {name=l3 lab=VDD}
C {devices/code_shown.sym} 220 50 0 0 {name=s1 only_toplevel=false value=".control
save all
op
ac dec 100 1 10G
let gain_db = db(v(net4))
let phase = 180/PI * ph(v(net4))
plot gain_db title 'AC Gain (dB)' ylabel 'dB'
plot phase title 'Phase (deg)' ylabel 'degrees'
meas ac dc_gain max gain_db
meas ac bw_3db when gain_db=dc_gain-3
meas ac gbw when gain_db=0
print dc_gain bw_3db gbw
.endc"}
C {sky130_fd_pr/corner.sym} 230 -190 0 0 {name=CORNER only_toplevel=false corner=tt}
