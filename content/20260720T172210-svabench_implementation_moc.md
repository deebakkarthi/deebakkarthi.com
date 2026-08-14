---
title: svabench Implementation moc
date:  2026-07-20T17:22:10-04:00
tags:
mathjax: false
---
# 2026-08-14T02:05:49
- GLIBC is the bane of my existence
- `claude_gen` -> `post_proc` -> `jasper_eval` -> `aggregate_results`
- I want to split up the entire benchmark process into these smaller programs
- This was things can be asynchronous and I can reuse these


# 2026-08-03T11:22:10
- `assert_decl_from_sva`
- Deciding between `stdin` and `-f FILE`
	- `/dev/stdin` is not portable. I cannot use `std::filesystem::path`.
	- `read()` is portable. I can read both `std::cin` and `std::ifstream`
	- `SourceManager` needs to be used I think

# 2026-08-01T10:51:46

# 2026-07-31T11:56:05	
- Moved the `uuid` logic to `small_bench`
- This seems to be the way to go
- `claude_infer` tries to mimic an API call and thats it

# 2026-07-31T11:08:37
- In order for me use the usage tracker, I need wrestle with `bash`'s limitations
	- `claude_infer`, which is the function that wraps `claude` with the appropriate options, outputs the `.sva` files
	- I cannot output any diagnostic information with this
	- I can send in an `uuid` as the third arg and I can retrieve the session files from the outside. But then I may not be able to clear them before the next command.
	- `claude_infer` just has to do the inferring then, I have to handle all the other things outside
	- `claude_infer`'s purpose is to just run `claude` with the given model, prompt and given `uuid`
	

# 2026-07-31T04:46:13
- Implementing an token usage tracker
- [20260731T044502-claude_jsonl_format](20260731T044502-claude_jsonl_format.md)
