 This is a skeleton folder structure that enables interoperability between `hugo` and `obsidian`. There are many quirks in the way both of these handle links.

# Where to place files?
- Add `.md` files are to be placed under `content/`
- All images are to be placed under `assets/`
- Don't create any subfolders under `content/`. Everything is placed under a flat hierarchy. Create logical hierarchy using links and not the file system.

# Publishing
- Create a file called `priv.sh` inside `scripts/`. Set two variables `SRC` and `TARG`. 
- `SRC` points to the dir `hugo` outputs to. By default `hugo` outputs to `public/` in the dir that it was run.
- `TARG` should point to the dir that will be served by your web server
-  `scripts/web_push.sh` compiles the `.md` files to `.html` and syncs `SRC` with `$TARG`
