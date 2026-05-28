v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 10 -30 10 {lab=#net1}
N -30 10 -30 70 {lab=#net1}
N -30 70 70 70 {lab=#net1}
N 70 70 70 90 {lab=#net1}
N 190 10 190 70 {lab=#net1}
N 70 70 190 70 {lab=#net1}
N 70 70 70 90 {lab=#net1}
N -10 -160 90 -160 {lab=#net2}
N -50 -130 -50 -50 {lab=#net2}
N 130 -130 130 -60 {lab=Vout}
N 130 -60 190 -60 {lab=Vout}
N 190 -60 190 -50 {lab=Vout}
N -50 -190 50 -190 {lab=VDD}
N 50 -220 50 -190 {lab=VDD}
N 50 -190 130 -190 {lab=VDD}
N -120 -20 -90 -20 {lab=Vin+}
N 230 -20 260 -20 {lab=Vin-}
N 0 120 30 120 {lab=Vbias}
N -50 -20 60 -20 {lab=GND}
N 60 -20 60 -10 {lab=GND}
N 60 -20 190 -20 {lab=GND}
N 130 -100 260 -100 {lab=Vout}
N -50 -90 30 -90 {lab=#net2}
N 30 -160 30 -90 {lab=#net2}
N 70 120 140 120 {lab=GND}
N -130 -160 -50 -160 {lab=VDD}
N -130 -220 -130 -160 {lab=VDD}
N -130 -220 50 -220 {lab=VDD}
N 50 -220 210 -220 {lab=VDD}
N 210 -220 210 -160 {lab=VDD}
N 130 -160 210 -160 {lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -70 -20 0 0 {name=M1
L=1
W=15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -30 -160 0 1 {name=M3
L=1
W=30
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 110 -160 0 0 {name=M4
L=1
W=30
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 50 120 0 0 {name=M5
L=2
W=25
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 210 -20 0 1 {name=M2
L=1
W=15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 70 150 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 50 -220 0 0 {name=l2 lab=VDD}
C {devices/ipin.sym} -120 -20 0 0 {name=p1 lab=Vin+}
C {devices/ipin.sym} 0 120 0 0 {name=p2 lab=Vbias}
C {devices/ipin.sym} 260 -20 0 1 {name=p3 lab=Vin-}
C {devices/opin.sym} 260 -100 0 0 {name=p4 lab=Vout}
C {devices/gnd.sym} 60 -10 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 140 120 3 1 {name=l4 lab=GND}
