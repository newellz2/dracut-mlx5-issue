#!/bin/bash

check() {
	return 0
}

depends() {
	return 0
}

install() {
  inst_hook pre-trigger 00 "$moddir/mlx5.sh"
  inst_multiple lspci setpci awk

  dracut_need_initqueue
}

