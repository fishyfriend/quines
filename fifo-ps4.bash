set +x
rm -f /tmp/p
mkfifo /tmp/p
trap "rm -f /tmp/p" EXIT
tac</tmp/p&
echo set +x>/tmp/p
exec 2>/tmp/p
PS4=
  set -x
PS4=' set -x\nPS4=\nexec 2>/tmp/p\necho set +x>/tmp/p\ntac</tmp/p&\ntrap "rm -f /tmp/p" EXIT\nmkfifo /tmp/p\nrm -f /tmp/p\n'
set +x
