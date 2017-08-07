#!/bin/sh
#
# Command file for running the Z/EVES GUI
#
# Copy this file to one named "z-eves-gui". In z-eves-gui, set zevesdir to your
# Z/EVES root directory, zguidir to the gui-x.y directory that matches your
# version of python, move the z-eves-gui file to a directory on your search
# path, and make it executable. You may also have to change the definition of
# the python variable.

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

zevesdir="${SOURCE_DIR}/Z-Eves"
zguidir="${zevesdir}/gui-1.5"
python="${SOURCE_DIR}/bin/python"


lispdir="${zevesdir}/system"
zsysdir="${zevesdir}/system"
zlibdir="${zevesdir}/library/"
zeves="${zsysdir}/z-eves-pc-linux-cmucl.core"

export LC_ALL=C
export ZEVESCMD="\"${lispdir}/lisp\" -core \"${zeves}\" -- -libs \"${zlibdir}\""
xset fp+ "${zevesdir}/zedfont"
exec $python "${zguidir}/toplevel.pyc" "$@"
