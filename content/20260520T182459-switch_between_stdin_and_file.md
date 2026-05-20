---
title: How to switch between stdin and a file
date:  2026-05-20T18:24:59-04:00
tags: bash
mathjax: false
---

```bash
if [[ "$#" -lt 1 ]]; then
	input_file="/dev/stdin"
else
	if [[ ! -f "$1" ]]; then
		echoerr "$PROGNAME: $1 doesn't exist"
		exit 1
	fi
	input_file="$1"
fi
```