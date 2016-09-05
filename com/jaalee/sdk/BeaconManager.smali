.class public Lcom/jaalee/sdk/BeaconManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/jaalee/sdk/c;

.field private final c:Landroid/os/Messenger;

.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/Set;

.field private f:Landroid/os/Messenger;

.field private g:Lcom/jaalee/sdk/RangingListener;

.field private h:Lcom/jaalee/sdk/MonitoringListener;

.field private i:Lcom/jaalee/sdk/ErrorListener;

.field private j:Lcom/jaalee/sdk/ServiceReadyCallback;

.field private k:Lcom/jaalee/sdk/service/r;

.field private l:Lcom/jaalee/sdk/service/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/jaalee/sdk/internal/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    new-instance v0, Lcom/jaalee/sdk/c;

    invoke-direct {v0, p0, v2}, Lcom/jaalee/sdk/c;-><init>(Lcom/jaalee/sdk/BeaconManager;B)V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->b:Lcom/jaalee/sdk/c;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/jaalee/sdk/b;

    invoke-direct {v1, p0, v2}, Lcom/jaalee/sdk/b;-><init>(Lcom/jaalee/sdk/BeaconManager;B)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->c:Landroid/os/Messenger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->e:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/RangingListener;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->g:Lcom/jaalee/sdk/RangingListener;

    return-object v0
.end method

.method static synthetic a(Lcom/jaalee/sdk/BeaconManager;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->f:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/ServiceReadyCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->j:Lcom/jaalee/sdk/ServiceReadyCallback;

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->k:Lcom/jaalee/sdk/service/r;

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/service/r;I)V

    return-void
.end method

.method private a(Lcom/jaalee/sdk/service/r;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_7
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Error while setting scan periods: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_d
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Error while stopping ranging"

    invoke-static {v1, v0}, Lcom/jaalee/sdk/utils/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic b(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/MonitoringListener;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->h:Lcom/jaalee/sdk/MonitoringListener;

    return-object v0
.end method

.method static synthetic b(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->l:Lcom/jaalee/sdk/service/r;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_d
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Error while stopping ranging"

    invoke-static {v1}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ErrorListener;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->i:Lcom/jaalee/sdk/ErrorListener;

    return-object v0
.end method

.method static synthetic d(Lcom/jaalee/sdk/BeaconManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->e()V

    return-void
.end method

.method static synthetic e(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->k:Lcom/jaalee/sdk/service/r;

    return-object v0
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->c:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_a
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v0, "Error while registering error listener"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic f(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->l:Lcom/jaalee/sdk/service/r;

    return-object v0
.end method

.method private f()Z
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->f:Landroid/os/Messenger;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic g(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ServiceReadyCallback;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->j:Lcom/jaalee/sdk/ServiceReadyCallback;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jaalee/sdk/BeaconManager;->c()Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "AndroidManifest.xml does not contain android.permission.BLUETOOTH or android.permission.BLUETOOTH_ADMIN permissions. BeaconService may be also not declared in AndroidManifest.xml."

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    move v0, v1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_e

    :cond_28
    move v0, v1

    goto :goto_e
.end method

.method public c()Z
    .registers 7

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    iget-object v2, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    iget-object v3, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    const-class v5, Lcom/jaalee/sdk/service/BeaconService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_3b

    if-nez v2, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    const/4 v0, 0x1

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public d()V
    .registers 4

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->f()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Not disconnecting because was not connected to service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->c(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->b:Lcom/jaalee/sdk/c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->f:Landroid/os/Messenger;

    goto :goto_c

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_40
    invoke-direct {p0, v0}, Lcom/jaalee/sdk/BeaconManager;->a(Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_18

    :catch_44
    move-exception v0

    const-string/jumbo v2, "Swallowing error while disconnect/stopRanging"

    invoke-static {v2, v0}, Lcom/jaalee/sdk/utils/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_4c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_52
    invoke-direct {p0, v0}, Lcom/jaalee/sdk/BeaconManager;->b(Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_29

    :catch_56
    move-exception v0

    const-string/jumbo v2, "Swallowing error while disconnect/stopMonitoring"

    invoke-static {v2, v0}, Lcom/jaalee/sdk/utils/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method
