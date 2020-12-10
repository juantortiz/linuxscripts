#!/bin/bash
cp .bashrc .bashrcoriginal
echo ""> .bashrc
### virsh alias
echo "alias lsvirt='virsh list --all'" >> .bashrc
echo "alias lsvirtnet='virsh net-list'" >> .bashrc

### aplicar cambios
cat .bashrcoriginal >> .bashrc
. .bashrc


