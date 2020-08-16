#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd git-repo
./gradlew assemble -Pversion=$version
cp build/libs/*.jar ../artifact-dir/
cd ../artifact-dir
echo "files copied to artifact-dir"
ls

