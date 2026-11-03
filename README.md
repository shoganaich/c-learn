# c-learn

My C learning notes and exercises.

## Layout

Each topic gets a numbered folder; each `.c` file is a standalone program.

```
01-basics/    hello world, variables, printf
```

## Usage

```sh
make                         # build everything into build/
make run F=01-basics/hello   # build and run one program
make clean
```

## How to compile and run

### The manual way (no make)

Compiling turns your `.c` source into a program the computer can run:

```sh
gcc 01-basics/hello.c -o hello    # compile: source -> program named "hello"
./hello                           # run it (the ./ means "in this folder")
```

Useful flags:

- `-o name`: name of the output program (default is `a.out`).
- `-Wall -Wextra`: show warnings about likely mistakes. Always use these while learning.
- `-g`: include debug info, needed for debuggers like `gdb`.
- `-std=c17`: use the C17 version of the language.

So a "proper" compile looks like:

```sh
gcc -std=c17 -Wall -Wextra -Wpedantic -g 01-basics/hello.c -o hello
```

### The easy way (with make)

`make` reads the `Makefile` and runs that long command for you.

```sh
make                         # compile every .c file in every topic folder
make run F=01-basics/hello   # compile and run one program (no .c on the end)
make clean                   # delete the build/ folder to start fresh
```

Compiled programs end up in `build/`, mirroring the source layout, e.g. `build/01-basics/hello`. You can also run them directly:

```sh
./build/01-basics/hello
```

### Adding a new program

1. Create a file in a topic folder, e.g. `01-basics/loops.c`.
2. Run `make run F=01-basics/loops`.

No Makefile edits needed. It picks up any new `.c` file automatically.

### Troubleshooting

- `make: *** No rule to make target`: check the path in `F=...`. Leave off `.c`.
- `command not found: gcc`: install a compiler (on Arch: `sudo pacman -S gcc make`).
- Warnings are not errors, but read them. They usually point at real bugs.

## AI assistance

I write the C code myself. I use Claude for some quality-of-life extras around it, like the repo setup, the Makefile, the docs and helper scripts. Commits where Claude helped have a `Co-Authored-By` line.

## License

MIT. See [LICENSE](LICENSE).
