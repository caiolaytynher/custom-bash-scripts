for script in (pwd)/*.sh
  set -l bin /usr/local/bin
  set -l name (string sub -e -3 (basename $script))

  ln -sf $script $bin/$name
end
