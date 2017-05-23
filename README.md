# GALAXY-Gift-all-brand
Regex:
(sget-object v)([0-9]*)(, Landroid/os/Build;->)(BRAND|MANUFACTURER)(:Ljava/lang/String;)
const-string v$2, "samsung"

Regex:
(sget-object v)([0-9]*)(, Landroid/os/Build;->MODEL:Ljava/lang/String;)
const-string v$2, "GT-I9100"
const-string v$2, "SM-N920C"
const-string v$2, "SM-G935F"
const-string v$2, "SM-G955FD"

Normal:
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

