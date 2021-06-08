# GitHub Action for Sleeping 💤

## ⚠️ This action is unmaintained.

> This action was published way back in the GitHub Actions beta and is largely abandoned now, mostly because there are much better ways to pause a job than building a whole Docker container on each run (which only works on Linux jobs, too). I highly recommend replacing this action with the following code snippets.
>
> On Linux and macOS runners, use [the `sleep` command](https://linux.die.net/man/1/sleep):
>
```yaml
- name: Sleep for 30 seconds
  run: sleep 30s
  shell: bash
```
>
> On Windows runners, use [the `Start-Sleep` command](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/start-sleep?view=powershell-7.1):
>
```yaml
- name: Sleep for 30 seconds
  run: Start-Sleep -s 30
  shell: powershell
```

---

This is a very, very simple (and small — only ~1.2 MB thanks to [`busybox`](https://hub.docker.com/_/busybox)) action to wait a specified amount of time before moving on in your workflow.

Input follows the Linux `sleep` syntax for time units: a number followed by `s` for seconds, `m` for minutes, etc. [Man page for `sleep` here.](https://linux.die.net/man/1/sleep)

## Usage

```yaml
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
