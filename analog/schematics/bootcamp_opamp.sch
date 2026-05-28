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
N 130 -130 130 -60 {lab=#net3}
N 130 -60 190 -60 {lab=#net3}
N 190 -60 190 -50 {lab=#net3}
N -50 -190 50 -190 {lab=VDD}
N 50 -220 50 -190 {lab=VDD}
N 50 -190 130 -190 {lab=VDD}
N -120 -20 -90 -20 {lab=Vin+}
N 230 -20 260 -20 {lab=Vin-}
N -50 -20 60 -20 {lab=GND}
N 60 -20 60 -10 {lab=GND}
N 60 -20 190 -20 {lab=GND}
N -50 -90 30 -90 {lab=#net2}
N 30 -160 30 -90 {lab=#net2}
N -130 -160 -50 -160 {lab=VDD}
N -130 -220 -130 -160 {lab=VDD}
N -130 -220 50 -220 {lab=VDD}
N 50 -220 210 -220 {lab=VDD}
N 210 -220 210 -160 {lab=VDD}
N 130 -160 210 -160 {lab=VDD}
N 10 120 70 120 {lab=GND}
N 210 -220 450 -220 {lab=VDD}
N 450 -160 450 -80 {lab=Vout}
N 370 -80 390 -80 {lab=#net4}
N 130 -80 310 -80 {lab=#net3}
N 310 -190 310 -80 {lab=#net3}
N 310 -190 410 -190 {lab=#net3}
N 450 -80 450 90 {lab=Vout}
N 110 120 410 120 {lab=Vbias}
N 450 -30 520 -30 {lab=Vout}
N 450 -190 530 -190 {lab=VDD}
N 530 -220 530 -190 {lab=VDD}
N 450 -220 530 -220 {lab=VDD}
N 450 120 520 120 {lab=GND}
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
C {sky130_fd_pr/nfet_01v8.sym} 90 120 0 1 {name=M5
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
C {devices/ipin.sym} 250 120 1 1 {name=p2 lab=Vbias}
C {devices/ipin.sym} 260 -20 0 1 {name=p3 lab=Vin-}
C {devices/opin.sym} 520 -30 0 0 {name=p4 lab=Vout}
C {devices/gnd.sym} 60 -10 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 10 120 1 0 {name=l4 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 420 -80 3 1 {name=C1 model=cap_mim_m3_1 W=50 L=10 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_generic_po.sym} 340 -80 1 0 {name=R1
W=10
L=1
model=res_generic_po
mult=1}
C {devices/gnd.sym} 450 150 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 430 120 0 0 {name=M7
L=2
W=50
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
C {sky130_fd_pr/pfet_01v8.sym} 430 -190 0 0 {name=M6
L=1
W=60
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
C {devices/gnd.sym} 520 120 3 1 {name=l6 lab=GND}
