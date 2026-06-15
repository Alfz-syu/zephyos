#!/usr/bin/env bash
iso_name="zephyos"
iso_label="ZEPHYOS_$(date +%Y%m)"
iso_publisher="Alfz <https://github.com/Alfz-syu/zephyos>"
iso_application="ZephyOS - Light as wind, fast as thought"
iso_version="$(date --rfc-3339=date)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.grub')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15')
file_permissions=(
  ["/home/liveuser"]="1010:1010:0755"
  ["/home/liveuser/.local"]="1010:1010:0755"	
  ["/home/liveuser/.config"]="1010:1010:0755"
  ["/etc/sudoers.d/liveuser"]="0:0:0440"
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/detect-gpu-driver.sh"]="0:0:755"
  ["/usr/local/bin/post-install-gpu.sh"]="0:0:755"
)
