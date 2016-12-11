set -e

function hitEnter() {
  printf "\nHit enter to continue\n"
  read
}

function header() {
  printf "\n\n> $1\n"
}

function item() {
  printf '%s\n' "- $1"
}

function button() {
  printf "\nbutton: [ $1 ]\n"
}

function tab() {
  printf "\ntab: | $1 |\n"
}
