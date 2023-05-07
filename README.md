# actions-grep-pr

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

`actions-grep-pr` is a GitHub Action that searches for patterns in Pull Request titles and bodies.
It can be used to detect non-ASCII characters, specific words or phrases, or any other patterns using regular expressions.

## Usage and example configuration

The following configuration can be used to detect non-ASCII characters in Pull Request title and body.

```yml
name: Check PR Messages

on:
  pull_request:
    types:
      - opened
      - synchronize

jobs:
  check_pr_message:
    runs-on: ubuntu-latest
    steps:
    - name: Check PR Messages
      uses: tatsushi-ikeda/actions-grep-pr@master
      with:
        invalid-pattern: '[^\x00-\x7F]'
```

Replace `invalid-pattern` with the pattern you want to search for in the PR title and body.
