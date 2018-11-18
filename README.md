# quines

Here are some [quines][1] and related tools.

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

[1]: https://en.wikipedia.org/wiki/Quine_(computing)
