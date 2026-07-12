# Night Mode for Rhythm Heaven Fever

## Usage

Once the cheat is active, hold A when starting any minigame (i.e. after the practise)
and Night Mode will activate.

As a side effect, you will always be able to Go for a Perfect.

## How to add

1. Open Dolphin
1. Right click on Rhythm Heaven Fever > Properties
1. Go to Gecko Codes > Add New Code
1. Paste this into the Code section

```
$Night Mode (Hold A) [shrub719]
003201B8 00000001
C2009E50 00000009
986D92F9 3DE0801D
61EF74AC 3E00803B
62103178 82100000
72100800 4182000C
3E206000 922F0000
7C00786C 7C0004AC
7C007FAC 4C00012C
39E00000 3A000000
3A200000 00000000
C2001A20 00000007
7C8961AE 3D00801D
610874AC 3D204800
612910A9 91280000
7C00406C 7C0004AC
7C0047AC 4C00012C
39000000 39200000
60000000 00000000
```

## Source

You can see the (commented) assembly code in [`asm/`](./asm/)!

