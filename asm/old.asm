# injected at 0x80001a20

stbx r4, r9, r12

# prepare address of graphics func
lis r10, 0x801d
ori r10, r10, 0x74ac

# check if night mode already set
lwz r8, 0(r10)
lis r9, 0x6000
cmp cr0, r8, r9
beq already_set

# set night mode (hold A)
lis r8, 0x803b
ori r8, r8, 0x3178
lwz r8, 0(r8)
cmpwi r8, 0x800
bne end
stw r9, 0(r10)
b end

already_set:
# undo night mode
lis r9, 0x4800
ori r9, r9, 0x10a9
stw r9, 0(r10)

end:
# flush caches
dcbst 0, r10
sync
icbi 0, r10
isync

li r8, 0x0
li r9, 0x0
li r10, 0x0
# you never know

