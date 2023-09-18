# BMLFS
Beyond Musl Linux From Scratch - Build Recipes for  MLFS [Musl Linux From Source]

This is based on the works of Beyond Linux Fom Scratch (https://www.linuxfromscratch.org/blfs), Void Linux (https://voidlinux.org), and Alpine Linux (https://alpinelinux.org).

These build recipes allow to build packages for a MLFS, a Musl [based] Linux from Scratch system. Such system uses Musl as libc, LibreSSL for SSL support, and S6+S6-rc for init system.

Currently, Qt5 is the default Qt toolkit. Packages that can be built against Qt6 & Qt5 will have the Qt6 version stored in `/opt/qt6`. Eventually, Qt6 will be the default with Qt5 versions of packages in `/opt/qt5`.
Layout

<ul>
  <li> build-scripts -- Scripts to automatically build and install packages with pkgtools. </li>
  <li> files -- Files that may be optional or required for a package build </li>
  <li> patches -- Patches that fix known issues or to allow package to build/run with Musl as libc </li>
  <li> sources -- Packages sources that may be difficult to find or pre-patched </li>

</ul>

How to Use the Build Scripts

Build scripts assume Slackware's pkgtools is installed as package manager and assumes the following directory tree:
```
 + -- [sources]
       |
       + -- [files]
       + -- [patches]
       + -- [scripts]
       + -- (source packages)
```
<ol>
	<li>Unpack package in `source` and `cd` into the unpacked source:
	`tar xf foo-4.3.tar.xz && cd foo-4.3` </li>
	<li>Run build script: `sh ../scripts/foo-4.3.build` </li>
</ol>

Each package build assumes the following are set:

<ul>
<li>export BUILD = /BUILD # Directory to temporarily install </li>
<li>export PKGS  = /PKGS  # Directory to store built packages </li>
<li>export PSUFFIX = "$(uname -m)-blfs.txz" # Package extension. Inludes CPU arch and package compression </li>
<li>export NOPSUFFIX = "noarch-blfs.txz" # Package extension. Supported across all CPU arches and package compression</li>
</ul>

Changelog since 2.00

<ul>
<li>Changed package manager to Slackware's pkgtools instead of porg</li>
<li>Added package dependancy list for each build</li>
</ul>
