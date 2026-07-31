---
title: Claude's JSONL format
date:  2026-07-31T04:45:02-04:00
tags:
mathjax: false
---

I need the official token usage metrics from Claude. But as I am using `claude -p`, I won't be able to use any of the *slash* commands. Even If I were to use them, they are pretty useless. They won't let me know exactly what the usage was.

Thankfully, I can reverse engineer the `.jsonl` files that `claude` stores for each session.


# The location
- In order to gather this information I have to first disable `--no-session-persistance`
	- This puts the onus on me to clean up the associated project dir. I don't want any previous history being read.
- When session is to be persisted, `claude` takes the `$PWD` and sanitizes it using the following logic  `s/[^a-zA-Z0-9]/-/g`
- Then a directory with the sanitized name is created under `$HOME/.claude/projects/<sanitized_dir>`
- Then each session spanned on that directory has a `.jsonl` file created
- Since it is not possible to query the session id, we have to make use of a custom session id.
	- I'm just gonna use `uuidgen` and store it in a variable before passing it to `claude`

# `.jsonl` file

```json
{"type":"queue-operation","operation":"enqueue","timestamp":"2026-07-31T01:06:49.771Z","sessionId":"23fe85e9-5544-42fb-8d18-b6a99545ed53","content":"say potato and only potato\n"}
{"type":"queue-operation","operation":"dequeue","timestamp":"2026-07-31T01:06:49.771Z","sessionId":"23fe85e9-5544-42fb-8d18-b6a99545ed53"}
{"parentUuid":null,"isSidechain":false,"promptId":"75ae6693-017c-4b7e-927e-bd16502530e0","type":"user","message":{"role":"user","content":"say potato and only potato\n"},"uuid":"de80b298-086b-4232-94c8-a30a0dd360a7","timestamp":"2026-07-31T01:06:49.785Z","permissionMode":"bypassPermissions","promptSource":"sdk","userType":"external","entrypoint":"sdk-cli","cwd":"/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/.local/src/svabench","sessionId":"23fe85e9-5544-42fb-8d18-b6a99545ed53","version":"2.1.218","gitBranch":"main"}
{"type":"ai-title","aiTitle":"Say potato and only potato","sessionId":"23fe85e9-5544-42fb-8d18-b6a99545ed53"}
{"parentUuid":"de80b298-086b-4232-94c8-a30a0dd360a7","isSidechain":false,"message":{"model":"claude-haiku-4-5-20251001","id":"msg_011CdZEpyRQKEwL2sXqcmkig","type":"message","role":"assistant","content":[{"type":"thinking","thinking":"","signature":"EqkECpMBCBAYAipAaxOYotIXYfr2agrTqAfBUQtgrxQbKwsqC6UmkSUB2kXUdsEKuH1icFEZc2+N15338HKrTkcSh4MgxRT83tHRQDIZY2xhdWRlLWhhaWt1LTQtNS0yMDI1MTAwMTgAQgh0aGlua2luZ1okYzRjOTYyZDYtMWVhZS00YmU2LTgzMDgtNGU5NjhhMGM2MzY2Egz6EiaAbHnlLtWy+twaDMX4Umk+E8+ZyliOLiIwujpbYc1FMyoqkWw+ezLWfGfmENaFAPS9374Vwy9A5++0NDBNUfxJbWSTMXFwFo0GKsIC/r4RwhBQTRzzn4iy7F8TI+VGzbTNitI5H/5to3yRACCYrQkJ2X7nODPMw8g9bshSSeon1XMY1v/oW/euJUuwSnJs5mmbKJamlVMdZY7i70a6I2m3J5JRgDJprfCT2lXQNgsx0dnnB9M2pVhfgC/ZJdCDpR8B1bHPW+XeS6eHGuZBoDc0maTw/YoRlVx8x25/DrrMPF602QyJx3jVHQtkry2gtqpPClJ6yd63KvhOnfwBW00Qibs9ZfbMB3zWVfvJ4/1eCA99b55/5uA/610c7msKNDH/CsupT+IaZsnKO46Bvpw4XQJbuXGw7nfTa/rUu7ExlHdaqkbEEFtFIymJZxmjayNMXN2OWPoB6VCRiWfwbCEEb/Hp52kf+ASJJR/zGizwJ7jtHo64VvSazkJCAHDW6YYDRWedVWSGBXYMcmJk6BgB"}],"stop_reason":"end_turn","stop_sequence":null,"stop_details":null,"usage":{"input_tokens":156,"cache_creation_input_tokens":0,"cache_read_input_tokens":0,"output_tokens":79,"server_tool_use":{"web_search_requests":0,"web_fetch_requests":0},"service_tier":"standard","cache_creation":{"ephemeral_1h_input_tokens":0,"ephemeral_5m_input_tokens":0},"inference_geo":"not_available","iterations":[{"input_tokens":156,"output_tokens":79,"cache_read_input_tokens":0,"cache_creation_input_tokens":0,"cache_creation":{"ephemeral_5m_input_tokens":0,"ephemeral_1h_input_tokens":0},"type":"message"}],"speed":"standard"},"diagnostics":null},"requestId":"req_011CdZEpwqejURULVyeTLX3a","type":"assistant","uuid":"d223656b-f123-4c88-aca6-2a50fc974e0f","timestamp":"2026-07-31T01:06:51.365Z","userType":"external","entrypoint":"sdk-cli","cwd":"/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/.local/src/svabench","sessionId":"23fe85e9-5544-42fb-8d18-b6a99545ed53","version":"2.1.218","gitBranch":"main"}
{"parentUuid":"d223656b-f123-4c88-aca6-2a50fc974e0f","isSidechain":false,"message":{"model":"claude-haiku-4-5-20251001","id":"msg_011CdZEpyRQKEwL2sXqcmkig","type":"message","role":"assistant","content":[{"type":"text","text":"potato"}],"stop_reason":"end_turn","stop_sequence":null,"stop_details":null,"usage":{"input_tokens":156,"cache_creation_input_tokens":0,"cache_read_input_tokens":0,"output_tokens":79,"server_tool_use":{"web_search_requests":0,"web_fetch_requests":0},"service_tier":"standard","cache_creation":{"ephemeral_1h_input_tokens":0,"ephemeral_5m_input_tokens":0},"inference_geo":"not_available","iterations":[{"input_tokens":156,"output_tokens":79,"cache_read_input_tokens":0,"cache_creation_input_tokens":0,"cache_creation":{"ephemeral_5m_input_tokens":0,"ephemeral_1h_input_tokens":0},"type":"message"}],"speed":"standard"},"diagnostics":null},"requestId":"req_011CdZEpwqejURULVyeTLX3a","type":"assistant","uuid":"b9cee6a0-bdc8-4cd9-a892-e23eca85cbd3","timestamp":"2026-07-31T01:06:51.370Z","userType":"external","entrypoint":"sdk-cli","cwd":"/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/.local/src/svabench","sessionId":"23fe85e9-5544-42fb-8d18-b6a99545ed53","version":"2.1.218","gitBranch":"main"}
{"type":"last-prompt","lastPrompt":"say potato and only potato","leafUuid":"b9cee6a0-bdc8-4cd9-a892-e23eca85cbd3","sessionId":"23fe85e9-5544-42fb-8d18-b6a99545ed53"}
```

- Hopefully the above snippet doesn't leak anything
- The session files are **append-only** `json` objects


# Things to extract from this

- The most obvious one is **Token Usage**
	- Borrowing some logic from https://github.com/matt1398/claude-devtools
	- Filter out messages with `type == assistant`
	- Remove duplicates based on `requestId`
	- Then extract out the `usage` field

# Structure of an `assistant` entry
```json
[
"cwd" ,
"entrypoint" ,
"gitBranch" ,
"isSidechain" ,
"message" ,
"parentUuid" ,
"requestId" ,
"sessionId" ,
"timestamp" ,
"type" ,
"userType" ,
"uuid" ,
"version"
]
```


# Timestamp calculation
- I don't know if I would prefer this over just using `time` on the `claude` command
- But it is possible to extract timestamps from the `.jsonl` file
- The way `claude-devtools` does this is to just loop over all the objects and extract out the timestamps
- Then find `max(timestamps) - min(timestamps)` to approximate the inference time
- `jq` doesn't handle fractional timestamps
	- using `date` to convert to unix timestamp and then finding the difference

# Usage Calculation
- Usage data has to be aggregated from `assistant` messages
- First we remove duplicates based on `requestId`
- Then we combine `input_tokens`, `cache_creation_input_tokens` and `cache_read_input_tokens` to calculate total input tokens
	- https://platform.claude.com/docs/en/build-with-claude/prompt-caching
- Output tokens are straight forward