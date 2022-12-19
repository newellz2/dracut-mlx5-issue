# mlx5 dracut

```
  Product Name: Mellanox ConnectX-6 Single Port VPI HDR QSFP Adapter
  Read-only fields:
    [PN] Part number: 01GK7G
    [EC] Engineering changes: A06
    [MN] Manufacture ID: 1028
    [SN] Serial number: ------------------
    [VA] Vendor specific: DSV1028VPDR.VER2.1
    [VB] Vendor specific: FFV20.32.20.04
    [VC] Vendor specific: NPY1
    [VD] Vendor specific: PMTD
    [VE] Vendor specific: NMVMellanox Technologies, Inc.
    [VH] Vendor specific: L1D0
    [VU] Vendor specific: TW01GK7G7873526KT2BMMLNXS0D0F0 
    [RV] Reserved: checksum good, 2 byte(s) reserved
```

- Move tmpfsroot.conf to /etc/dracut.conf.d/
- Move 92mlx5 to /usr/lib/dracut/modules.d/
- Recreate initrd

```bash
dracut -f --kver 4.18.0-425.3.1.el8.x86_64 -v
```

