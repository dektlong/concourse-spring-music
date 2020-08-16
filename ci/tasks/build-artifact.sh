#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd git-repo
gradle assemble
#cp build/libs/*.jar ../artifact-dir/
#gradle assemble -Pversion=$version
cp build/libs/*.jar ../artifact-dir/rockme-1.0.jar


