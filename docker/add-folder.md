# https://github.com/docker/machine/issues/1814#issuecomment-210090278

```
docker-machine ssh default
sudo su
cat > /var/lib/boot2docker/bootlocal.sh
```

```
mkdir -p /Volumes/8tb1
mount -t vboxsf -o uid=1000,gid=50,rw 8tb1 /Volumes/8tb1
``

```
chmod +x /var/lib/boot2docker/bootlocal.sh
reboot
```
