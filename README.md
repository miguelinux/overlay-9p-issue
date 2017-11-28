# Issue using OverlayFS and 9P/QEMU

You can use any Linux distro.

I've used [Clear Linux\* OS for Intel® Architecture](https://clearlinux.org).

To reproduce the issue follow this steps

1. Create a directory structure and mount it with overlay with
   [create dirs script](create-dirs.sh).
2. Download a Linux image.
   * I've used one from https://download.clearlinux.org/image/ called
     clear-XXX-kvm.img
3. Boot the image with [start qemu script](start_qemu.sh).
4. Mount `mount -t 9p -o trans=virtio 9p-tag /mnt`
5. Change directory to `/mnt/x` and list files there.
