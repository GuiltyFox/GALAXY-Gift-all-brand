.class public Lcom/bzbs/lib/survey/util/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DeviceHelper;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final getAndroidID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DeviceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "androidId":Ljava/lang/String;
    return-object v0
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 31
    const-string/jumbo v2, ""

    .line 33
    .local v2, "versionName":Ljava/lang/String;
    :try_start_3
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/DeviceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 34
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/DeviceHelper;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 36
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_16} :catch_17

    .line 40
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_16
    return-object v2

    .line 37
    :catch_17
    move-exception v3

    goto :goto_16
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_11

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    move-object v1, v0

    .line 62
    :goto_10
    return-object v1

    .line 57
    :cond_11
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_22

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    move-object v1, v0

    .line 59
    goto :goto_10

    .line 62
    :cond_22
    const-string/jumbo v1, ""

    goto :goto_10
.end method

.method public final getDeviceManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    const-string v0, "samsung"

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    const-string v0, "GT-I9100"

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 26
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "line1Number":Ljava/lang/String;
    return-object v0
.end method

.method public final getRealDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 47
    .local v0, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .registers 9

    .prologue
    .line 82
    const/4 v3, 0x0

    .line 85
    .local v3, "serialnum":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 87
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    .line 111
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_33
    return-object v3

    .line 88
    :catch_34
    move-exception v4

    goto :goto_33
.end method

.method public final getWifiAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DeviceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 116
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
