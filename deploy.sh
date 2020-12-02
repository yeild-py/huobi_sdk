install() {
  python setup.py install --record huobi.install
  return $?
}

uninstall() {
  cat huobi.install | xargs rm －rf && rm -rf huobi.install
  return $?
}

case "$1" in
install)
  install
  ;;
uninstall)
  uninstall
  ;;
*)
  echo "run with arg install|uninstall"
esac
