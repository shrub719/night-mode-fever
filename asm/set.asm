# injected at 0x80009e50

stb r3, -27911(r13)

# address of graphics func
lis r15, 0x801d
ori r15, r15, 0x74ac

# check if A held
lis r16, 0x803b
ori r16, r16, 0x3178
lwz r16, 0(r16)
andi. r16, r16, 0x800
beq end

# set night mode
lis r17, 0x6000
stw r17, 0(r15)

end:
# flush caches
dcbst 0, r15
sync
icbi 0, r15
isync

li r15, 0x0
li r16, 0x0
li r17, 0x0
# you never know

