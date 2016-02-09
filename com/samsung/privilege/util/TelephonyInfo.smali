.class public final Lcom/samsung/privilege/util/TelephonyInfo;
.super Ljava/lang/Object;
.source "TelephonyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    }
.end annotation


# static fields
.field private static telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;


# instance fields
.field private imeiSIM1:Ljava/lang/String;

.field private imeiSIM2:Ljava/lang/String;

.field private isSIM1Ready:Z

.field private isSIM2Ready:Z

.field private operatorSIM1:Ljava/lang/String;

.field private operatorSIM2:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "predictedMethodName"    # Ljava/lang/String;
    .param p2, "slotID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 138
    .local v2, "imei":Ljava/lang/String;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 142
    .local v6, "telephony":Landroid/telephony/TelephonyManager;
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 144
    .local v7, "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    .line 145
    .local v5, "parameter":[Ljava/lang/Class;
    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    .line 146
    invoke-virtual {v7, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 148
    .local v1, "getSimID":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/Object;

    .line 149
    .local v3, "obParameter":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    .line 150
    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, "ob_phone":Ljava/lang/Object;
    if-eqz v4, :cond_35

    .line 153
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_36

    move-result-object v2

    .line 161
    :cond_35
    return-object v2

    .line 156
    .end local v1    # "getSimID":Ljava/lang/reflect/Method;
    .end local v3    # "obParameter":[Ljava/lang/Object;
    .end local v4    # "ob_phone":Ljava/lang/Object;
    .end local v5    # "parameter":[Ljava/lang/Class;
    .end local v7    # "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_36
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    new-instance v8, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v8, p1}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/privilege/util/TelephonyInfo;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 67
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    if-nez v5, :cond_7f

    .line 69
    new-instance v5, Lcom/samsung/privilege/util/TelephonyInfo;

    invoke-direct {v5}, Lcom/samsung/privilege/util/TelephonyInfo;-><init>()V

    sput-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    .line 71
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 73
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    .line 74
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    iput-object v8, v5, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    .line 77
    :try_start_22
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v6, "getDeviceIdGemini"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/samsung/privilege/util/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    .line 78
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v6, "getDeviceIdGemini"

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/samsung/privilege/util/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM2:Ljava/lang/String;
    :try_end_38
    .catch Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_22 .. :try_end_38} :catch_82

    .line 91
    :goto_38
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_a2

    :goto_41
    iput-boolean v3, v5, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM1Ready:Z

    .line 92
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    iput-boolean v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM2Ready:Z

    .line 95
    :try_start_47
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimStateGemini"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM1Ready:Z

    .line 96
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimStateGemini"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM2Ready:Z
    :try_end_5d
    .catch Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_47 .. :try_end_5d} :catch_a4

    .line 111
    :goto_5d
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM1:Ljava/lang/String;

    .line 112
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    iput-object v8, v3, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM2:Ljava/lang/String;

    .line 115
    :try_start_69
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimOperatorGemini"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSimOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM1:Ljava/lang/String;

    .line 116
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimOperatorGemini"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSimOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM2:Ljava/lang/String;
    :try_end_7f
    .catch Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_69 .. :try_end_7f} :catch_c4

    .line 131
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7f
    :goto_7f
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    return-object v3

    .line 79
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_82
    move-exception v0

    .line 80
    .local v0, "e":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    invoke-virtual {v0}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    .line 83
    :try_start_86
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v6, "getDeviceId"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/samsung/privilege/util/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    .line 84
    sget-object v5, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v6, "getDeviceId"

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/samsung/privilege/util/TelephonyInfo;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM2:Ljava/lang/String;
    :try_end_9c
    .catch Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_86 .. :try_end_9c} :catch_9d

    goto :goto_38

    .line 85
    :catch_9d
    move-exception v1

    .line 87
    .local v1, "e1":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    invoke-virtual {v1}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_38

    .end local v0    # "e":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    .end local v1    # "e1":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    :cond_a2
    move v3, v4

    .line 91
    goto :goto_41

    .line 97
    :catch_a4
    move-exception v0

    .line 99
    .restart local v0    # "e":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    invoke-virtual {v0}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    .line 102
    :try_start_a8
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimState"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM1Ready:Z

    .line 103
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimState"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM2Ready:Z
    :try_end_be
    .catch Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_a8 .. :try_end_be} :catch_bf

    goto :goto_5d

    .line 104
    :catch_bf
    move-exception v1

    .line 106
    .restart local v1    # "e1":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    invoke-virtual {v1}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_5d

    .line 117
    .end local v0    # "e":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    .end local v1    # "e1":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    :catch_c4
    move-exception v0

    .line 118
    .restart local v0    # "e":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    invoke-virtual {v0}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    .line 121
    :try_start_c8
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimOperator"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSimOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM1:Ljava/lang/String;

    .line 122
    sget-object v3, Lcom/samsung/privilege/util/TelephonyInfo;->telephonyInfo:Lcom/samsung/privilege/util/TelephonyInfo;

    const-string v4, "getSimOperator"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/samsung/privilege/util/TelephonyInfo;->getSimOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM2:Ljava/lang/String;
    :try_end_de
    .catch Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_c8 .. :try_end_de} :catch_df

    goto :goto_7f

    .line 123
    :catch_df
    move-exception v1

    .line 125
    .restart local v1    # "e1":Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
    invoke-virtual {v1}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_7f
.end method

.method private static getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "predictedMethodName"    # Ljava/lang/String;
    .param p2, "slotID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "isReady":Z
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 172
    .local v7, "telephony":Landroid/telephony/TelephonyManager;
    :try_start_9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 174
    .local v8, "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Class;

    .line 175
    .local v5, "parameter":[Ljava/lang/Class;
    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v9

    .line 176
    invoke-virtual {v8, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 178
    .local v1, "getSimStateGemini":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    .line 179
    .local v3, "obParameter":[Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    .line 180
    invoke-virtual {v1, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 182
    .local v4, "ob_phone":Ljava/lang/Object;
    if-eqz v4, :cond_3d

    .line 183
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_38} :catch_3e

    move-result v6

    .line 184
    .local v6, "simState":I
    const/4 v9, 0x5

    if-ne v6, v9, :cond_3d

    .line 185
    const/4 v2, 0x1

    .line 193
    .end local v6    # "simState":I
    :cond_3d
    return v2

    .line 188
    .end local v1    # "getSimStateGemini":Ljava/lang/reflect/Method;
    .end local v3    # "obParameter":[Ljava/lang/Object;
    .end local v4    # "ob_phone":Ljava/lang/Object;
    .end local v5    # "parameter":[Ljava/lang/Class;
    .end local v8    # "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3e
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    new-instance v9, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v9, p1}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private static getSimOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "predictedMethodName"    # Ljava/lang/String;
    .param p2, "slotID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v5, 0x0

    .line 200
    .local v5, "strSimOperatorBySlot":Ljava/lang/String;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 204
    .local v6, "telephony":Landroid/telephony/TelephonyManager;
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 206
    .local v7, "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/Class;

    .line 207
    .local v4, "parameter":[Ljava/lang/Class;
    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v8

    .line 208
    invoke-virtual {v7, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 210
    .local v1, "getSimOperator":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    .line 211
    .local v2, "obParameter":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 212
    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 214
    .local v3, "ob_phone":Ljava/lang/Object;
    if-eqz v3, :cond_35

    .line 215
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_36

    move-result-object v5

    .line 222
    :cond_35
    return-object v5

    .line 217
    .end local v1    # "getSimOperator":Ljava/lang/reflect/Method;
    .end local v2    # "obParameter":[Ljava/lang/Object;
    .end local v3    # "ob_phone":Ljava/lang/Object;
    .end local v4    # "parameter":[Ljava/lang/Class;
    .end local v7    # "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_36
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    new-instance v8, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v8, p1}, Lcom/samsung/privilege/util/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method public getImeiSIM1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiSIM2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorSIM1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorSIM2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/privilege/util/TelephonyInfo;->operatorSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public isDualSIM()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/privilege/util/TelephonyInfo;->imeiSIM2:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSIM1Ready()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM1Ready:Z

    return v0
.end method

.method public isSIM2Ready()Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/samsung/privilege/util/TelephonyInfo;->isSIM2Ready:Z

    return v0
.end method
