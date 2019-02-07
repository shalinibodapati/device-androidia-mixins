FIRST_STAGE_MOUNT_CFG_FILE := $(TARGET_DEVICE_DIR)/extra_files/firststage-mount/config.asl

$(FIRSTSTAGE_MOUNT_SSDT): $(FIRST_STAGE_MOUNT_CFG_FILE) $(IASL)
	$(hide) $(IASL) -p $(@:.aml=) $(FIRST_STAGE_MOUNT_CFG_FILE);
