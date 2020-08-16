#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd git-repo
gradle assemble -b build.gradle -Pversion=$version
#cp build/libs/*.jar ../artifact-dir/
cd build/libs
echo "files in build/libs"
ls
cp build/libs/*.jar ../artifact-dir/


