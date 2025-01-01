##############################################################
#
# MONITORWS
#
##############################################################
$(info    Start Build MONITORWS)
MONITORWS_VERSION = '76d11160fd33d5b468801a94e74e24573c02632b'
MONITORWS_SITE = 'https://github.com/marcoronk/rm_client'
MONITORWS_SITE_METHOD = git
MONITORWS_GIT_SUBMODULES = YES
MONITORWS_MODULE_SUBDIRS = php/

define MONITORWS_BUILD_CMDS	
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/netlinkclient all
endef
define MONITORWS_INSTALL_TARGET_CMDS
  mkdir -p $(TARGET_DIR)/var/www/
  $(INSTALL) -m 0755 $(@D)/monitorwebserver.sh $(TARGET_DIR)/usr/bin/
  $(INSTALL) -m 0755 $(@D)/php/index.php $(TARGET_DIR)/var/www/
  $(INSTALL) -m 0755 $(@D)/netlinkclient/netlink $(TARGET_DIR)/usr/bin/
endef 


$(eval $(generic-package))
$(info    End Build MONITORWS)

