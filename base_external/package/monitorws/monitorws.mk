##############################################################
#
# MONITORWS
#
##############################################################
$(info    Start Build MONITORWS)
MONITORWS_VERSION = '0e771e38e23c56c55acf62a0be84689c4b471c5a'
MONITORWS_SITE = 'https://github.com/marcoronk/rm_client'
MONITORWS_SITE_METHOD = git
MONITORWS_GIT_SUBMODULES = YES
MONITORWS_MODULE_SUBDIRS = php/

define MONITORWS_INSTALL_TARGET_CMDS
$(INSTALL) -m 0755 $(@D)/php/index.php $(TARGET_DIR)/usr/bin/
endef 


$(eval $(generic-package))
$(eval $(kernel-module))
$(info    End Build MONITORWS)

