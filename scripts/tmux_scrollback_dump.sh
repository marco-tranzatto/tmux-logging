#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Functions defined in capture_pane_helpers are customized via below variables.
default_path="$HOME"
default_name="tmux-scrollback-#{session_name}-#{window_index}-#{pane_index}-%Y%m%dT%H%M%S.log"

path_option="@scrollback_dump_path"
name_option="@scrollback_dump_filename"

source $CURRENT_DIR/shared.sh
source $CURRENT_DIR/capture_pane_helpers.sh

main() {
	local file="$(get_path)/$(get_filename)"
	capture_pane "Scrollback" "$file"
}
main