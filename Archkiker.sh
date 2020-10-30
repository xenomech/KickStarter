timedatectl set-ntp true
timedatectl status
pacstrap /mnt base base-devel linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc


pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot/ --boorloader-id=The_arch_lyf



echo "locale and rice pending"
