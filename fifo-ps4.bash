#!/usr/bin/env bash
set +x
p=$(mktemp -u)
mkfifo "$p"
trap "echo -e \"\043!/usr/bin/env bash\"; rm -f \"$p\"" EXIT
tac 0< "$p" &
echo set +x 1> "$p"
exec 2> "$p"
PS4=
set -x
PS4='set -x\nPS4=\nexec 2> "\$p"\necho set +x 1> "\$p"\ntac 0< "\$p" &\ntrap "echo -e \\\"\\043!/usr/bin/env bash\\\"; rm -f \\\"\$p\\\"" EXIT\nmkfifo "\$p"\np=\$(mktemp -u)\n'
set +x
