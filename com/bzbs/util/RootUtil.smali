.class public Lcom/bzbs/util/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRootMethod1()Z
    .registers 2

    .prologue
    .line 13
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 14
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_f

    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private static checkRootMethod2()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    const/16 v4, 0x9

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v4, "/system/app/Superuser.apk"

    aput-object v4, v1, v3

    const-string/jumbo v4, "/sbin/su"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string/jumbo v5, "/system/bin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "/system/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "/data/local/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "/data/local/bin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "/system/sd/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "/system/bin/failsafe/su"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "/data/local/su"

    aput-object v5, v1, v4

    .line 20
    .local v1, "paths":[Ljava/lang/String;
    array-length v5, v1

    move v4, v3

    :goto_3d
    if-ge v4, v5, :cond_50

    aget-object v0, v1, v4

    .line 21
    .local v0, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 23
    .end local v0    # "path":Ljava/lang/String;
    :goto_4c
    return v2

    .line 20
    .restart local v0    # "path":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .end local v0    # "path":Ljava/lang/String;
    :cond_50
    move v2, v3

    .line 23
    goto :goto_4c
.end method

.method private static checkRootMethod3()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "process":Ljava/lang/Process;
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "/system/xbin/which"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "su"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 30
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .local v0, "in":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_3b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_43

    move-result-object v5

    if-eqz v5, :cond_34

    .line 36
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .end local v0    # "in":Ljava/io/BufferedReader;
    :cond_33
    :goto_33
    return v3

    .restart local v0    # "in":Ljava/io/BufferedReader;
    :cond_34
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_39
    move v3, v4

    goto :goto_33

    .line 33
    .end local v0    # "in":Ljava/io/BufferedReader;
    :catch_3b
    move-exception v2

    .line 36
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_41
    move v3, v4

    goto :goto_33

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_43
    move-exception v3

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_49
    throw v3
.end method

.method public static isDeviceRooted()Z
    .registers 1

    .prologue
    .line 9
    invoke-static {}, Lcom/bzbs/util/RootUtil;->checkRootMethod1()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/bzbs/util/RootUtil;->checkRootMethod2()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/bzbs/util/RootUtil;->checkRootMethod3()Z

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