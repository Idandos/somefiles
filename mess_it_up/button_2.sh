#!/bin/sh
ssh -i /root/mess_it_up/id_rsa root@overcloud-ovscompute-0.localdomain 'pkill -ef stress'

