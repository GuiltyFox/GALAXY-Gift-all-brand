.class public Lcom/samsung/privilege/util/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/NotificationService$PollTask;
    }
.end annotation


# static fields
.field private static LOGCAT:Ljava/lang/String;


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "buzzebees.NotificationService"

    sput-object v0, Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    sget-object v2, Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;

    const-string v3, "handleIntent"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/util/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 48
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/privilege/Const;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/util/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    iget-object v2, p0, Lcom/samsung/privilege/util/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/util/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 54
    invoke-virtual {p0}, Lcom/samsung/privilege/util/NotificationService;->stopSelf()V

    .line 60
    :goto_2e
    return-void

    .line 59
    :cond_2f
    new-instance v2, Lcom/samsung/privilege/util/NotificationService$PollTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/privilege/util/NotificationService$PollTask;-><init>(Lcom/samsung/privilege/util/NotificationService;Lcom/samsung/privilege/util/NotificationService$PollTask;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/util/NotificationService$PollTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 160
    sget-object v0, Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;

    const-string v1, "PollTask|onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/util/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 133
    sget-object v0, Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;

    const-string v1, "PollTask|onStart"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/NotificationService;->handleIntent(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;

    const-string v1, "PollTask|onStartCommand"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/NotificationService;->handleIntent(Landroid/content/Intent;)V

    .line 149
    const/4 v0, 0x2

    return v0
.end method
