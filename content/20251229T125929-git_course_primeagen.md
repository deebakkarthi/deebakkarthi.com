---
title: Git and GitHub - Full Course 
date:  2025-12-29T12:59:29-05:00
tags:
- git
---
Notes from this https://www.youtube.com/watch?v=rH3zE7VlIMs
# Type of `git` commands

If we read the first commit of `git`, we see the following excerpt
```
	GIT - the stupid content tracker

"git" can mean anything, depending on your mood.

 - random three-letter combination that is pronounceable, and not
   actually used by any common UNIX command.  The fact that it is a
   mispronounciation of "get" may or may not be relevant.
 - stupid. contemptible and despicable. simple. Take your pick from the
   dictionary of slang.
 - "global information tracker": you're in a good mood, and it actually
   works for you. Angels sing, and a light suddenly fills the room. 
 - "goddamn idiotic truckload of sh*t": when it breaks
```

It is from the last bullet point, that we derive the naming convention for `git` commands:
- Porcelain
	- This is the outer high level polished stuff
- Plumbing
	- This is the low level nitty gritty stuff

We will mostly work with the *Porcelain* commands.

# `git init`
- `git init` creates an empty `.git` folder in current working directory

```bash
.git/
├── config
├── description
├── HEAD
├── hooks/
│   ├── applypatch-msg.sample*
│   ├── commit-msg.sample*
│   ├── fsmonitor-watchman.sample*
│   ├── post-update.sample*
│   ├── pre-applypatch.sample*
│   ├── pre-commit.sample*
│   ├── pre-merge-commit.sample*
│   ├── pre-push.sample*
│   ├── pre-rebase.sample*
│   ├── pre-receive.sample*
│   ├── prepare-commit-msg.sample*
│   ├── push-to-checkout.sample*
│   ├── sendemail-validate.sample*
│   └── update.sample*
├── info/
│   └── exclude
├── objects/
│   ├── info/
│   └── pack/
└── refs/
    ├── heads/
    └── tags/

9 directories, 18 files
```

- We see that this directory is pretty empty. 
- We have a bunch of sample hook files. 
- `objects/` and `refs/` are all empty because we don't have any commits

# `git` hashing mechanism
- `git` by default uses `sha1`
- But it doesn't just `sha1` the file contents
- It first appends the `type` , which is `blob` for a file, then the size followed by null terminator `\0` and then the file contents
	- For example an empty file called `foo.txt` has the hash `e69de29bb2d1d6434b8b29ae775ad8c2e48c5391`
	- But when you run `sha1 foo.txt` you will get `da39a3ee5e6b4b0d3255bfef95601890afd80709`
	- Running `echo -n "blob 0\0" | sha1 -` will return `e69de29bb2d1d6434b8b29ae775ad8c2e48c5391`  which is the hash id used by `git` for `foo.txt`
	- Notice that the calculation of the hash never involved the filename. If we create a new file empty called `bar.txt` it will also hash to `e69de29bb2d1d6434b8b29ae775ad8c2e48c5391`. `git` only uses the contents of the file to generate the object id
	
# `index` file
- We saw that `git` only uses the contents of the file to perform the hash
- What happens if we rename the file?
- Consider the following scenario:
```bash
touch foo.txt
git add foo.txt
mv foo.txt bar.txt
```
- `git status` will output
```bash
On branch main

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
	new file:   foo.txt

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	deleted:    foo.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	bar.txt
```
- Our `.git/objects` folder still looks like this
```bash
.git/objects
├── e6
│   └── 9de29bb2d1d6434b8b29ae775ad8c2e48c5391
├── info
└── pack

4 directories, 1 file
```

- How did `git` know that we changed the file name?
- It used the `.git/index` file
- When we say that we are *staging* a file, we are technically adding it to the `index` file
- When we moved `foo.txt` to `bar.txt`, `git status` did the following
	- First it outputs all the staged changes
	- Second it realizes that one of the staged files is missing and hence showed that as a change to stage
	- Third it saw that `bar.txt` is not in the `index` file and said that it is untracked
- See [20251229T142012-git_index_file_format](20251229T142012-git_index_file_format.md) for more details

# File status

`git` at its core is a file tracker. It tracks how a file evolves over its lifetime. A file can be in three states
- `untracked`
	- `.git/index` doesn't have the file and there are no corresponding objects
- `staged`
	- `git/index` has the file but it is not committed yet
- `commited`
	- `.git/index` has the file and there is commit object and a blob object corresponding to that file

# `commit`

-  Refer to [20240130191938-git-moc](20240130191938-git-moc.md) for a primer of how a `COMMIT` is designed under the hood
- If we use `git cat-file -p 3c82b84b3db4de6139871ef7c49609d26b410d13` we get

```bash
tree 09a13b897d3d0f528d487c704da540cb952d7606
author Deebakkarthi C R <dbk@deebakkarthi.com> 1767037689 -0500
committer Deebakkarthi C R <dbk@deebakkarthi.com> 1767037689 -0500

Add foo.txt
```

- This is literally what a commit is
	- It has an `ID` to a `tree` object
	- An Author
	- Committer
	- `COMMIT_MSG`
- What is a `tree` object? We can run `git cat-file -p 09a13b897d3d0f528d487c704da540cb952d7606` to find out
```bash
100644 blob e69de29bb2d1d6434b8b29ae775ad8c2e48c5391	foo.txt
``` 
- `tree` represents the snapshot of the root directory

## Why store hashes like `09/a13b897d3d0f528d487c704da540cb952d7606`
- You may notice that instead of storing object directly under `.git/objects`, `git` stores them in a directory prefixed with the first two characters of the hash. Why is that?
- It is due to a phenomenon known as *inode busting*. You have limited amount of `inodes` on your system. You can find it using `df -i`.