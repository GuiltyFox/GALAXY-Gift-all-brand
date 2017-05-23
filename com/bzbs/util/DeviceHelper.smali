.class public Lcom/bzbs/util/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bzbs/util/DeviceHelper;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/util/DeviceHelper;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 25
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 28
    :goto_f
    return-object v0

    .line 27
    :catch_10
    move-exception v0

    .line 28
    const-string/jumbo v0, ""

    goto :goto_f
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/util/DeviceHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/bzbs/util/DeviceHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 36
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 38
    :goto_13
    return-object v0

    .line 37
    :catch_14
    move-exception v0

    .line 38
    const-string/jumbo v0, ""

    goto :goto_13
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/util/DeviceHelper;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 45
    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 47
    :goto_f
    return-object v0

    .line 46
    :catch_10
    move-exception v0

    .line 47
    const-string/jumbo v0, ""

    goto :goto_f
.end method

.method public final d()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Lcom/bzbs/util/DeviceHelper;->c()Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_11

    const-string/jumbo v2, "004999010640000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v1, v0

    .line 83
    :cond_11
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_5f

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_20

    move-object v1, v0

    .line 88
    :cond_20
    if-eqz v1, :cond_64

    :try_start_22
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 89
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_49

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_64

    .line 98
    :goto_3d
    if-eqz v0, :cond_4c

    :try_start_3f
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 109
    :cond_48
    :goto_48
    return-object v0

    .line 94
    :catch_49
    move-exception v0

    move-object v0, v1

    goto :goto_3d

    .line 102
    :cond_4c
    invoke-virtual {p0}, Lcom/bzbs/util/DeviceHelper;->i()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_5b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 107
    :cond_5b
    const-string/jumbo v0, ""
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5e} :catch_5f

    goto :goto_48

    .line 108
    :catch_5f
    move-exception v0

    .line 109
    const-string/jumbo v0, ""

    goto :goto_48

    :cond_64
    move-object v0, v1

    goto :goto_3d
.end method

.method public final e()Ljava/lang/String;
    .registers 6

    .prologue
    .line 130
    .line 131
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "ro.serialno"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 136
    :goto_30
    return-object v0

    .line 135
    :catch_31
    move-exception v0

    .line 136
    const-string/jumbo v0, ""

    goto :goto_30
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/util/DeviceHelper;->a:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 162
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    .line 164
    :goto_13
    return-object v0

    .line 163
    :catch_14
    move-exception v0

    .line 164
    const-string/jumbo v0, ""

    goto :goto_13
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    :try_start_0
    const-string v0, "SM-G935F"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 172
    :goto_2
    return-object v0

    .line 171
    :catch_3
    move-exception v0

    .line 172
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    :try_start_0
    const-string v0, "samsung"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 180
    :goto_2
    return-object v0

    .line 179
    :catch_3
    move-exception v0

    .line 180
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public final i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/util/DeviceHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 189
    :goto_d
    return-object v0

    .line 188
    :catch_e
    move-exception v0

    .line 189
    const-string/jumbo v0, ""

    goto :goto_d
.end method
