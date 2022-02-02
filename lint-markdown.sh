#!/bin/bash

stagedMarkdownFiles="$(git diff --staged --name-only '*.md')"

# if there are staged markdown files
if [ -n "$stagedMarkdownFiles" ]; then
  markdownlint --fix --ignore node_modules "$stagedMarkdownFiles"
  git update-index -g
fi

