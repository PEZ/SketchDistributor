#!/usr/bin/env bash

ASSETS_SRC_DIR='assets'
PLUGIN_DIR=$(node << EOF
    dict = $(<package.json);
    console.log(dict.skpm.main);
EOF
)

RESOURCES_DIR="${PLUGIN_DIR}/Contents/Resources/"

mkdir -p ${RESOURCES_DIR}
cp -a "${ASSETS_SRC_DIR}"/* ${RESOURCES_DIR}