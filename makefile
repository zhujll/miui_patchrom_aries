#
# Makefile for xiaomi mi2
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI8_aries.zip

# All vendor apks needed
local-phone-apps := BaiduNetworkLocation PrintSpooler PacProcessor CertInstaller SnapdragonCamera KeyChain \
	Stk TimeService UserDictionaryProvider talkback Bluetooth BluetoothMidiService \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider \
	SharedStorageBackup InputDevices CellBroadcastReceiver \
	BackupRestoreConfirmation

local-density := XHDPI
local-target-bit := 32

include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:	
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

	@echo Delete some unneeded files
	rm -rf $(ZIP_DIR)/system/etc/.has_su_daemon

	rm -rf $(ZIP_DIR)/system/priv-app/Dialer.apk

	rm -rf $(ZIP_DIR)/system/priv-app/Keyguard.apk

	rm -rf $(ZIP_DIR)/system/priv-app/SystemUI.apk

	rm -rf $(ZIP_DIR)/system/priv-app/VoiceDialer.apk

	rm -rf $(ZIP_DIR)/system/priv-app/Launcher3.apk

