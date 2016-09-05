.class public Lcom/bzbs/util/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_54

    .line 48
    new-instance v1, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/bzbs/util/AdvertisingIdClient$1;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 53
    :try_start_39
    new-instance v0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v1}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingConnection;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 54
    new-instance v2, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;

    invoke-virtual {v0}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->a(Z)Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_56
    .catchall {:try_start_39 .. :try_end_50} :catchall_58

    .line 59
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    .line 44
    :catch_54
    move-exception v0

    .line 45
    throw v0

    .line 56
    :catch_56
    move-exception v0

    .line 57
    :try_start_57
    throw v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    .line 59
    :catchall_58
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 62
    :cond_5d
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
