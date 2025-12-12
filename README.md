# nimcraft
A build system made mainly for Nim projects, while being extremely easy to use. Right now, it is in development, but this is what to expect:
- Auto-generation of configs
- Make a config TUI just from the config
- A way to init projects using Nimcraft

## Usage
Currently, you can do very basic things with Nimcraft. To try it, first clone the repo:

```bash
git clone https://github.com/mostypc123/nimcraft --depth 1
```
_Requires `git`!_

```bash
cd nimcraft
nimble build -y
```
_Requires `nim`, `nimble`!_

Now make a file called `.Nimcraft`. Basic configuration:

```
default>
nim c src/test.nim
```

Now try running:

```bash
nimcraft
nimcraft .File=.Nimcraft default
```
