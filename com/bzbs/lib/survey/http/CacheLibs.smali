.class public Lcom/bzbs/lib/survey/http/CacheLibs;
.super Ljava/lang/Object;
.source "CacheLibs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;,
        Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;,
        Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;,
        Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAsynchronous()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bzbs/lib/survey/http/CacheLibs;->clearAsynchronous(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;)V

    .line 45
    return-void
.end method

.method public static clearAsynchronous(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;)V
    .registers 3
    .param p0, "onListenerClear"    # Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Lcom/bzbs/lib/survey/http/CacheLibs$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/http/CacheLibs$1;-><init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerClear;)V

    invoke-static {v1}, Lcom/anupcowkur/reservoir/Reservoir;->clearAsync(Lcom/anupcowkur/reservoir/ReservoirClearCallback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 73
    :goto_8
    return-void

    .line 70
    :catch_9
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static clearSynchronous()V
    .registers 1

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 53
    :goto_3
    return-void

    .line 50
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static deleteObject(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/http/CacheLibs;->deleteObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;)V

    .line 41
    return-void
.end method

.method public static deleteObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "onListenerDelete"    # Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;

    .prologue
    .line 76
    new-instance v0, Lcom/bzbs/lib/survey/http/CacheLibs$2;

    invoke-direct {v0, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$2;-><init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerDelete;)V

    invoke-static {p0, v0}, Lcom/anupcowkur/reservoir/Reservoir;->deleteAsync(Ljava/lang/String;Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;)V

    .line 91
    return-void
.end method

.method public static getObject(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/http/CacheLibs;->getObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;)V

    .line 37
    return-void
.end method

.method public static getObject(Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "onListenerGet"    # Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;

    .prologue
    .line 112
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/bzbs/lib/survey/http/CacheLibs$4;

    invoke-direct {v1, p1}, Lcom/bzbs/lib/survey/http/CacheLibs$4;-><init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerGet;)V

    invoke-static {p0, v0, v1}, Lcom/anupcowkur/reservoir/Reservoir;->getAsync(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V

    .line 127
    return-void
.end method

.method public static initCaching(Landroid/content/Context;)V
    .registers 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 17
    const-wide/32 v2, 0x500000

    :try_start_3
    invoke-static {p0, v2, v3}, Lcom/anupcowkur/reservoir/Reservoir;->init(Landroid/content/Context;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 21
    :goto_6
    return-void

    .line 18
    :catch_7
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public static initCaching(Landroid/content/Context;I)V
    .registers 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "cacheSizeMB"    # I

    .prologue
    .line 25
    mul-int/lit16 v1, p1, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    :try_start_5
    invoke-static {p0, v2, v3}, Lcom/anupcowkur/reservoir/Reservoir;->init(Landroid/content/Context;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 29
    :goto_8
    return-void

    .line 26
    :catch_9
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static putObject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bzbs/lib/survey/http/CacheLibs;->putObject(Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;)V

    .line 33
    return-void
.end method

.method public static putObject(Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "onListenerPut"    # Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;

    .prologue
    .line 94
    new-instance v0, Lcom/bzbs/lib/survey/http/CacheLibs$3;

    invoke-direct {v0, p2}, Lcom/bzbs/lib/survey/http/CacheLibs$3;-><init>(Lcom/bzbs/lib/survey/http/CacheLibs$addOnListenerPut;)V

    invoke-static {p0, p1, v0}, Lcom/anupcowkur/reservoir/Reservoir;->putAsync(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V

    .line 109
    return-void
.end method
