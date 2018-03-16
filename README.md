# quines

Here are some [quines][1] and related tools.

`test-quine` can check whether a program is a quine or not:

```
$ ./test-quine ./quote-subst.bash
test-quine: running program ./quote-subst.bash
q=\' f='echo "q=\\$q f=$q$f$q; eval \$f"'; eval $f
test-quine: comparing ./quote-subst.bash output against its source code
q=\' f='echo "q=\\$q f=$q$f$q; eval \$f"'; eval $f
test-quine: success: output matched source code
```

[`dwdiff`][2] is required to use `test-quine`.

[1]: https://en.wikipedia.org/wiki/Quine_(computing)
[2]: https://os.ghalkes.nl/dwdiff.html
