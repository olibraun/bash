strindex() {
  # Function with two arguments:
  # 1) A string
  # 2) A substring
  # Returns the index of 2) in 1)
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}