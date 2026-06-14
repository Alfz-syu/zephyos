#!/bin/bash
echo "[POST-INSTALL] Final GPU configuration..."
/usr/local/bin/detect-gpu-driver.sh
mkinitcpio -P
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable ufw apparmor clamav-freshclam
echo "[POST-INSTALL] Done."
