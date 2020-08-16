#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd git-repo
gradle assemble -Pversion=$version
cp build/libs/*.jar ../artifact-dir/rockme-1.0.jar
cd ../artifact-dir
echo "files copied to artifact-dir"
ls

