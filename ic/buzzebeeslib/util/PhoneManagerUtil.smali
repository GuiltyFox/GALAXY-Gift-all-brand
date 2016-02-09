.class public Lic/buzzebeeslib/util/PhoneManagerUtil;
.super Ljava/lang/Object;
.source "PhoneManagerUtil.java"


# static fields
.field public static final SimOperatorAIS1:Ljava/lang/String; = "52001"

.field public static final SimOperatorAIS2:Ljava/lang/String; = "52003"

.field public static final SimOperatorAIS3:Ljava/lang/String; = "52023"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lic/buzzebeeslib/util/PhoneManagerUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    if-eqz p0, :cond_13

    .line 44
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 45
    .local v1, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_16

    move-result-object v2

    .line 51
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    :goto_12
    return-object v2

    .line 47
    :cond_13
    const-string v2, ""

    goto :goto_12

    .line 49
    :catch_16
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PhoneManagerUtil|GetSimOperator|Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, ""

    goto :goto_12
.end method

.method public static GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .local v1, "sdk_version":I
    const/16 v5, 0x13

    if-ge v1, v5, :cond_51

    .line 59
    if-eqz p0, :cond_30

    .line 60
    :try_start_8
    invoke-static {p0}, Lic/buzzebeeslib/util/TelephonyInfo;->getInstance(Landroid/content/Context;)Lic/buzzebeeslib/util/TelephonyInfo;

    move-result-object v4

    .line 61
    .local v4, "telephonyInfo":Lic/buzzebeeslib/util/TelephonyInfo;
    invoke-virtual {v4}, Lic/buzzebeeslib/util/TelephonyInfo;->getOperatorSIM1()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "strSimOperator1":Ljava/lang/String;
    invoke-virtual {v4}, Lic/buzzebeeslib/util/TelephonyInfo;->getOperatorSIM2()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "strSimOperator2":Ljava/lang/String;
    if-eqz v2, :cond_1f

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 81
    .end local v2    # "strSimOperator1":Ljava/lang/String;
    .end local v3    # "strSimOperator2":Ljava/lang/String;
    .end local v4    # "telephonyInfo":Lic/buzzebeeslib/util/TelephonyInfo;
    :goto_1e
    return-object v2

    .line 68
    .restart local v2    # "strSimOperator1":Ljava/lang/String;
    .restart local v3    # "strSimOperator2":Ljava/lang/String;
    .restart local v4    # "telephonyInfo":Lic/buzzebeeslib/util/TelephonyInfo;
    :cond_1f
    if-eqz v3, :cond_2b

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    move-object v2, v3

    .line 69
    goto :goto_1e

    .line 72
    :cond_2b
    invoke-static {p0}, Lic/buzzebeeslib/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_33

    move-result-object v2

    goto :goto_1e

    .line 74
    .end local v2    # "strSimOperator1":Ljava/lang/String;
    .end local v3    # "strSimOperator2":Ljava/lang/String;
    .end local v4    # "telephonyInfo":Lic/buzzebeeslib/util/TelephonyInfo;
    :cond_30
    const-string v2, ""

    goto :goto_1e

    .line 76
    :catch_33
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lic/buzzebeeslib/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PhoneManagerUtil|GetSimOperatorDual|Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lic/buzzebeeslib/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    invoke-static {p0}, Lic/buzzebeeslib/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method public static IsSimAIS(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 19
    if-eqz p0, :cond_31

    .line 20
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 21
    .local v1, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "strSimOperator":Ljava/lang/String;
    sget-object v4, Lic/buzzebeeslib/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "strSimOperator := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    if-eqz v2, :cond_31

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 38
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "strSimOperator":Ljava/lang/String;
    :cond_31
    :goto_31
    return v3

    .line 26
    .restart local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .restart local v2    # "strSimOperator":Ljava/lang/String;
    :cond_32
    const-string v4, "52001"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    const-string v4, "52003"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    const-string v4, "52023"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_4c

    move-result v4

    if-eqz v4, :cond_31

    .line 27
    :cond_4a
    const/4 v3, 0x1

    goto :goto_31

    .line 35
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "strSimOperator":Ljava/lang/String;
    :catch_4c
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lic/buzzebeeslib/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PhoneManagerUtil|Exception := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method
