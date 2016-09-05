.class public Lcom/samsung/privilege/service/BeaconStarterService;
.super Landroid/app/Service;
.source "BeaconStarterService.java"


# static fields
.field private static b:J


# instance fields
.field private a:Landroid/os/Handler;

.field private c:Lcom/jaalee/sdk/BeaconManager;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jaalee/sdk/Region;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/BeaconBzbs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 110
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->d()V

    .line 114
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    .prologue
    .line 80
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->a:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/jaalee/sdk/BeaconManager;

    invoke-direct {v0, p0}, Lcom/jaalee/sdk/BeaconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    .line 87
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->a()Z

    move-result v0

    if-nez v0, :cond_29

    .line 93
    :cond_1f
    :goto_1f
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "ConnectToService"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 89
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_1f
.end method
