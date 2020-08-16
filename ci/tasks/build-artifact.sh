#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd git-repo
./gradlew assemble
cp build/libs/*.jar ../artifact-dir/

