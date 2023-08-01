#!/usr/bin/env bash

FILE_PATH="$1"			# Full path of the previewed file
PREVIEW_X_COORD="$2"		# x coordinate of upper left cell of preview area
PREVIEW_Y_COORD="$3"		# y coordinate of upper left cell of preview area
PREVIEW_WIDTH="$4"		# Width of the preview pane (number of fitting characters)
PREVIEW_HEIGHT="$5"		# Height of the preview pane (number of fitting characters)

mimetype=$(file --mime-type -Lb "$FILE_PATH")
extension=$(/bin/echo "${FILE_PATH##*.}" | awk '{print tolower($0)}')

case "$mimetype" in
	image/*)
		kitty +kitten icat \
			--transfer-mode=file \
			--clear 2>/dev/null
		;;
	*)
		kitty +kitten icat \
			--transfer-mode=file \
			--clear 2>/dev/null
		;;
esac
