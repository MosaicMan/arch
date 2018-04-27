sudo mdadm --create --verbose --level=raid0 --chunk=64 --raid-devices=2 /dev/md0 /dev/sdc1 /dev/sdd1
sudo mkfs.ext4 -v -L Data -b 4096 -E stride=16,stripe-width=32 /dev/md0
