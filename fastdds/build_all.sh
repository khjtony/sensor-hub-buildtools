#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

source $SCRIPT_DIR/pre_build.sh
source $SCRIPT_DIR/build_fastcdr.sh
source $SCRIPT_DIR/build_foonathan.sh
source $SCRIPT_DIR/build_fastdds.sh
source $SCRIPT_DIR/post_build.sh
