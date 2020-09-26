# Unlock CFG Lock and DVMT Pre-allocated with UEFI Shell (without flash BIOS)

## Pre-requirement

EFI version >= `20.9.26`.

## Steps

1. Boot OpenCore and press "Space" key
2. Choose "Setup Shell" (not "UEFI Shell") and press "Enter" key
3. Enter the following commands if you need:

(for 8th gen laptops) unlock CFG Lock (MSR 0xE2 register):

```shell
setup_var 0x5BE 0x0
```

(for 8th gen laptops, specially for GI5CNxx, GJ5CNxx) unlock DVMT Pre-allocated to 64MB:

```shell
setup_var 0x8DC 0x2
```

(for 9th gen laptops) unlock CFG Lock (MSR 0xE2 register):

```shell
setup_var 0x6EF 0x0
```

The newer 8th gen models and 9th gen models (GKxx) has a default value of 64MB for DVMT pre-allocated memory, you don't need to modify it.

## Reference

Usage of `setup_var` command:

```shell
setup_var address [value]
```

| Generation | Setting Name | Address | Recommended Value | Explain |
|---------|--------|------|-------|-----|
| 8th gen | CFG Lock | 0x5BE | 0x0 | disable CFG Lock |
| 8th gen | DVMT Pre-allocated | 0x8DC | 0x2 | set DVMT to 64M |
| 9th gen | CFG Lock | 0x6EF | 0x0 | disable CFG Lock |
| 9th gen | DVMT Pre-allocated | 0xA12 | 0x2 | set DVMT to 64M (default) |

