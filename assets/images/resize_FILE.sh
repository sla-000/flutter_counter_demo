#!/bin/bash

INFILE="$1"

DIR20X="2.0x"
DIR30X="3.0x"

mkdir "${DIR30X}"
mkdir "${DIR20X}"

cp "${INFILE}" "${DIR30X}/${INFILE}"
convert -resize 66% "${INFILE}" "${DIR20X}/${INFILE}"
convert -resize 33% "${INFILE}" "temp-${INFILE}"

mv "temp-${INFILE}" "${INFILE}"
