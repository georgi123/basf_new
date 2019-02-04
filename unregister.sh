#!/bin/bash
#####use the script when have to revert from sles12 to sles11#######

##unregister server from APX#####
/opt/apxpccp/pccprel exec,DCM/DCM_DEREG_$(hostname).scp
/opt/apxpccc/pccCrel exec,DCM/DCM_DEREG_$(hostname).scp
##unregister server from HPSA##
/opt/opsware/agent/bin/agent_uninstall.sh --no_deactivate --force
rm -r /opt/opsware
##unjoin server from BASF AD##
/root/scripts/sles_migration/basfad/./basfad_join2AD.sh -f $(hostname)
