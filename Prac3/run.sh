#!/bin/bash

gnatmake sorts.adb
gnatmake test.adb
./test
