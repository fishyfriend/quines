add_lines () {
  IFS=''
  while read line; do
    echo "$line"
    lines=$(echo "$lines"; echo "$line")
  done
  echo; echo
  echo 'add_lines <<"EOS"'
  echo "$lines"
  echo EOS
}

add_lines <<"EOS"
add_lines () {
  IFS=''
  while read line; do
    echo "$line"
    lines=$(echo "$lines"; echo "$line")
  done
  echo; echo
  echo 'add_lines <<"EOS"'
  echo "$lines"
  echo EOS
}
EOS