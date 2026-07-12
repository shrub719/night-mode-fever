# injected at 0x80001a20

stbx r4, r9, r12

# address of graphics func
lis r8, 0x801d
ori r8, r8, 0x74ac

# undo night mode
lis r9, 0x4800
ori r9, r9, 0x10a9
stw r9, 0(r8)

# flush caches
dcbst 0, r8
sync
icbi 0, r8
isync

li r8, 0x0
li r9, 0x0

