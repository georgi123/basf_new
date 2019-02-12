#!/usr/bin/env perl
#####use the script when have to revert from sles12 to sles11#######

##register server from APX#####
system('/opt/apxpccc/recreate_pccc_pks.sh');
system('/opt/apxpccp/recreate_pccp_pks.sh');
##register server from HPSA##
system('./opsware-agent-60.0.71639.1-linux-SLES-12-X86_64 --loglevel info --opsw_gw_addr_list 10.92.96.41:3001 -f --force_new_device');

##join server from BASF AD##
system('/root/scripts/sles_migration/basfad/./basfad_join2AD.sh -f $(hostname)');
