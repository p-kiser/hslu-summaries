---
title: Thinkpad Setup
date: 03.03.2018
author: Pascal Kiser
---

# Vorbereitung

* [ISO-File](https://www.archlinux.org/download/) herunterladen
* Boot-Stick erstellen:

```
dd bs=4M if=$ISO_FILE of=$USB_STICK status=progress && sync
```

# Installation

Keyboard Layouts auflisten:

```
ls /usr/share/kbd/keymaps/**/*.map.gz
```

Keyboard Layout auswählen:

```
loadkeys de_CH-latin1
```

Netzwerkverbindung testen (Kabelverbindung):

```
ping  -c 1 www.google.com
```

Oder WLAN konfigurieren:

```
wifi-menu
```

Systemzeit konfigurieren:

```
timedatectl set-ntp true
```

## Partitionieren

Disk überprüfen:

```
fdisk -l
```

Partitionen erstellen:

```
cfdisk /dev/sda
```

* Select label type `dos`
* `[New]`
* partition size:
* `[primary]`
* Bootable machen: `[Bootable]`
* Änderungen auf Disk schreiben: `[Write]`
* yes
* `[Quit]`

Patrition überprüfen:

```
lsblk
```

Partition formatieren:

```
mkfs.ext4 /dev/sda1
```
Partitionen mounten:

```
mount /dev/sda1 /mnt
```

Patrition überprüfen:

```
lsblk
```

## Base system installieren

Reihenfolge in Mirrorlist anpassen:

```
nano /etc/pacman.d/mirrorlist
```

Installieren:

```
pacstrap /mnt base base-devel
```

fstab-File generieren:

```
genfstab -U /mnt >> /mnt/etc/fstab
```

root system wechseln:

```
arch-chroot /mnt
```

## Konfigurationen anpassen

Sprache und Zeitzone auswählen:

```
ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime
```

Hardware Clock einstellen:

```
hwclock --systohc
```

Kommentarzeichen bei Sprache entfernen:

```
nano /etc/locale.gen
```

locals generieren:

```
locale-gen
```

LANG setzen in `/etc/locale.conf`:

```
echo LANG=en_US.UTF-8 > /etc/locale.conf
```

KEYMAP setzen in `/etc/vconsole.conf`:

```
echo KEYMAP=de_CH-latin1 > /etc/vconsole.conf
```

Hostname anpassen:

```
echo thinkpad > /etc/hostname
```

hosts-File anpassen:

```
nano /etc/hosts
```

```
#<ip-address>   <hostname.domain.org>   <hostname>
127.0.0.1       localhost.localdomain   localhost
::1             localhost.localdomain   localhost
127.0.1.1       toaster.localdomain     toaster
````

## Neuer Benutzer erstellen und Passwort setzen

Benutzer erstellen:

```
useradd -m -G wheel,users -s /bin/bash pascal
```

root Passwort setzen:

```
passwd
```

User Passwort setzen:

```
passwd pascal
```

Uncomment `%wheel ALL=(ALL) ALL` in `/etc/sudoers`:

```
nano /etc/sudoers
```

## Pakete für WiFi installieren:

```
pacman -S iw wpa_supplicant dialog intel-ucode wpa_actiond
```

 ## Grub

```
pacman -S grub os-prober
grub-install --recheck --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```

## Reboot

```
exit
umount -R /mnt
reboot
```

Stick entfernen

# Konfiguration

## WiFi

WiFi-Profil erstellen
```
wifi-menu -o
```

`netctl-auto` service aktivieren:

```
systemctl enable netctl-auto@wlp3s0.service
```

## Xorg

Xorg für Intel Graphikkarte:

```
pacman -S xorg-server xf86-video-intel xorg-xinit xorg-xset xorg-xsetroot
```

## alsa

```
pacman -S alsa-tools alsa-utils
```

Initialize `pacman` file name databaes:

```
pacman -Fy
```

## i3wm

i3 Window Manager installieren:
```
pacman -S i3
```

i3 starten:

```
echo "exec i3" >> ~/.xinitrc
xstart
```
Keyboard layout anpassen i3:

```
echo "exec setxkbmap -rules xorg -model pc104 -layout ch -variant de" >>  ~/.config/i3/config
```

## Pacman Colors

Kommentarzeichen entfernen bei `Color` in `/etc/pacman.conf`

## Mehr Programme

```
sudo pacman -S git wget rxvt-unicode texlive-core texlive-bin
```

## yay

Yet another yogurt:

```
cd /tmp
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -i && cd - && rm -rf yay-bin
```

#@ oh-my-zsh

```
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
yay powerline
```
change ZSH_THEME to `geoffgarside` in `~/.zshrc`


## Docker

Installeren:

```
pacman -S docker
```

Start and enable:

```
systemctl enable docker.service
systemctl start docker.service
```

Docker Benutzer erstellen:

```
adduser -m docker
usermod -a -G docker docker
```


## SSH-Key (GitHub / Bitbucket / EnterpriseLab)

OpenSSH installieren:

```
pacman -S openssh
```

SSH-Key generieren:

```
ssh-keygen -t rsa -b 4096 -C "pascalkiser@outlook.com"
```

## Weiteres

- sterm
- Eclipse
- OpenJDK
- Firefox
- VPN HSLU
