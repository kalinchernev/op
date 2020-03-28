# OP

## Fix dual-boot

Some files may get deleted at /boot/efi after Windows updates.

Use the bootable Linux USB stick. F12 or whatever to boot into existing installation.

Paste the following:

```bash
sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=manjaro --recheck
sudo update-grub
```

## [Find MAC address](https://www.fosslinux.com/3027/how-to-find-ip-and-mac-address-by-command-line-in-linux.htm)

```
ip link show
```
