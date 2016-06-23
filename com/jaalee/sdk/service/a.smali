.class final Lcom/jaalee/sdk/service/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/BeaconService;


# direct methods
.method constructor <init>(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/a;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/a;)Lcom/jaalee/sdk/service/BeaconService;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/a;->a:Lcom/jaalee/sdk/service/BeaconService;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string/jumbo v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/jaalee/sdk/service/a;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->c(Lcom/jaalee/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jaalee/sdk/service/b;

    invoke-direct {v1, p0}, Lcom/jaalee/sdk/service/b;-><init>(Lcom/jaalee/sdk/service/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    :goto_27
    return-void

    :cond_28
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/jaalee/sdk/service/a;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->c(Lcom/jaalee/sdk/service/BeaconService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jaalee/sdk/service/c;

    invoke-direct {v1, p0}, Lcom/jaalee/sdk/service/c;-><init>(Lcom/jaalee/sdk/service/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method
