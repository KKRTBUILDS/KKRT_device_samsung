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

# Trigger magisk
bash 

# Fix LD issue
wget https://raw.githubusercontent.com/Evolution-X/vendor_evolution/cc799bcf8cdde9f8fe4c7fb4213b407b22b76250/config/BoardConfigKernel.mk -O vendor/*/config/BoardConfigKernel.mk
wget https://raw.githubusercontent.com/Evolution-X/vendor_evolution/cc799bcf8cdde9f8fe4c7fb4213b407b22b76250/build/tasks/kernel.mk -O vendor/*/build/tasks/kernel.mk

