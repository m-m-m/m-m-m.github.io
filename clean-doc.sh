#!/bin/bash
function cleanup() {
  sed -i '' "/Generated by javadoc/d" "$1"
  sed -i '' "/dc.created/d" "$1"
}

for file in `find ./docs -name "*.html"`
do
  cleanup $file
done
