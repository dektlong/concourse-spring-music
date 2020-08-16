#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
echo "version=" $version
cd git-repo
gradle assemble -Pversion=$version
cp build/libs/rockme-1.0 ../artifact-dir/
