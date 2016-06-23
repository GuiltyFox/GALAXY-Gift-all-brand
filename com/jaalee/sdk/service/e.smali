.class final Lcom/jaalee/sdk/service/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/BeaconService;


# direct methods
.method constructor <init>(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/e;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/e;)Lcom/jaalee/sdk/service/BeaconService;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/e;->a:Lcom/jaalee/sdk/service/BeaconService;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/jaalee/sdk/service/e;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->c(Lcom/jaalee/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jaalee/sdk/service/f;

    invoke-direct {v1, p0}, Lcom/jaalee/sdk/service/f;-><init>(Lcom/jaalee/sdk/service/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
