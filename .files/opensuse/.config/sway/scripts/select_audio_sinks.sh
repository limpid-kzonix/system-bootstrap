#!/bin/bash

# Audio Sink Selection Script for Fuzzel
# This script lists available audio sinks and allows selection via fuzzel

# Get list of sinks with their names and descriptions
sinks=$(pactl list short sinks | while read -r index name driver sample_spec state; do
	# Get the description for this sink
	description=$(pactl list sinks | grep -A 20 "Name: $name" | grep "Description:" | sed 's/.*Description: //')

	# Format: "index: description (name)"
	echo "$index: $description ($name)"
done)

# Check if we have any sinks
if [ -z "$sinks" ]; then
	notify-send "Audio Sink Selector" "No audio sinks found"
	exit 1
fi

# Use fuzzel to select a sink
selected=$(echo "$sinks" | fuzzel --config ~/.config/fuzzel/fuzzel-audio-selector.ini --dmenu --prompt "Select Audio Output: ")

# Check if user made a selection
if [ -n "$selected" ]; then
	# Extract the sink index from the selection
	sink_index=$(echo "$selected" | cut -d':' -f1)

	# Set the default sink
	pactl set-default-sink "$sink_index"

	# Get the sink name for notification
	sink_name=$(echo "$selected" | cut -d':' -f2- | sed 's/^ //')

	# Show notification
	notify-send "Audio Sink Changed" "Default sink set to: $sink_name"

	# Optional: Move all currently playing streams to the new sink
	pactl list short sink-inputs | while read -r stream_index rest; do
		pactl move-sink-input "$stream_index" "$sink_index" >/dev/null 2>&1
	done
fi
