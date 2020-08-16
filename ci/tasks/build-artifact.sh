#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd git-repo
gradle assemble -b ../../build.gradle -Pversion=$version
#cp build/libs/*.jar ../artifact-dir/
cp build/libs/*.jar ../artifact-dir/


