================================================================================
              README — PANDUAN EMULATOR PLAYSTATION di ZephyOS
                   ZephyOS · Light as wind, fast as thought
================================================================================

Emulator PlayStation sudah terpasang di ZephyOS dan siap digunakan.
Ada dua hal yang perlu kamu siapkan sendiri sebelum bisa bermain:

  1. File BIOS (untuk PS1, PS2, PS3)
  2. File game (ISO/ROM)

Ikuti panduan di bawah sesuai konsol yang ingin kamu gunakan.


================================================================================
  BAGIAN 1 — FILE BIOS
================================================================================

--------------------------------------------------------------------------------
[ PS1 ] — DuckStation
--------------------------------------------------------------------------------
File BIOS yang dibutuhkan:
  scph5500.bin  → BIOS versi Jepang
  scph5501.bin  → BIOS versi Amerika
  scph5502.bin  → BIOS versi Eropa
  (cukup salah satu sesuai region game kamu)

Letakkan file BIOS di:
  /home/USERMU/.local/share/duckstation/bios/

Cara set di aplikasi:
  Buka DuckStation → Settings → BIOS
  → klik ikon folder di "BIOS Directory"
  → arahkan ke folder berisi file BIOS kamu
  → klik OK


--------------------------------------------------------------------------------
[ PS2 ] — PCSX2
--------------------------------------------------------------------------------
File BIOS yang dibutuhkan:
  File BIOS PS2 (contoh: SCPH-70012.BIN)
  Biasanya satu paket dengan file .erom dan .nvm

Letakkan file BIOS di:
  /home/USERMU/.config/PCSX2/bios/

Cara set di aplikasi:
  Buka PCSX2 → Settings → Emulation → BIOS
  → arahkan ke folder BIOS kamu
  → pilih BIOS dari daftar yang muncul
  → klik OK


--------------------------------------------------------------------------------
[ PS3 ] — RPCS3
--------------------------------------------------------------------------------
File firmware yang dibutuhkan:
  PS3UPDAT.PUP

Cara install firmware:
  Buka RPCS3 → File → Install Firmware
  → pilih file PS3UPDAT.PUP
  → tunggu proses install selesai
  → RPCS3 siap digunakan


--------------------------------------------------------------------------------
[ PSP ] — PPSSPP
--------------------------------------------------------------------------------
PPSSPP tidak memerlukan file BIOS sama sekali.
Langsung letakkan file game dan buka via PPSSPP.


================================================================================
  BAGIAN 2 — FILE GAME
================================================================================

--------------------------------------------------------------------------------
[ PS1 ] — DuckStation
--------------------------------------------------------------------------------
Format file game yang didukung:
  .bin / .cue
  .chd
  .pbp
  .img / .mdf

Letakkan file game di folder mana saja, contoh:
  /home/USERMU/Games/PS1/

Cara buka game:
  Buka DuckStation → Add Game Directory
  → arahkan ke folder game kamu
  → game akan muncul di daftar
  → double-click untuk mulai bermain


--------------------------------------------------------------------------------
[ PS2 ] — PCSX2
--------------------------------------------------------------------------------
Format file game yang didukung:
  .iso
  .chd
  .bin / .mdf

Letakkan file game di folder mana saja, contoh:
  /home/USERMU/Games/PS2/

Cara buka game:
  Buka PCSX2 → Add Game Directory
  → arahkan ke folder game kamu
  → game akan muncul di daftar
  → double-click untuk mulai bermain


--------------------------------------------------------------------------------
[ PS3 ] — RPCS3
--------------------------------------------------------------------------------
Format file game yang didukung:
  Folder game hasil extract (berisi EBOOT.BIN)
  File .pkg

Letakkan file game di folder mana saja, contoh:
  /home/USERMU/Games/PS3/

Cara buka game:
  Buka RPCS3 → File → Add Games
  → arahkan ke folder game kamu
  → game akan muncul di daftar
  → double-click untuk mulai bermain

  Untuk file .pkg:
  RPCS3 → File → Install Packages/Raps/Edats
  → pilih file .pkg
  → tunggu proses install selesai


--------------------------------------------------------------------------------
[ PSP ] — PPSSPP
--------------------------------------------------------------------------------
Format file game yang didukung:
  .iso
  .cso
  .pbp

Letakkan file game di folder mana saja, contoh:
  /home/USERMU/Games/PSP/

Cara buka game:
  Buka PPSSPP → Games
  → arahkan ke folder game kamu
  → pilih game dari daftar
  → klik untuk mulai bermain


================================================================================
  CONTROLLER PLAYSTATION
================================================================================

Controller PlayStation otomatis terdeteksi saat disambungkan:

  DualShock 3  → sambungkan via kabel USB
  DualShock 4  → sambungkan via kabel USB atau Bluetooth
  DualSense    → sambungkan via kabel USB atau Bluetooth

Untuk Bluetooth:
  Klik ikon Bluetooth di taskbar kanan bawah
  → klik "Add New Device"
  → tekan tombol PS + Share (DS4) atau PS + Create (DualSense)
  → pilih controller dari daftar
  → klik Pair


================================================================================
  STRUKTUR FOLDER YANG DISARANKAN
================================================================================

Untuk kerapian, disarankan buat struktur folder seperti ini:

  /home/USERMU/
  ├── Games/
  │   ├── PS1/
  │   ├── PS2/
  │   ├── PS3/
  │   └── PSP/
  └── BIOS/
      ├── PS1/
      ├── PS2/
      └── PS3/

Kamu bebas meletakkan file di folder manapun, yang penting
arahkan path-nya dengan benar di pengaturan tiap emulator.


================================================================================
ZephyOS · Light as wind, fast as thought
================================================================================