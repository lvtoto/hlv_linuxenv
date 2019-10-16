# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias g="gvim"
alias gd="gvimdiff"

#synopsys
export PATH=/eda/synopsys/installer:$PATH

#synopsys IP&VIP
export DESIGNWARE_HOME=/eda/vendor_data/synopsys

#synopsys license
export SNPSLMD_LICENSE_FILE=27000@localhost.localdomain

#scl
export PATH=/eda/synopsys/scl/2018.06/linux64/bin:$PATH
#VCS
export PATH=/eda/synopsys/vcs-mx/O-2018.09-SP2/bin:$PATH
export VCS_HOME=/eda/synopsys/vcs-mx/O-2018.09-SP2
export UVM_HOME=/eda/synopsys/vcs-mx/O-2018.09-SP2/etc/uvm-1.2
export VCS_ARCH_OVERRIDE=linux
export VCS_TARGET_ARCH=amd64
#Verdi
export PATH=/eda/synopsys/verdi/Verdi_O-2018.09-SP2/bin/:$PATH
export VERDI_HOME=/eda/synopsys/verdi/Verdi_O-2018.09-SP2
export NOVAS_HOME=/eda/synopsys/verdi/Verdi_O-2018.09-SP2
export FSDB_FUNCTIONS=1

#vivado
export XILINXD_LICENSE_FILE=/eda/Xilinx/xilinx_lic.lic
