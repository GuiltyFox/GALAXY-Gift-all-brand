.class public Lcom/bzbs/util/DeviceHelper;
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
    iput-object p1, p0, Lcom/bzbs/util/DeviceHelper;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final getAndroidID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/bzbs/util/DeviceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 167
    :goto_d
    return-object v0

    .line 166
    :catch_e
    move-exception v1

    .line 167
    .local v1, "ignored":Ljava/lang/Exception;
    const-string/jumbo v0, ""

    goto :goto_d
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/bzbs/util/DeviceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 35
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/bzbs/util/DeviceHelper;->mContext:Landroid/content/Context;

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
    const-string/jumbo v3, ""

    goto :goto_13
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 9

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string/jumbo v3, "004999010640000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 58
    const/4 v0, 0x0

    .line 61
    :cond_10
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_5c

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1f

    .line 62
    const/4 v0, 0x0

    .line 66
    :cond_1f
    if-eqz v0, :cond_3d

    :try_start_21
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 67
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 68
    .local v2, "lngTest":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_61

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3d

    .line 69
    const/4 v0, 0x0

    .line 76
    .end local v2    # "lngTest":Ljava/lang/Long;
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_49

    :try_start_3f
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 87
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_48
    :goto_48
    return-object v0

    .line 80
    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_49
    invoke-virtual {p0}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_58

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 85
    :cond_58
    const-string/jumbo v0, ""
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5b} :catch_5c

    goto :goto_48

    .line 86
    .end local v0    # "deviceId":Ljava/lang/String;
    :catch_5c
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v0, ""

    goto :goto_48

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceId":Ljava/lang/String;
    :catch_61
    move-exception v3

    goto :goto_3d
.end method

.method public final getDeviceManufacturer()Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    :try_start_0
    const-string v1, "samsung"
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
    const-string/jumbo v1, ""

    goto :goto_2
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    :try_start_0
    const-string v1, "GT-I9100"
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
    const-string/jumbo v1, ""

    goto :goto_2
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .registers 6

    .prologue
    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/bzbs/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 25
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v1

    .line 28
    .end local v2    # "telManager":Landroid/telephony/TelephonyManager;
    :goto_f
    return-object v1

    .line 27
    :catch_10
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    goto :goto_f
.end method

.method public final getRealDeviceId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/bzbs/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 45
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v2

    .line 47
    .end local v1    # "telManager":Landroid/telephony/TelephonyManager;
    :goto_f
    return-object v2

    .line 46
    :catch_10
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    goto :goto_f
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .registers 10

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, "serialnum":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 110
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 111
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ro.serialno"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    .line 114
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    .end local v4    # "serialnum":Ljava/lang/String;
    :goto_33
    return-object v4

    .line 113
    .restart local v4    # "serialnum":Ljava/lang/String;
    :catch_34
    move-exception v3

    .line 114
    .local v3, "ignored":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    goto :goto_33
.end method

.method public final getWifiAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/bzbs/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 140
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v2

    .line 142
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :goto_13
    return-object v2

    .line 141
    :catch_14
    move-exception v0

    .line 142
    .local v0, "ignored":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    goto :goto_13
.end method
