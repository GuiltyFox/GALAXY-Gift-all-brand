.class public Lcom/bzbs/util/PhoneManagerUtil;
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
    .line 9
    const-class v0, Lcom/bzbs/util/PhoneManagerUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    if-eqz p0, :cond_14

    .line 43
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 44
    .local v1, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 50
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    :goto_13
    return-object v2

    .line 46
    :cond_14
    const-string/jumbo v2, ""
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_13

    .line 48
    :catch_18
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhoneManagerUtil|GetSimOperator|Exception := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v2, ""

    goto :goto_13
.end method

.method public static GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .local v1, "sdk_version":I
    const/16 v5, 0x13

    if-ge v1, v5, :cond_59

    .line 58
    if-eqz p0, :cond_32

    .line 59
    :try_start_8
    invoke-static {p0}, Lcom/bzbs/util/TelephonyInfo;->getInstance(Landroid/content/Context;)Lcom/bzbs/util/TelephonyInfo;

    move-result-object v4

    .line 60
    .local v4, "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    invoke-virtual {v4}, Lcom/bzbs/util/TelephonyInfo;->getOperatorSIM1()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "strSimOperator1":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/bzbs/util/TelephonyInfo;->getOperatorSIM2()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "strSimOperator2":Ljava/lang/String;
    if-eqz v2, :cond_20

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 80
    .end local v2    # "strSimOperator1":Ljava/lang/String;
    .end local v3    # "strSimOperator2":Ljava/lang/String;
    .end local v4    # "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    :goto_1f
    return-object v2

    .line 67
    .restart local v2    # "strSimOperator1":Ljava/lang/String;
    .restart local v3    # "strSimOperator2":Ljava/lang/String;
    .restart local v4    # "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    :cond_20
    if-eqz v3, :cond_2d

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    move-object v2, v3

    .line 68
    goto :goto_1f

    .line 71
    :cond_2d
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    .line 73
    .end local v2    # "strSimOperator1":Ljava/lang/String;
    .end local v3    # "strSimOperator2":Ljava/lang/String;
    .end local v4    # "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    :cond_32
    const-string/jumbo v2, ""
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_1f

    .line 75
    :catch_36
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PhoneManagerUtil|GetSimOperatorDual|Exception := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_59
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f
.end method

.method public static IsSimAIS(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 18
    if-eqz p0, :cond_38

    .line 19
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 20
    .local v1, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "strSimOperator":Ljava/lang/String;
    sget-object v4, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strSimOperator := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    if-eqz v2, :cond_38

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 37
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "strSimOperator":Ljava/lang/String;
    :cond_38
    :goto_38
    return v3

    .line 25
    .restart local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .restart local v2    # "strSimOperator":Ljava/lang/String;
    :cond_39
    const-string/jumbo v4, "52001"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string/jumbo v4, "52003"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string/jumbo v4, "52023"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_56

    move-result v4

    if-eqz v4, :cond_38

    .line 26
    :cond_54
    const/4 v3, 0x1

    goto :goto_38

    .line 34
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "strSimOperator":Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PhoneManagerUtil|Exception := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public static IsSimAISXXX(Landroid/content/Context;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    if-eqz p0, :cond_b1

    .line 92
    :try_start_4
    invoke-static {p0}, Lcom/bzbs/util/TelephonyInfo;->getInstance(Landroid/content/Context;)Lcom/bzbs/util/TelephonyInfo;

    move-result-object v6

    .line 100
    .local v6, "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    invoke-virtual {v6}, Lcom/bzbs/util/TelephonyInfo;->isDualSIM()Z

    move-result v1

    .line 101
    .local v1, "isDualSIM":Z
    sget-object v9, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isDualSIM := "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz v1, :cond_ea

    .line 104
    invoke-virtual {v6}, Lcom/bzbs/util/TelephonyInfo;->getOperatorSIM1()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "strSimOperator1":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/bzbs/util/TelephonyInfo;->getOperatorSIM2()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "strSimOperator2":Ljava/lang/String;
    sget-object v9, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "strSimOperator1 := "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v9, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "strSimOperator2 := "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v9, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getImeiSIM1 := "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/bzbs/util/TelephonyInfo;->getImeiSIM1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v9, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getImeiSIM2 := "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/bzbs/util/TelephonyInfo;->getImeiSIM2()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v4, :cond_a6

    const-string/jumbo v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    :cond_a6
    if-eqz v5, :cond_b1

    const-string/jumbo v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 154
    .end local v1    # "isDualSIM":Z
    .end local v4    # "strSimOperator1":Ljava/lang/String;
    .end local v5    # "strSimOperator2":Ljava/lang/String;
    .end local v6    # "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    :cond_b1
    :goto_b1
    return v7

    .line 113
    .restart local v1    # "isDualSIM":Z
    .restart local v4    # "strSimOperator1":Ljava/lang/String;
    .restart local v5    # "strSimOperator2":Ljava/lang/String;
    .restart local v6    # "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    :cond_b2
    const-string/jumbo v9, "52001"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e8

    const-string/jumbo v9, "52003"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e8

    const-string/jumbo v9, "52023"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e8

    const-string/jumbo v9, "52001"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e8

    const-string/jumbo v9, "52003"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e8

    const-string/jumbo v9, "52023"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b1

    :cond_e8
    move v7, v8

    .line 114
    goto :goto_b1

    .line 120
    .end local v4    # "strSimOperator1":Ljava/lang/String;
    .end local v5    # "strSimOperator2":Ljava/lang/String;
    :cond_ea
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 121
    .local v2, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "strSimOperator":Ljava/lang/String;
    sget-object v9, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "strSimOperator := "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v9, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getImeiSIM1 := "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/bzbs/util/TelephonyInfo;->getImeiSIM1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v3, :cond_b1

    const-string/jumbo v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 127
    const-string/jumbo v9, "52001"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_157

    const-string/jumbo v9, "52003"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_157

    const-string/jumbo v9, "52023"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_154} :catch_15a

    move-result v9

    if-eqz v9, :cond_b1

    :cond_157
    move v7, v8

    .line 128
    goto/16 :goto_b1

    .line 151
    .end local v1    # "isDualSIM":Z
    .end local v2    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "strSimOperator":Ljava/lang/String;
    .end local v6    # "telephonyInfo":Lcom/bzbs/util/TelephonyInfo;
    :catch_15a
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/bzbs/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PhoneManagerUtil|Exception := "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1
.end method
