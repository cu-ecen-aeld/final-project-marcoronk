
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################
$(info    Start Build MONITORDRIVER)
#TODO: Fill up the contents below in order to reference your assignment 3 git contents
MONITOR_VERSION = 'bea260703a01d843576b5d0bac62faf71b048a53'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
MONITOR_SITE = 'git@github.com:marcoronk/rm_kernel.git'
MONITOR_SITE_METHOD = git
MONITOR_GIT_SUBMODULES = YES


# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define MONITOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/monitor/aesdchar.ko $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
$(eval $(kernel-module))
$(info    END Build MONITORDRIVER)
