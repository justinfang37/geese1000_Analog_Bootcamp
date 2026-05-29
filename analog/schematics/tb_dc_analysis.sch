v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -220 -20 -60 -20 {lab=#net1}
N -220 0 -220 40 {lab=#net2}
N -160 0 -60 -0 {lab=#net3}
N -120 20 -60 20 {lab=#net4}
N -300 -20 -300 10 {lab=#net5}
N -300 -20 -280 -20 {lab=#net5}
N -300 10 -300 40 {lab=#net5}
N -300 40 -280 40 {lab=#net5}
C {bootcamp_opamp.sym} 60 0 0 0 {name=x1}
C {devices/vsource.sym} -120 -140 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vsource.sym} -330 10 1 1 {name=VCM value=0.9 savecurrent=false}
C {devices/vsource.sym} -120 50 0 0 {name=VB value=0.7 savecurrent=false}
C {devices/vsource.sym} -190 0 1 0 {name=VDIFF value=0 savecurrent=false}
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
C {devices/code_shown.sym} 140 -290 0 0 {name=s1 only_toplevel=false value=".control
save all
dc VDIFF -50m 50m 0.1m
plot v(net6) vs v(net3)-v(net1) title 'VTC'
meas dc vout_at_zero find v(net6) at=0
let gain = deriv(v(net6))
plot gain title 'Gain'
print maximum(gain)
.endc"}
C {sky130_fd_pr/corner.sym} 300 -110 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/gnd.sym} -360 10 1 0 {name=l4 lab=GND}
