####################################
# Bash utilities shared by scripts #
####################################

function get_os_type() {
  # Set variables based on OS
  case "$OSTYPE" in
    "linux-gnu"*)
      echo "linux"
      ;;
    "darwin"*)
      echo "macos"
      ;;
    "cygwin"|"win32"|"msys")
      echo "windows"
      ;;
    *)
      echo "ERROR! Unsupported OSTYPE: $OSTYPE"
      exit 1
      ;;
  esac
}
export -f get_os_type
