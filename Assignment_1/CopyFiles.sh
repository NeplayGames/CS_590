#!/bin/bash

echo "Enter the source folder path"

read source_folder

if [ ! -d "$source_folder" ]; then
  echo "The directory does not exits"
  exit 1
fi

echo "Enter the destination folder path"

read destination_folder

if [ ! -d "$destination_folder" ]; then
  echo "The folder does not exits. Creating a new one"
  mkdir "$destination_folder"
fi
cp -r "$source_folder"/* "$destination_folder"
