# Bitlocker Service

Theses files is used for unlocking a Bitlocker partition on a Linux system.

By default, all files is used for ``root`` user but it can work with a regular user.

## Setup

1. Clone this repo with ``git clone https://github.com/v38armageddon/bitlocker-service``.
2. Go to the folder: ``bitlocker-service``.
3. Follow this steps:

### mount-bitlocker.sh
In line 2, you need to replace the ``/dev/path-to-bitlocker-partition`` with the actual Bitlocker partition. You can see what name is used in gparted.

You need your Bitlocker backup key and replace: ``-pbitlocker-password`` with your actual key. **YOU MUST NOT LET A SPACE BETTWEEN THE P AND YOUR KEY, IT IS VERY IMPORTANT!**

### bitlocker.service

Replace the ``/path/to/mount-bitlocker.sh`` and ``/path/to/umount-bitlocker.sh`` with the actual path of scripts files.

After saving, type the following commands:

```
# cp bitlocker.service /etc/systemd/system/bitlocker.service
# systemctl enable --now bitlocker
```

## Contribuing

You can contribute to this for other users who is not using systemd.

Simply fork this repo, make your changes and add a PR into this repo.

For any bugs or questions, open a Issue.
