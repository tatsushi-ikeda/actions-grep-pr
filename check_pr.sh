#!/usr/bin/env bash

check_invalid_pattern() {
  local text="$1"
  local target_name="$2"
  local invalid_pattern="$3"
  local detected=$(echo "$text" | grep -P "$invalid_pattern")

  if [[ -n "$detected" ]]; then
    echo "Error: Found invalid pattern in Pull Request ${target_name}: $detected"
    exit 1
  fi
}

check_invalid_pattern "$PR_TITLE" title "$GREP_PATTERN"
check_invalid_pattern "$PR_BODY"  body  "$GREP_PATTERN"
