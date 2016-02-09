.class public Lcom/samsung/privilege/util/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/privilege/util/DeviceHelper;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final getAndroidID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/util/DeviceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 167
    :goto_c
    return-object v0

    .line 166
    :catch_d
    move-exception v1

    .line 167
    .local v1, "ignored":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_c
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/samsung/privilege/util/DeviceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 35
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/samsung/privilege/util/DeviceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 36
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 38
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_13
    return-object v3

    .line 37
    :catch_14
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_13
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 8

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_f

    const-string v3, "004999010640000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 58
    const/4 v0, 0x0

    .line 61
    :cond_f
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_57

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1e

    .line 62
    const/4 v0, 0x0

    .line 66
    :cond_1e
    if-eqz v0, :cond_3b

    :try_start_20
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 67
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 68
    .local v2, "lngTest":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_5b

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3b

    .line 69
    const/4 v0, 0x0

    .line 76
    .end local v2    # "lngTest":Ljava/lang/Long;
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_46

    :try_start_3d
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 87
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_45
    :goto_45
    return-object v0

    .line 80
    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_46
    invoke-virtual {p0}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_54

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_51} :catch_57

    move-result v3

    if-eqz v3, :cond_45

    .line 85
    :cond_54
    const-string v0, ""

    goto :goto_45

    .line 86
    .end local v0    # "deviceId":Ljava/lang/String;
    :catch_57
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_45

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceId":Ljava/lang/String;
    :catch_5b
    move-exception v3

    goto :goto_3b
.end method

.method public final getDeviceManufacturer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 158
    :goto_2
    return-object v1

    .line 157
    :catch_3
    move-exception v0

    .line 158
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_2
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 150
    :goto_2
    return-object v1

    .line 149
    :catch_3
    move-exception v0

    .line 150
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_2
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .registers 6

    .prologue
    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/samsung/privilege/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 25
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 28
    .end local v2    # "telManager":Landroid/telephony/TelephonyManager;
    :goto_e
    return-object v1

    .line 27
    :catch_f
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_e
.end method

.method public final getRealDeviceId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 45
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v2

    .line 47
    .end local v1    # "telManager":Landroid/telephony/TelephonyManager;
    :goto_e
    return-object v2

    .line 46
    :catch_f
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_e
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .registers 9

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, "serialnum":Ljava/lang/String;
    :try_start_1
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 111
    .local v1, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "serialnum":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    .line 114
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "get":Ljava/lang/reflect/Method;
    :goto_2c
    return-object v3

    .line 113
    :catch_2d
    move-exception v2

    .line 114
    .local v2, "ignored":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_2c
.end method

.method public final getWifiAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 140
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v2

    .line 142
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :goto_12
    return-object v2

    .line 141
    :catch_13
    move-exception v0

    .line 142
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_12
.end method
