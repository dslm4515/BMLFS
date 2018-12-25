# BMLFS
Beyond Musl Linux From Scratch - Build Recipes for  MLFS [Musl Linux From Source]

This is based on the works of Beyound Linux Fom Scratch (https://www.linuxfromscratch.org/blfs), Void Linux (https://voidlinux.org), and Alpine Linux (https://alpinelinux.org).

These build recipes allow to build packages for a MLFS, a Musl [based] Linux from Scratch system. Such system uses Musl as libc, LibreSSL for SSL support, and S6+S6-rc for init system.

Layout

<ul>
  <li> build-scripts -- Scripts to automatically build and install packages with porg. </li>
  <li> files -- Files that may be optional or required for a package build </li>
  <li> patches -- Patches that fix known issues or to allow package to build/run with Musl as libc </li>
  <li> recipes -- Build instructions for individual packages with short desciptions and build dependancies </li>
  <li> services -- S6 services to add to service database
  <li> sources -- Packages sources that may be difficult to find or pre-patched </li>

</ul>
