#!/bin/bash
### virsh alias
echo "alias lsvirt='virsh list --all'" >> .bashrc
echo "alias lsvirtnet='virsh net-list'" >> .bashrc

### aplicar cambios
. .bashrc


