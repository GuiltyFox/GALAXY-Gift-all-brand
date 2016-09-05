.class final Lcom/jaalee/sdk/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/BeaconManager;


# direct methods
.method private constructor <init>(Lcom/jaalee/sdk/BeaconManager;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaalee/sdk/BeaconManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/b;-><init>(Lcom/jaalee/sdk/BeaconManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->b(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/RangingListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jaalee/sdk/service/p;

    iget-object v1, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v1}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/RangingListener;

    move-result-object v1

    iget-object v2, v0, Lcom/jaalee/sdk/service/p;->a:Lcom/jaalee/sdk/Region;

    iget-object v0, v0, Lcom/jaalee/sdk/service/p;->b:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/jaalee/sdk/RangingListener;->a(Lcom/jaalee/sdk/Region;Ljava/util/List;)V

    goto :goto_18

    :pswitch_33
    iget-object v0, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->b(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/MonitoringListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jaalee/sdk/service/l;

    iget-object v1, v0, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

    sget-object v2, Lcom/jaalee/sdk/e;->a:Lcom/jaalee/sdk/e;

    if-ne v1, v2, :cond_51

    iget-object v1, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v1}, Lcom/jaalee/sdk/BeaconManager;->b(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/MonitoringListener;

    move-result-object v1

    iget-object v0, v0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    invoke-interface {v1, v0}, Lcom/jaalee/sdk/MonitoringListener;->a(Lcom/jaalee/sdk/Region;)V

    goto :goto_18

    :cond_51
    iget-object v1, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v1}, Lcom/jaalee/sdk/BeaconManager;->b(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/MonitoringListener;

    move-result-object v1

    iget-object v0, v0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    invoke-interface {v1, v0}, Lcom/jaalee/sdk/MonitoringListener;->b(Lcom/jaalee/sdk/Region;)V

    goto :goto_18

    :pswitch_5d
    iget-object v0, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->c(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/jaalee/sdk/b;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v1}, Lcom/jaalee/sdk/BeaconManager;->c(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jaalee/sdk/ErrorListener;->a(Ljava/lang/Integer;)V

    goto :goto_18

    nop

    :pswitch_data_74
    .packed-switch 0x3
        :pswitch_19
        :pswitch_5
        :pswitch_5
        :pswitch_33
        :pswitch_5
        :pswitch_5d
    .end packed-switch
.end method
