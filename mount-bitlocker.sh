#!/bin/bash
dislocker /dev/path-to-bitlocker-partition -pbitlocker-password -- /decrypt
mount -o loop /decrypt/dislocker-file /Windows
