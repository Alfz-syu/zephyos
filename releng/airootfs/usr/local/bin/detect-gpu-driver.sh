#!/bin/bash
# ============================================================
# detect-gpu-driver.sh
# Auto-detect GPU dan install driver yang sesuai
# ZephyOS
# ============================================================

LOG="/var/log/gpu-detect.log"
exec > >(tee -a "$LOG") 2>&1
echo "========================================"
echo "GPU Auto-Detect — $(date)"
echo "========================================"

GPU_INFO=$(lspci | grep -iE "VGA|3D|Display")
echo "[INFO] GPU terdeteksi:"
echo "$GPU_INFO"

install_pkg() {
    echo "[INSTALL] Menginstall: $*"
    pacman -S --noconfirm --needed "$@"
}

# NVIDIA
if echo "$GPU_INFO" | grep -qi "nvidia"; then
    echo "[GPU] NVIDIA terdeteksi"
    install_pkg nvidia-dkms nvidia-utils lib32-nvidia-utils \
                nvidia-settings opencl-nvidia lib32-opencl-nvidia \
                dxvk-bin vkd3d-proton
    echo "options nvidia-drm modeset=1" > /etc/modprobe.d/nvidia-drm.conf
    sed -i 's/^MODULES=(/MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm /' \
        /etc/mkinitcpio.conf

# AMD
elif echo "$GPU_INFO" | grep -qi "amd\|radeon\|ati"; then
    echo "[GPU] AMD/Radeon terdeteksi"
    install_pkg xf86-video-amdgpu mesa lib32-mesa \
                vulkan-radeon lib32-vulkan-radeon \
                libva-mesa-driver lib32-libva-mesa-driver \
                mesa-vdpau lib32-mesa-vdpau \
                dxvk-bin vkd3d-proton lib32-vkd3d

# INTEL
elif echo "$GPU_INFO" | grep -qi "intel"; then
    echo "[GPU] Intel iGPU terdeteksi"
    install_pkg xf86-video-intel mesa lib32-mesa \
                vulkan-intel lib32-vulkan-intel \
                intel-media-driver libva-intel-driver \
                dxvk-bin

else
    echo "[WARN] GPU tidak dikenali — install generic"
    install_pkg mesa lib32-mesa xf86-video-vesa
fi

install_pkg vulkan-icd-loader lib32-vulkan-icd-loader vulkan-tools

mkinitcpio -P

echo ""
echo "========================================"
echo "[DONE] Deteksi selesai"
vulkaninfo --summary 2>/dev/null | grep "deviceName" || echo "(belum tersedia)"
echo "========================================"
