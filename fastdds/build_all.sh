#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $SCRIPT_DIR
source ./pre_build.sh
source ./build_fastcdr.sh
source ./build_foonathan.sh
source ./build_fastdds.sh
source ./post_build.sh