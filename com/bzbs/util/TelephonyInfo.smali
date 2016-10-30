.class public final Lcom/bzbs/util/TelephonyInfo;
.super Ljava/lang/Object;
.source "TelephonyInfo.java"


# static fields
.field private static a:Lcom/bzbs/util/TelephonyInfo;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bzbs/util/TelephonyInfo;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    sget-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    if-nez v0, :cond_86

    .line 69
    new-instance v0, Lcom/bzbs/util/TelephonyInfo;

    invoke-direct {v0}, Lcom/bzbs/util/TelephonyInfo;-><init>()V

    sput-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    .line 71
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 73
    sget-object v3, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bzbs/util/TelephonyInfo;->b:Ljava/lang/String;

    .line 74
    sget-object v3, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    iput-object v6, v3, Lcom/bzbs/util/TelephonyInfo;->c:Ljava/lang/String;

    .line 77
    :try_start_23
    sget-object v3, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v4, "getDeviceIdGemini"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/bzbs/util/TelephonyInfo;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bzbs/util/TelephonyInfo;->b:Ljava/lang/String;

    .line 78
    sget-object v3, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v4, "getDeviceIdGemini"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/bzbs/util/TelephonyInfo;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bzbs/util/TelephonyInfo;->c:Ljava/lang/String;
    :try_end_3b
    .catch Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_23 .. :try_end_3b} :catch_89

    .line 91
    :goto_3b
    sget-object v3, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_ab

    :goto_44
    iput-boolean v1, v3, Lcom/bzbs/util/TelephonyInfo;->d:Z

    .line 92
    sget-object v1, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    iput-boolean v2, v1, Lcom/bzbs/util/TelephonyInfo;->e:Z

    .line 95
    :try_start_4a
    sget-object v1, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v2, "getSimStateGemini"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/bzbs/util/TelephonyInfo;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bzbs/util/TelephonyInfo;->d:Z

    .line 96
    sget-object v1, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v2, "getSimStateGemini"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/bzbs/util/TelephonyInfo;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bzbs/util/TelephonyInfo;->e:Z
    :try_end_62
    .catch Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_4a .. :try_end_62} :catch_ad

    .line 111
    :goto_62
    sget-object v1, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bzbs/util/TelephonyInfo;->f:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    iput-object v6, v0, Lcom/bzbs/util/TelephonyInfo;->g:Ljava/lang/String;

    .line 115
    :try_start_6e
    sget-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v1, "getSimOperatorGemini"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/bzbs/util/TelephonyInfo;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/util/TelephonyInfo;->f:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v1, "getSimOperatorGemini"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/bzbs/util/TelephonyInfo;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/util/TelephonyInfo;->g:Ljava/lang/String;
    :try_end_86
    .catch Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_6e .. :try_end_86} :catch_cf

    .line 131
    :cond_86
    :goto_86
    sget-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    return-object v0

    .line 79
    :catch_89
    move-exception v3

    .line 80
    invoke-virtual {v3}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    .line 83
    :try_start_8d
    sget-object v3, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v4, "getDeviceId"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/bzbs/util/TelephonyInfo;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bzbs/util/TelephonyInfo;->b:Ljava/lang/String;

    .line 84
    sget-object v3, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v4, "getDeviceId"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/bzbs/util/TelephonyInfo;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bzbs/util/TelephonyInfo;->c:Ljava/lang/String;
    :try_end_a5
    .catch Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_8d .. :try_end_a5} :catch_a6

    goto :goto_3b

    .line 85
    :catch_a6
    move-exception v3

    .line 87
    invoke-virtual {v3}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_3b

    :cond_ab
    move v1, v2

    .line 91
    goto :goto_44

    .line 97
    :catch_ad
    move-exception v1

    .line 99
    invoke-virtual {v1}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    .line 102
    :try_start_b1
    sget-object v1, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/bzbs/util/TelephonyInfo;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bzbs/util/TelephonyInfo;->d:Z

    .line 103
    sget-object v1, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v2, "getSimState"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/bzbs/util/TelephonyInfo;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bzbs/util/TelephonyInfo;->e:Z
    :try_end_c9
    .catch Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_b1 .. :try_end_c9} :catch_ca

    goto :goto_62

    .line 104
    :catch_ca
    move-exception v1

    .line 106
    invoke-virtual {v1}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_62

    .line 117
    :catch_cf
    move-exception v0

    .line 118
    invoke-virtual {v0}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    .line 121
    :try_start_d3
    sget-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v1, "getSimOperator"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/bzbs/util/TelephonyInfo;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/util/TelephonyInfo;->f:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/bzbs/util/TelephonyInfo;->a:Lcom/bzbs/util/TelephonyInfo;

    const-string/jumbo v1, "getSimOperator"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/bzbs/util/TelephonyInfo;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/util/TelephonyInfo;->g:Ljava/lang/String;
    :try_end_eb
    .catch Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException; {:try_start_d3 .. :try_end_eb} :catch_ec

    goto :goto_86

    .line 123
    :catch_ec
    move-exception v0

    .line 125
    invoke-virtual {v0}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_86
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 142
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 144
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 145
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 146
    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 148
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 149
    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 150
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_41

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_37

    move-result-object v0

    .line 161
    :goto_36
    return-object v0

    .line 156
    :catch_37
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    new-instance v0, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v0, p1}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    move-object v0, v1

    goto :goto_36
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    .line 168
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 172
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 174
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 175
    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 176
    invoke-virtual {v3, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 178
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 179
    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 180
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_4a

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3a} :catch_40

    move-result v0

    .line 184
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4a

    move v0, v1

    .line 193
    :goto_3f
    return v0

    .line 188
    :catch_40
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    new-instance v0, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v0, p1}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    move v0, v2

    goto :goto_3f
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 200
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 204
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 206
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 207
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 208
    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 210
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 211
    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 212
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_41

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_37

    move-result-object v0

    .line 222
    :goto_36
    return-object v0

    .line 217
    :catch_37
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    new-instance v0, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;

    invoke-direct {v0, p1}, Lcom/bzbs/util/TelephonyInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    move-object v0, v1

    goto :goto_36
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/util/TelephonyInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bzbs/util/TelephonyInfo;->g:Ljava/lang/String;

    return-object v0
.end method
