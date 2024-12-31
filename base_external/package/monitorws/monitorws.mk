##############################################################
#
# MONITORWS
#
##############################################################
$(info    Start Build MONITORWS)
MONITORWS_VERSION = '0b14e4c946e9a8e96e12a9ed33ae2a59b3cb07d1'
MONITORWS_SITE = 'https://github.com/marcoronk/rm_client'
MONITORWS_SITE_METHOD = git
MONITORWS_GIT_SUBMODULES = YES
MONITORWS_MODULE_SUBDIRS = php/

define MONITORWS_INSTALL_TARGET_CMDS
  mkdir -p $(TARGET_DIR)/var/www/
  $(INSTALL) -m 0755 $(@D)/monitorwebserver.sh $(TARGET_DIR)/usr/bin/
  $(INSTALL) -m 0755 $(@D)/php/index.php $(TARGET_DIR)/var/www/
endef 


$(eval $(generic-package))
$(info    End Build MONITORWS)

