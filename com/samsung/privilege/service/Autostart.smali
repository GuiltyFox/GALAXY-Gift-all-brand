.class public Lcom/samsung/privilege/service/Autostart;
.super Landroid/content/BroadcastReceiver;
.source "Autostart.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string/jumbo v3, "Autostart"

    const-string/jumbo v4, "BOOT_COMPLETED broadcast received. Executing starter service."

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/privilege/service/GCMStarterService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    const-string/jumbo v3, "Autostart"

    const-string/jumbo v4, "Started:GCMStarterService"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_36

    .line 28
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_35

    .line 30
    :try_start_22
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v2, "intentBeacon":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    const-string/jumbo v3, "Autostart"

    const-string/jumbo v4, "Started:BeaconStarterService"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_35} :catch_56

    .line 37
    .end local v2    # "intentBeacon":Landroid/content/Intent;
    :cond_35
    :goto_35
    return-void

    .line 24
    :catch_36
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "Autostart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR:Can not start:GCMStarterService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 33
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_56
    move-exception v0

    .line 34
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "Autostart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR:Can not start:BeaconStarterService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method
