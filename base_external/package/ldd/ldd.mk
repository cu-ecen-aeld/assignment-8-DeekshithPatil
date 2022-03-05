
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = '23396643569d8820e044d76bbce5a3d83cb8f260'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-DeekshithPatil.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULES_SUBDIRS = misc-modules/
LDD_MODULES_SUBDIRS += scull/

# define LDD_BUILD_CMDS
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull
# endef
#
# # TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LDD_INSTALL_TARGET_CMDS

	#misc-modules
	$(INSTALL) -m 0755 $(@D)/misc-modules/*  $(TARGET_DIR)/usr/bin

	#scull
	$(INSTALL) -m 0755 $(@D)/scull/*  $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
