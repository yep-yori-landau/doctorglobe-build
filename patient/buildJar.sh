#!/bin/bash
# Building the jar

# We don't remove the shared dir (containerData) as it holds the .m2 files.
# Once we move the .m2 directory into a shared place we can create and remove this directory
# as part of this build.

APP_DIR=dg-host-patient
SOURCE_CODE_DIR=/Users/yori.landau/Giraffe/Technology/Development/Sandbox/Doctorglob/drive/doctorglobe/src/$APP_DIR
TAR_FILE=./sourceCode.tar
CONTAINER_DEST_DIR=/root
CONTAINER_DEST_FILE=$CONTAINER_DEST_DIR/$TAR_FILE
CONTAINER_NAME=buildMachine
SHARED_DIR=containerData
SOURCE_JAR_NAME=patient-1.0.0-BUILD-SNAPSHOT.war
TARGET_JAR_NAME=./dg-host-patient.war
STRIP_COMPONENTS_FOR_TAR=4

cp ../genericBuildJar.sh .
./genericBuildJar.sh $APP_DIR $SOURCE_CODE_DIR $TAR_FILE $CONTAINER_DEST_DIR $CONTAINER_DEST_FILE $CONTAINER_NAME $SHARED_DIR $SOURCE_JAR_NAME $TARGET_JAR_NAME $STRIP_COMPONENTS_FOR_TAR
rm ./genericBuildJar.sh 
