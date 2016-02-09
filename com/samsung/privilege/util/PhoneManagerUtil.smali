.class public Lcom/samsung/privilege/util/PhoneManagerUtil;
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
    const-class v0, Lcom/samsung/privilege/util/PhoneManagerUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    .line 14
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
    if-eqz p0, :cond_13

    .line 43
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 44
    .local v1, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_16

    move-result-object v2

    .line 50
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    :goto_12
    return-object v2

    .line 46
    :cond_13
    const-string v2, ""

    goto :goto_12

    .line 48
    :catch_16
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PhoneManagerUtil|GetSimOperator|Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, ""

    goto :goto_12
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

    if-ge v1, v5, :cond_51

    .line 58
    if-eqz p0, :cond_30

    .line 59
    :try_start_8
    invoke-static {p0}, Lcom/samsung/privilege/util/TelephonyInfo;->getInstance(Landroid/content/Context;)Lcom/samsung/privilege/util/TelephonyInfo;

    move-result-object v4

    .line 60
    .local v4, "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    invoke-virtual {v4}, Lcom/samsung/privilege/util/TelephonyInfo;->getOperatorSIM1()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "strSimOperator1":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/privilege/util/TelephonyInfo;->getOperatorSIM2()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "strSimOperator2":Ljava/lang/String;
    if-eqz v2, :cond_1f

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 80
    .end local v2    # "strSimOperator1":Ljava/lang/String;
    .end local v3    # "strSimOperator2":Ljava/lang/String;
    .end local v4    # "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    :goto_1e
    return-object v2

    .line 67
    .restart local v2    # "strSimOperator1":Ljava/lang/String;
    .restart local v3    # "strSimOperator2":Ljava/lang/String;
    .restart local v4    # "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    :cond_1f
    if-eqz v3, :cond_2b

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    move-object v2, v3

    .line 68
    goto :goto_1e

    .line 71
    :cond_2b
    invoke-static {p0}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_33

    move-result-object v2

    goto :goto_1e

    .line 73
    .end local v2    # "strSimOperator1":Ljava/lang/String;
    .end local v3    # "strSimOperator2":Ljava/lang/String;
    .end local v4    # "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    :cond_30
    const-string v2, ""

    goto :goto_1e

    .line 75
    :catch_33
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PhoneManagerUtil|GetSimOperatorDual|Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    invoke-static {p0}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method public static IsSimAIS(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 18
    if-eqz p0, :cond_31

    .line 19
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 20
    .local v1, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "strSimOperator":Ljava/lang/String;
    sget-object v4, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "strSimOperator := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    if-eqz v2, :cond_31

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 37
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "strSimOperator":Ljava/lang/String;
    :cond_31
    :goto_31
    return v3

    .line 25
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

    .line 26
    :cond_4a
    const/4 v3, 0x1

    goto :goto_31

    .line 34
    .end local v1    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "strSimOperator":Ljava/lang/String;
    :catch_4c
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PhoneManagerUtil|Exception := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public static IsSimAISXXX(Landroid/content/Context;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    if-eqz p0, :cond_96

    .line 92
    :try_start_4
    invoke-static {p0}, Lcom/samsung/privilege/util/TelephonyInfo;->getInstance(Landroid/content/Context;)Lcom/samsung/privilege/util/TelephonyInfo;

    move-result-object v6

    .line 100
    .local v6, "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    invoke-virtual {v6}, Lcom/samsung/privilege/util/TelephonyInfo;->isDualSIM()Z

    move-result v1

    .line 101
    .local v1, "isDualSIM":Z
    sget-object v9, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "isDualSIM := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz v1, :cond_c9

    .line 104
    invoke-virtual {v6}, Lcom/samsung/privilege/util/TelephonyInfo;->getOperatorSIM1()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "strSimOperator1":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/samsung/privilege/util/TelephonyInfo;->getOperatorSIM2()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "strSimOperator2":Ljava/lang/String;
    sget-object v9, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "strSimOperator1 := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v9, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "strSimOperator2 := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v9, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getImeiSIM1 := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/privilege/util/TelephonyInfo;->getImeiSIM1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v9, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getImeiSIM2 := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/privilege/util/TelephonyInfo;->getImeiSIM2()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v4, :cond_8c

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    :cond_8c
    if-eqz v5, :cond_96

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 154
    .end local v1    # "isDualSIM":Z
    .end local v4    # "strSimOperator1":Ljava/lang/String;
    .end local v5    # "strSimOperator2":Ljava/lang/String;
    .end local v6    # "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    :cond_96
    :goto_96
    return v7

    .line 113
    .restart local v1    # "isDualSIM":Z
    .restart local v4    # "strSimOperator1":Ljava/lang/String;
    .restart local v5    # "strSimOperator2":Ljava/lang/String;
    .restart local v6    # "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    :cond_97
    const-string v9, "52001"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    const-string v9, "52003"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    const-string v9, "52023"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    const-string v9, "52001"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    const-string v9, "52003"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    const-string v9, "52023"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    :cond_c7
    move v7, v8

    .line 114
    goto :goto_96

    .line 120
    .end local v4    # "strSimOperator1":Ljava/lang/String;
    .end local v5    # "strSimOperator2":Ljava/lang/String;
    :cond_c9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 121
    .local v2, "phoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "strSimOperator":Ljava/lang/String;
    sget-object v9, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "strSimOperator := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v9, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getImeiSIM1 := "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/privilege/util/TelephonyInfo;->getImeiSIM1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v3, :cond_96

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_96

    .line 127
    const-string v9, "52001"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_127

    const-string v9, "52003"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_127

    const-string v9, "52023"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_124} :catch_12a

    move-result v9

    if-eqz v9, :cond_96

    :cond_127
    move v7, v8

    .line 128
    goto/16 :goto_96

    .line 151
    .end local v1    # "isDualSIM":Z
    .end local v2    # "phoneManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "strSimOperator":Ljava/lang/String;
    .end local v6    # "telephonyInfo":Lcom/samsung/privilege/util/TelephonyInfo;
    :catch_12a
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/privilege/util/PhoneManagerUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PhoneManagerUtil|Exception := "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_96
.end method
