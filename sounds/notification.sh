#!/usr/bin/env bash
# Random sound dispatcher for Claude Code hooks.
# Picks a random *.mp3 from ~/.claude/sounds/ and plays it via afplay (macOS).
SOUNDS_DIR="${CLAUDE_SOUNDS_DIR:-$HOME/.claude/sounds}"
shopt -s nullglob
files=("$SOUNDS_DIR"/*.mp3)
[ ${#files[@]} -eq 0 ] && exit 0
afplay -v 1 "${files[RANDOM % ${#files[@]}]}"
