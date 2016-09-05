.class final Lcom/jaalee/sdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/BeaconManager;


# direct methods
.method private constructor <init>(Lcom/jaalee/sdk/BeaconManager;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaalee/sdk/BeaconManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/c;-><init>(Lcom/jaalee/sdk/BeaconManager;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->c(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->d(Lcom/jaalee/sdk/BeaconManager;)V

    :cond_18
    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->e(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    iget-object v1, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v1}, Lcom/jaalee/sdk/BeaconManager;->e(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;I)V

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0, v3}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;)V

    :cond_32
    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->f(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    iget-object v1, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v1}, Lcom/jaalee/sdk/BeaconManager;->f(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;I)V

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0, v3}, Lcom/jaalee/sdk/BeaconManager;->b(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;)V

    :cond_4c
    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->g(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ServiceReadyCallback;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0}, Lcom/jaalee/sdk/BeaconManager;->g(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ServiceReadyCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/jaalee/sdk/ServiceReadyCallback;->a()V

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    invoke-static {v0, v3}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/ServiceReadyCallback;)V

    :cond_62
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service disconnected, crashed? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/c;->a:Lcom/jaalee/sdk/BeaconManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/BeaconManager;Landroid/os/Messenger;)V

    return-void
.end method
