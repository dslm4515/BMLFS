#! /bin/bash

# $1 = build script

grep --color Required $1 &&
grep --color Recommended $1 &&
grep --color Optional $1
