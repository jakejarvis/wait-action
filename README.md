# GitHub Action for Sleeping 💤

This is a very, very simple (and small — only ~1.2 MB thanks to [`busybox`](https://hub.docker.com/_/busybox)) action to wait a specified amount of time before moving on in your workflow.

Input follows the Linux `sleep` syntax for time units: a number followed by `s` for seconds, `m` for minutes, etc. [Man page for `sleep` here.](https://linux.die.net/man/1/sleep)


## Usage

```
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - name: Sleep for 30 seconds
      uses: jakejarvis/wait-action@master
      with:
        time: '30s'
```


## License

[![CC0](http://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, [Jake Jarvis](https://jarv.is/) has waived all copyright and related or neighboring rights to this work.
