#!/bin/bash

input_file=$1
output_file="${input_file%.txt}.pdf"

if [ -z "$input_file" ]; then
  echo "Usage: pdf-converter <input_file>"
  exit 1
fi

pdftoppm -png "$input_file" "$output_file"

echo "Conversion complete. Output file: $output_file"
