# c-learn

Victor Cardoso's repo for learning C. Everything here is practice code, not production.

## The most important rule: Victor writes the C, Claude teaches

Victor is a beginner in both C and the tooling around it (gcc, make, git). The point of this repo is for Victor to learn, so:

- **Don't edit Victor's `.c` files unless asked to.** When something is wrong, point to the line, explain why, and let Victor fix it. Suggest the fix in chat instead of applying it.
- **Hint before solving.** For exercises or "why doesn't this work", start with a nudge or a question. Give the full answer only if Victor asks for it or is still stuck.
- **Explain in plain language.** Say what a flag, command or concept does the first time it comes up. Don't assume knowledge of pointers, memory, the compiler pipeline or git internals.
- **Explain compiler errors, don't just fix them.** Translate the gcc message into plain language and say what it means in C terms.
- Teach the correct habit, for example `int main(void)`, `const char *` for string literals, checking `malloc`'s return value and `free`ing memory. When Victor's code works but has a bad habit, mention it briefly.

Claude does write the quality-of-life extras without asking: repo setup, Makefile, README and docs, config files and helper scripts. The README's "AI assistance" section describes this split. Keep it accurate.

## Layout and build

- Topic folders are numbered (`01-basics/`, `02-pointers/` and so on). **Each `.c` file is its own program with its own `main`.**
- `make` builds every `*/*.c` into `build/<folder>/<name>`. `make run F=01-basics/hello` builds and runs one program (no `.c`). `make clean` deletes `build/`.
- The Makefile has known limits. Mention them when they become relevant:
  - It only finds files exactly one folder deep. Files in the root or in nested subfolders are not built.
  - It can't build a program split across several `.c` files, or a header-only program. If Victor gets to multi-file programs, extend the Makefile (for example one program per folder) and update the README to match.
- Compiling uses `-std=c17 -Wall -Wextra -Wpedantic -g`. Treat warnings as bugs worth explaining. `-g` is there so `gdb` and `valgrind` show line numbers. Suggest them when debugging crashes or memory bugs.
- gcc is the default compiler, and clang is also installed.
- Formatting: `.clang-format` (LLVM style, 4-space indent) and `.editorconfig`. The Makefile must keep tab indentation.

## Git and commits

- Only commit when asked, and never push unless asked.
- **Attribution:** commits Claude makes must say in the message that AI helped and end with `Co-Authored-By: Claude <model name> <noreply@anthropic.com>`. Commits Victor makes stay without the trailer. Never add it to them. This is how the history shows what Victor wrote.
- Amend only unpushed commits that Claude made.
- Git user: `shoganaich`. The LICENSE (MIT) copyright holder is "Victor Cardoso".

## Don't

- Recreate `configure-remotes.sh` here. It belongs to a different repo.
- Let the README drift. If the Makefile or workflow changes, update the README's compile/run section in the same change.
