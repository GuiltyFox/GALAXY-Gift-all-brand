.class public Lcom/jaalee/sdk/BeaconManager;
.super Ljava/lang/Object;


# instance fields
.field private backgroundScanPeriod:Lcom/jaalee/sdk/service/r;

.field private callback:Lcom/jaalee/sdk/ServiceReadyCallback;

.field private final context:Landroid/content/Context;

.field private errorListener:Lcom/jaalee/sdk/ErrorListener;

.field private foregroundScanPeriod:Lcom/jaalee/sdk/service/r;

.field private final incomingMessenger:Landroid/os/Messenger;

.field private final monitoredRegionIds:Ljava/util/Set;

.field private monitoringListener:Lcom/jaalee/sdk/MonitoringListener;

.field private final rangedRegionIds:Ljava/util/Set;

.field private rangingListener:Lcom/jaalee/sdk/RangingListener;

.field private final serviceConnection:Lcom/jaalee/sdk/c;

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/jaalee/sdk/internal/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    new-instance v0, Lcom/jaalee/sdk/c;

    invoke-direct {v0, p0, v2}, Lcom/jaalee/sdk/c;-><init>(Lcom/jaalee/sdk/BeaconManager;B)V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->serviceConnection:Lcom/jaalee/sdk/c;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/jaalee/sdk/b;

    invoke-direct {v1, p0, v2}, Lcom/jaalee/sdk/b;-><init>(Lcom/jaalee/sdk/BeaconManager;B)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$0(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/RangingListener;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->rangingListener:Lcom/jaalee/sdk/RangingListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/MonitoringListener;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->monitoringListener:Lcom/jaalee/sdk/MonitoringListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ServiceReadyCallback;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->callback:Lcom/jaalee/sdk/ServiceReadyCallback;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/ServiceReadyCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->callback:Lcom/jaalee/sdk/ServiceReadyCallback;

    return-void
.end method

.method static synthetic access$2(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/ErrorListener;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->errorListener:Lcom/jaalee/sdk/ErrorListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jaalee/sdk/BeaconManager;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$4(Lcom/jaalee/sdk/BeaconManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->registerErrorListenerInService()V

    return-void
.end method

.method static synthetic access$5(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->foregroundScanPeriod:Lcom/jaalee/sdk/service/r;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jaalee/sdk/BeaconManager;->setScanPeriod(Lcom/jaalee/sdk/service/r;I)V

    return-void
.end method

.method static synthetic access$7(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->foregroundScanPeriod:Lcom/jaalee/sdk/service/r;

    return-void
.end method

.method static synthetic access$8(Lcom/jaalee/sdk/BeaconManager;)Lcom/jaalee/sdk/service/r;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->backgroundScanPeriod:Lcom/jaalee/sdk/service/r;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jaalee/sdk/BeaconManager;Lcom/jaalee/sdk/service/r;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->backgroundScanPeriod:Lcom/jaalee/sdk/service/r;

    return-void
.end method

.method private internalStopMonitoring(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_d
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Error while stopping ranging"

    invoke-static {v1}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;)V

    throw v0
.end method

.method private internalStopRanging(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_d
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Error while stopping ranging"

    invoke-static {v1, v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private isConnectedToService()Z
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private registerErrorListenerInService()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_a
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v0, "Error while registering error listener"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private setScanPeriod(Lcom/jaalee/sdk/service/r;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_7
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

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

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;)V

    goto :goto_c
.end method


# virtual methods
.method public checkPermissionsAndService()Z
    .registers 7

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    iget-object v2, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    iget-object v3, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

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

.method public connect(Lcom/jaalee/sdk/ServiceReadyCallback;)V
    .registers 6

    invoke-virtual {p0}, Lcom/jaalee/sdk/BeaconManager;->checkPermissionsAndService()Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "AndroidManifest.xml does not contain android.permission.BLUETOOTH or android.permission.BLUETOOTH_ADMIN permissions. BeaconService may be also not declared in AndroidManifest.xml."

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/ServiceReadyCallback;

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->callback:Lcom/jaalee/sdk/ServiceReadyCallback;

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Lcom/jaalee/sdk/ServiceReadyCallback;->onServiceReady()V

    :cond_20
    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    const-class v3, Lcom/jaalee/sdk/service/BeaconService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/jaalee/sdk/BeaconManager;->serviceConnection:Lcom/jaalee/sdk/c;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "Could not bind service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->wtf(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public disconnect()V
    .registers 4

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Not disconnecting because was not connected to service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceConnection:Lcom/jaalee/sdk/c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    goto :goto_c

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_40
    invoke-direct {p0, v0}, Lcom/jaalee/sdk/BeaconManager;->internalStopRanging(Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_18

    :catch_44
    move-exception v0

    const-string/jumbo v2, "Swallowing error while disconnect/stopRanging"

    invoke-static {v2, v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_4c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_52
    invoke-direct {p0, v0}, Lcom/jaalee/sdk/BeaconManager;->internalStopMonitoring(Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_29

    :catch_56
    move-exception v0

    const-string/jumbo v2, "Swallowing error while disconnect/stopMonitoring"

    invoke-static {v2, v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public hasBluetooth()Z
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jaalee/sdk/BeaconManager;->checkPermissionsAndService()Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "AndroidManifest.xml does not contain android.permission.BLUETOOTH or android.permission.BLUETOOTH_ADMIN permissions. BeaconService may be also not declared in AndroidManifest.xml."

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->context:Landroid/content/Context;

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

.method public setBackgroundScanPeriod(JJ)V
    .registers 8

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/jaalee/sdk/service/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jaalee/sdk/service/r;-><init>(JJ)V

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/jaalee/sdk/BeaconManager;->setScanPeriod(Lcom/jaalee/sdk/service/r;I)V

    :goto_10
    return-void

    :cond_11
    new-instance v0, Lcom/jaalee/sdk/service/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jaalee/sdk/service/r;-><init>(JJ)V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->backgroundScanPeriod:Lcom/jaalee/sdk/service/r;

    goto :goto_10
.end method

.method public setErrorListener(Lcom/jaalee/sdk/ErrorListener;)V
    .registers 3

    iput-object p1, p0, Lcom/jaalee/sdk/BeaconManager;->errorListener:Lcom/jaalee/sdk/ErrorListener;

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->registerErrorListenerInService()V

    :cond_d
    return-void
.end method

.method public setForegroundScanPeriod(JJ)V
    .registers 8

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/jaalee/sdk/service/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jaalee/sdk/service/r;-><init>(JJ)V

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/jaalee/sdk/BeaconManager;->setScanPeriod(Lcom/jaalee/sdk/service/r;I)V

    :goto_10
    return-void

    :cond_11
    new-instance v0, Lcom/jaalee/sdk/service/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jaalee/sdk/service/r;-><init>(JJ)V

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->foregroundScanPeriod:Lcom/jaalee/sdk/service/r;

    goto :goto_10
.end method

.method public setMonitoringListener(Lcom/jaalee/sdk/MonitoringListener;)V
    .registers 3

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/MonitoringListener;

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->monitoringListener:Lcom/jaalee/sdk/MonitoringListener;

    return-void
.end method

.method public setRangingListener(Lcom/jaalee/sdk/RangingListener;)V
    .registers 3

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/RangingListener;

    iput-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->rangingListener:Lcom/jaalee/sdk/RangingListener;

    return-void
.end method

.method public startMonitoring(Lcom/jaalee/sdk/Region;)V
    .registers 4

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Not starting monitoring, not connected to service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Region already monitored but that\'s OK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    :cond_32
    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->monitoredRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_47
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_c

    :catch_4d
    move-exception v0

    const-string/jumbo v1, "Error while starting monitoring"

    invoke-static {v1, v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startRanging(Lcom/jaalee/sdk/Region;)V
    .registers 4

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Not starting ranging, not connected to service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Region already ranged but that\'s OK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    :cond_32
    iget-object v0, p0, Lcom/jaalee/sdk/BeaconManager;->rangedRegionIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->incomingMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_47
    iget-object v1, p0, Lcom/jaalee/sdk/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_c

    :catch_4d
    move-exception v0

    const-string/jumbo v1, "Error while starting ranging"

    invoke-static {v1, v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public stopMonitoring(Lcom/jaalee/sdk/Region;)V
    .registers 3

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Not stopping monitoring, not connected to service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaalee/sdk/BeaconManager;->internalStopMonitoring(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public stopRanging(Lcom/jaalee/sdk/Region;)V
    .registers 3

    invoke-direct {p0}, Lcom/jaalee/sdk/BeaconManager;->isConnectedToService()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Not stopping ranging, not connected to service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jaalee/sdk/BeaconManager;->internalStopRanging(Ljava/lang/String;)V

    goto :goto_c
.end method
