.class public Lcom/bzbs/util/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.java"


# direct methods
.method public static a()Z
    .registers 1

    .prologue
    .line 9
    invoke-static {}, Lcom/bzbs/util/RootUtil;->b()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/bzbs/util/RootUtil;->c()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/bzbs/util/RootUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static b()Z
    .registers 2

    .prologue
    .line 13
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 14
    if-eqz v0, :cond_f

    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static c()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v2, "/system/app/Superuser.apk"

    aput-object v2, v3, v1

    const-string/jumbo v2, "/sbin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string/jumbo v4, "/system/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string/jumbo v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string/jumbo v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string/jumbo v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string/jumbo v4, "/data/local/su"

    aput-object v4, v3, v2

    .line 20
    array-length v4, v3

    move v2, v1

    :goto_3d
    if-ge v2, v4, :cond_50

    aget-object v5, v3, v2

    .line 21
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 23
    :goto_4c
    return v0

    .line 20
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_50
    move v0, v1

    .line 23
    goto :goto_4c
.end method

.method private static d()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 29
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "/system/xbin/which"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "su"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_19} :catch_3b
    .catchall {:try_start_3 .. :try_end_19} :catchall_44

    move-result-object v2

    .line 30
    :try_start_1a
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2b} :catch_4b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_44

    move-result-object v3

    if-eqz v3, :cond_34

    .line 36
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_33
    :goto_33
    return v0

    :cond_34
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_39
    move v0, v1

    goto :goto_33

    .line 33
    :catch_3b
    move-exception v0

    move-object v0, v2

    .line 36
    :goto_3d
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_42
    move v0, v1

    goto :goto_33

    :catchall_44
    move-exception v0

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_4a
    throw v0

    .line 33
    :catch_4b
    move-exception v0

    move-object v0, v2

    goto :goto_3d
.end method
