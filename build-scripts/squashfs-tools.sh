#! /bin/bash

# Squashfs-Tools 
# Source: https://github.com/plougher/squashfs-tools/archive/4.5.tar.gz
#
# $BUILD = Directory to temporarily install
# $PKGS  = Directory to store built packages
#
# DEPS
# Required:     lz4
# Recommended:  NONE
# Optional:     NONE

# Apply patches from Alpine Linux
patch -Np1 -i ../patches/squashfs-tools-alpine/0001-unsquashfs-use-squashfs_closedir-to-delete-directory.patch
patch -Np1 -i ../patches/squashfs-tools-alpine/0002-unsquashfs-dynamically-allocate-name.patch 
patch -Np1 -i ../patches/squashfs-tools-alpine/0003-unsquashfs-use-linked-list-to-store-directory-names.patch 
patch -Np1 -i ../patches/squashfs-tools-alpine/0004-Unsquashfs-additional-write-outside-destination-dire.patch
patch -Np1 -i ../patches/squashfs-tools-alpine/0005-Unsquashfs-Add-makefile-entry-for-unsquash-12.o.patch 
patch -Np1 -i ../patches/squashfs-tools-alpine/fix-compat.patch 

make -C squashfs-tools XZ_SUPPORT=1 LZO_SUPPORT=1 LZ4_SUPPORT=1 ZSTD_SUPPORT=1 -j2 && \

sudo -S mkdir -pv $BUILD/usr/sbin && \
sudo -S cp -a squashfs-tools/*squashfs $BUILD/usr/sbin && \

cd $BUILD && sudo -S mkdir -v ${BUILD}/install &&
cat > /tmp/slack-desc << "EOF"
# HOW TO EDIT THIS FILE:
# The "handy ruler" below makes it easier to edit a package description.  Line
# up the first '|' above the ':' following the base package name, and the '|'
# on the right side marks the last column you can put a character in.  You must
# make exactly 11 lines for the formatting to be correct.  It's also
# customary to leave one space after the ':' except on otherwise blank lines.

              |-----handy-ruler------------------------------------------------------|
squashfs-tools: squashfs-tools
squashfs-tools:
squashfs-tools: Tools for squashfs, a highly compressed read-only filesystem for 
squashfs-tools: Linux.
squashfs-tools:
squashfs-tools: https://github.com/plougher/squashfs-tools
squashfs-tools:
EOF
sudo -S mv -v /tmp/slack-desc install/ &&
sudo -S makepkg -l y -c n $PKGS/squashfs-tools-4.5-$(uname -m)-mlfs.txz &&
sudo -S rm -rf ${BUILD}/*
