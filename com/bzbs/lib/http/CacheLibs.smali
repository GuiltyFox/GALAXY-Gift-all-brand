.class public Lcom/bzbs/lib/http/CacheLibs;
.super Ljava/lang/Object;
.source "CacheLibs.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 17
    if-nez p0, :cond_3

    .line 25
    :goto_2
    return-void

    .line 21
    :cond_3
    const-wide/32 v0, 0x1400000

    :try_start_6
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/anupcowkur/reservoir/Reservoir;->a(Landroid/content/Context;JLcom/google/gson/Gson;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_2

    .line 22
    :catch_f
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 28
    if-nez p0, :cond_3

    .line 36
    :goto_2
    return-void

    .line 32
    :cond_3
    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    :try_start_8
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/anupcowkur/reservoir/Reservoir;->a(Landroid/content/Context;JLcom/google/gson/Gson;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_2

    .line 33
    :catch_11
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V
    .registers 5

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;I)V

    .line 85
    :try_start_5
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/bzbs/lib/http/CacheLibs$2;

    invoke-direct {v1, p2}, Lcom/bzbs/lib/http/CacheLibs$2;-><init>(Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V

    invoke-static {p1, v0, v1}, Lcom/anupcowkur/reservoir/Reservoir;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 103
    :goto_f
    return-void

    .line 100
    :catch_10
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;)V
    .registers 5

    .prologue
    .line 44
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;I)V

    .line 46
    :try_start_5
    new-instance v0, Lcom/bzbs/lib/http/CacheLibs$1;

    invoke-direct {v0, p3}, Lcom/bzbs/lib/http/CacheLibs$1;-><init>(Lcom/bzbs/lib/http/CacheLibs$addOnListenerPut;)V

    invoke-static {p1, p2, v0}, Lcom/anupcowkur/reservoir/Reservoir;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    .line 64
    :goto_d
    return-void

    .line 61
    :catch_e
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/bzbs/lib/http/CacheLibs;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;)V

    .line 80
    return-void
.end method
