#!/bin/bash

for file in `find . -name "*.po"` ; do msgfmt -vv -o ${file/.po/.mo} $file ; done
