#!/usr/bin/env perl
#####use the script when have to revert from sles12 to sles11#######

##unregister server from APX#####
system('/opt/apxpccp/pccprel exec,DCM/DCM_DEREG_$(hostname).scp');
system('/opt/apxpccc/pccCrel exec,DCM/DCM_DEREG_$(hostname).scp');
$file="/etc/machine-id";
unlink $file;
system('dbus-uuidgen --ensure=/etc/machine-id');
##unregister server from HPSA##
system('/opt/opsware/agent/bin/agent_uninstall.sh --no_deactivate --force');
system('rm -r /opt/opsware');
##unjoin server from BASF AD##
system('/root/scripts/sles_migration/basfad/./basfad_join2AD.sh -u $(hostname)');
