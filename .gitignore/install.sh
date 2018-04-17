#!/bin/bash
echo "Resize archiso"
mount -o remount,size=2G /run/archiso/cowspace
