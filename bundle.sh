#!/bin/bash

current_path=$(pwd)
src_path=${current_path}/src
dist_path=${current_path}/src/zowe

rm -rf $dist_path
mkdir -p $dist_path

for pkgDir in init core zos_console zos_files zos_jobs zos_tso zosmf; do
    cd ${src_path}/$pkgDir/zowe
    cp -R * $dist_path
done
