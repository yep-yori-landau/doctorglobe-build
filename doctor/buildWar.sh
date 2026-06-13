#!/bin/bash
# Step 1 of 2: Compile source and produce the WAR file.
# Run this from anywhere — it locates paths relative to this script.
# Output: doctorglobe-build/doctor/dg-host-doctor.war

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
SRC_DIR="$PROJECT_ROOT/doctorglobe-src/dg-host-doctor"
M2_CACHE="$SCRIPT_DIR/.m2"

echo "Building WAR from $SRC_DIR ..."

docker run --rm \
  -v "$SRC_DIR":/app \
  -v "$M2_CACHE":/root/.m2 \
  -w /app \
  maven:3.9-eclipse-temurin-11 \
  mvn clean package -DskipTests -B

cp "$SRC_DIR/target/doctor-1.0.0-BUILD-SNAPSHOT.war" "$SCRIPT_DIR/dg-host-doctor.war"

echo "Done: $SCRIPT_DIR/dg-host-doctor.war"
