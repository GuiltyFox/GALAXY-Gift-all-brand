# GALAXY-Gift-all-brand

(sget-object v)([0-9]*)(, Landroid/os/Build;->)(BRAND|MANUFACTURER)(:Ljava/lang/String;)
const-string v$2, "samsung"

(sget-object v)([0-9]*)(, Landroid/os/Build;->MODEL:Ljava/lang/String;)
const-string v$2, "GT-I9100"
const-string v$2, "SM-N920C"
const-string v$2, "SM-G935F"

invoke-virtual \{v([0-9]+)\}, Lcom/bzbs/util/DeviceHelper;->getDeviceId\(\)Ljava/lang/String;
invoke-static {}, Lcheat/FoxCore;->ranImei\(\)Ljava/lang/String;

