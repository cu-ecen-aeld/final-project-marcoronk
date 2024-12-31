
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################
$(info    Start Build MONITORDRIVER)
#TODO: Fill up the contents below in order to reference your assignment 3 git contents
MONITOR_VERSION = '311a7d028f16f2b8f8d6623bf1a2d014a2d4489a'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
MONITOR_SITE = 'git@github.com:marcoronk/rm_kernel.git'
MONITOR_SITE_METHOD = git
MONITOR_GIT_SUBMODULES = YES
MONITOR_MODULE_SUBDIRS = monitor/

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define MONITOR_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/opt/monitor/
	$(INSTALL) -m 0755 $(@D)/monitor_load.sh $(TARGET_DIR)/opt/monitor/
	$(INSTALL) -m 0755 $(@D)/monitor_unload.sh $(TARGET_DIR)/opt/monitor/
	$(INSTALL) -m 0755 $(@D)/monitor/sys_monitor.ko $(TARGET_DIR)/opt/monitor/
endef

$(eval $(generic-package))
$(eval $(kernel-module))
$(info    END Build MONITORDRIVER)
