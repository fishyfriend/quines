# quines

Here are some [quines][1] and related tools. For now, all in Bash!

`quine` can check whether a script (interpreted program) is a quine:

    $ ./quine heredoc.bash
    yes, it's a quine
    $ ./quine helloword.py
    1,3c1
    < #!/usr/bin/env python
    <
    < print("Hello World!")
    ---
    > Hello World!
    nope, not a quine

# Requirements

The programs have been tested on NixOS 18.09 running GNU Coreutils and Diffutils, and should work on many Unix environments with few or no changes.

[1]: https://en.wikipedia.org/wiki/Quine_(computing)
