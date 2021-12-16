#! /bin/bash

# patches from Apline Linux
export  PATCH_LIST="default-pthread-stacksize " 
export PATCH_LIST+="musl-fixes "
export PATCH_LIST+="no-getcontext " 
export PATCH_LIST+="musl-hacks "
export PATCH_LIST+="musl-libc++ "
export PATCH_LIST+="musl-sandbox "
export PATCH_LIST+="no-execinfo "
export PATCH_LIST+="no-mallinfo "
export PATCH_LIST+="resolver "
export PATCH_LIST+="musl-stat "
export PATCH_LIST+="chromium-use-alpine-target "
export PATCH_LIST+="media-base "
export PATCH_LIST+="musl-crashpad "
export PATCH_LIST+="musl-v8-monotonic-pthread-cont_timedwait "
export PATCH_LIST+="nasm "
export PATCH_LIST+="gcc-arm "
export PATCH_LIST+="elf-arm "
export PATCH_LIST+="fix-narrowing-cast "
export PATCH_LIST+="use-deprecated-ffmpeg-api "
export PATCH_LIST+="fix-unittests-sandbox "
export PATCH_LIST+="chromium-revert-drop-of-system-java "
export PATCH_LIST+="scoped-file "
export PATCH_LIST+="remove-strip_binary "
export PATCH_LIST+="gdbinit "
export PATCH_LIST+="quiche-arena-size "
export PATCH_LIST+="unbundle-fix-visibility-of-build-config-freetype "
export PATCH_LIST+="revert-use-ffile-compilation-dir "
export PATCH_LIST+="chromium-96-CommandLine-include "
export PATCH_LIST+="chromium-96-RestrictedCookieManager-tuple "
export PATCH_LIST+="chromium-96-CouponDB-include "
export PATCH_LIST+="fix-bits-stdint-intn-include "
export PATCH_LIST+="chromium-VirtualCursor-standard-layout "
export PATCH_LIST+="chromium-revert-ffmpeg-roll "

for p in ${PATCH_LIST}
do
  wget https://github.com/alpinelinux/aports/raw/master/community/chromium/${p}.patch
done
