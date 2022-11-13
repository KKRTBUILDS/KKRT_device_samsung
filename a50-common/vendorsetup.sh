echo "I: - Fixing Stuff on A50 Device Trees"
### Start ###

# Keystore patch

echo "Applying Keystore patch...";
cd system/security;
git apply ../../device/samsung/a50-common/patch/Keystore.patch;
cd -

# Health fix

rm -rf ./hardware/interfaces/health/2.1/default/android.hardware.health@2.1-service.rc
cp ./device/samsung/a50-common/patch/android.hardware.health@2.1-service.rc ./hardware/interfaces/health/2.1/default/
