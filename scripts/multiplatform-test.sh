#!/bin/bash

set -e

[ ! -z "$1" ] 

PLATFORMS="aarch64-linux aarch64-macos x86_64-linux x86_64-macos x86_64-windows"

mkdir -p temp/
cd temp/

for target in $PLATFORMS; do
  echo "build for ${target}..."
  zig build-lib -dynamic -target "${target}" ../scripts/tester.zig --mod "opengl::../$1" --deps opengl
done