#!/bin/bash

# Audio Source Selection Script for Fuzzel
# This script lists available audio sources and allows selection via fuzzel

# Get list of sources with their names and descriptions
sources=$(pactl list short sources | while read -r index name driver sample_spec state; do
	# Skip monitor sources (they are outputs, not input sources)
	if [[ "$name" == *.monitor ]]; then
		continue
	fi

	# Get the description for this source
	description=$(pactl list sources | grep -A 20 "Name: $name" | grep "Description:" | sed 's/.*Description: //')

	# Format: "index: description (name)"
	echo "$index: $description ($name)"
done)

# Check if we have any sources
if [ -z "$sources" ]; then
	notify-send "Audio Source Selector" "No audio sources found"
	exit 1
fi

# Use fuzzel to select a source
selected=$(echo "$sources" | fuzzel --config ~/.config/fuzzel/fuzzel-audio-selector.ini --dmenu --prompt "Select Microphone: ")

# Check if user made a selection
if [ -n "$selected" ]; then
	# Extract the source index from the selection
	source_index=$(echo "$selected" | cut -d':' -f1)

	# Set the default source
	pactl set-default-source "$source_index"

	# Get the source name for notification
	source_name=$(echo "$selected" | cut -d':' -f2- | sed 's/^ //')

	# Show notification
	notify-send "Audio Source Changed" "Default source set to: $source_name"

	# Optional: Move all currently recording streams to the new source
	pactl list short source-outputs | while read -r stream_index rest; do
		pactl move-source-output "$stream_index" "$source_index" >/dev/null 2>&1
	done
fi
