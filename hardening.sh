#!/bin/bash
lvxtend -L +3G /dev/mapper/rootvg-rootlv
xfs_growfs /dev/mapper/rootvg-rootlv
lvxtend -L +7G /dev/mapper/rootvg-varlv
xfs_growfs /dev/mapper/rootvg-varlv

yum install nginx -y
yum install stress -y
