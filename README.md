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

This project is distributed under the [MIT license](LICENSE.md).
