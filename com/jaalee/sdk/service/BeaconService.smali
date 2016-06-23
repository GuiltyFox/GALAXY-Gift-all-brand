.class public Lcom/jaalee/sdk/service/BeaconService;
.super Landroid/app/Service;


# static fields
.field static final a:J

.field private static final b:Landroid/content/Intent;

.field private static final c:Landroid/content/Intent;


# instance fields
.field private final d:Landroid/os/Messenger;

.field private final e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private i:Landroid/bluetooth/BluetoothAdapter;

.field private j:Landroid/app/AlarmManager;

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;

.field private n:Z

.field private o:Landroid/os/Messenger;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Landroid/app/PendingIntent;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Landroid/app/PendingIntent;

.field private u:Lcom/jaalee/sdk/service/r;

.field private v:Lcom/jaalee/sdk/service/r;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/jaalee/sdk/service/BeaconService;->a:J

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "startScan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jaalee/sdk/service/BeaconService;->b:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "afterScan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jaalee/sdk/service/BeaconService;->c:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/jaalee/sdk/service/h;

    invoke-direct {v1, p0, v2}, Lcom/jaalee/sdk/service/h;-><init>(Lcom/jaalee/sdk/service/BeaconService;B)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->d:Landroid/os/Messenger;

    new-instance v0, Lcom/jaalee/sdk/service/j;

    invoke-direct {v0, p0, v2}, Lcom/jaalee/sdk/service/j;-><init>(Lcom/jaalee/sdk/service/BeaconService;B)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->h:Ljava/util/List;

    new-instance v0, Lcom/jaalee/sdk/service/r;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/jaalee/sdk/service/r;-><init>(JJ)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->u:Lcom/jaalee/sdk/service/r;

    new-instance v0, Lcom/jaalee/sdk/service/r;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/jaalee/sdk/service/r;-><init>(JJ)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->v:Lcom/jaalee/sdk/service/r;

    return-void
.end method

.method private a()V
    .registers 4

    iget-boolean v0, p0, Lcom/jaalee/sdk/service/BeaconService;->n:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "Scanning already in progress, not starting one more"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "Not starting scanning, no monitored on ranged regions"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    goto :goto_a

    :cond_22
    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->i:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "Bluetooth is disabled, not starting scanning"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->d(Ljava/lang/String;)V

    goto :goto_a

    :cond_31
    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->i:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaalee/sdk/service/BeaconService;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string/jumbo v0, "Bluetooth adapter did not start le scan"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->wtf(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/jaalee/sdk/service/BeaconService;->o:Landroid/os/Messenger;

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_53
    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->o:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_a

    :catch_59
    move-exception v0

    const-string/jumbo v1, "Error while reporting message, funny right?"

    invoke-static {v1, v0}, Lcom/jaalee/sdk/utils/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jaalee/sdk/service/BeaconService;->n:Z

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->d()V

    iget-object v2, p0, Lcom/jaalee/sdk/service/BeaconService;->t:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->u:Lcom/jaalee/sdk/service/r;

    iget-wide v0, v0, Lcom/jaalee/sdk/service/r;->a:J

    :goto_75
    invoke-direct {p0, v2, v0, v1}, Lcom/jaalee/sdk/service/BeaconService;->a(Landroid/app/PendingIntent;J)V

    goto :goto_a

    :cond_79
    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->v:Lcom/jaalee/sdk/service/r;

    iget-wide v0, v0, Lcom/jaalee/sdk/service/r;->a:J

    goto :goto_75
.end method

.method private a(Landroid/app/PendingIntent;J)V
    .registers 8

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->j:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 1

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->c()V

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/BeaconService;Landroid/app/PendingIntent;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/jaalee/sdk/service/BeaconService;->a(Landroid/app/PendingIntent;J)V

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/BeaconService;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/BeaconService;->o:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/BeaconService;Lcom/jaalee/sdk/service/n;)V
    .registers 4

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Start ranging: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/jaalee/sdk/service/n;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->i:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v1, "Bluetooth adapter cannot be null"

    invoke-static {v0, v1}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/BeaconService;Lcom/jaalee/sdk/service/r;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/BeaconService;->u:Lcom/jaalee/sdk/service/r;

    return-void
.end method

.method static synthetic a(Lcom/jaalee/sdk/service/BeaconService;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stopping ranging: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->c()V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->d()V

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->b()V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3d
    return-void

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/n;

    iget-object v0, v0, Lcom/jaalee/sdk/service/n;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1c
.end method

.method static synthetic b(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private b()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/jaalee/sdk/service/BeaconService;->n:Z

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->i:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/jaalee/sdk/service/BeaconService;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "BluetoothAdapter throws unexpected exception"

    invoke-static {v1, v0}, Lcom/jaalee/sdk/utils/L;->wtf(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a
.end method

.method static synthetic b(Lcom/jaalee/sdk/service/BeaconService;Lcom/jaalee/sdk/service/r;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/BeaconService;->v:Lcom/jaalee/sdk/service/r;

    return-void
.end method

.method static synthetic c(Lcom/jaalee/sdk/service/BeaconService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "It must be executed on service\'s handlerThread"

    invoke-static {v0, v1}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic d(Lcom/jaalee/sdk/service/BeaconService;)Lcom/jaalee/sdk/service/r;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->u:Lcom/jaalee/sdk/service/r;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaalee/sdk/service/BeaconService;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->j:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/jaalee/sdk/service/BeaconService;->t:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->j:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/jaalee/sdk/service/BeaconService;->r:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic e(Lcom/jaalee/sdk/service/BeaconService;)Lcom/jaalee/sdk/service/r;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->v:Lcom/jaalee/sdk/service/r;

    return-object v0
.end method

.method static synthetic f(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 1

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->b()V

    return-void
.end method

.method static synthetic i(Lcom/jaalee/sdk/service/BeaconService;)J
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->u:Lcom/jaalee/sdk/service/r;

    iget-wide v0, v0, Lcom/jaalee/sdk/service/r;->b:J

    :goto_c
    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->v:Lcom/jaalee/sdk/service/r;

    iget-wide v0, v0, Lcom/jaalee/sdk/service/r;->b:J

    goto :goto_c
.end method

.method static synthetic j(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 1

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->a()V

    return-void
.end method

.method static synthetic k(Lcom/jaalee/sdk/service/BeaconService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->r:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic l(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 1

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->d()V

    return-void
.end method

.method static synthetic m(Lcom/jaalee/sdk/service/BeaconService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->m:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/jaalee/sdk/service/k;)V
    .registers 4

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Starting monitoring: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/jaalee/sdk/service/k;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->i:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v1, "Bluetooth adapter cannot be null"

    invoke-static {v0, v1}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stopping monitoring: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->c()V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->d()V

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->b()V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3d
    return-void

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/k;

    iget-object v0, v0, Lcom/jaalee/sdk/service/k;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1c
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->d:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "Creating service"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/jaalee/sdk/service/BeaconService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->j:Landroid/app/AlarmManager;

    const-string/jumbo v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/jaalee/sdk/service/BeaconService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->i:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/jaalee/sdk/service/g;

    invoke-direct {v0, p0, v3}, Lcom/jaalee/sdk/service/g;-><init>(Lcom/jaalee/sdk/service/BeaconService;B)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->m:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BeaconServiceThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->k:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaalee/sdk/service/BeaconService;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->l:Landroid/os/Handler;

    new-instance v0, Lcom/jaalee/sdk/service/a;

    invoke-direct {v0, p0}, Lcom/jaalee/sdk/service/a;-><init>(Lcom/jaalee/sdk/service/BeaconService;)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->p:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/jaalee/sdk/service/e;

    invoke-direct {v0, p0}, Lcom/jaalee/sdk/service/e;-><init>(Lcom/jaalee/sdk/service/BeaconService;)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->q:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/jaalee/sdk/service/d;

    invoke-direct {v0, p0}, Lcom/jaalee/sdk/service/d;-><init>(Lcom/jaalee/sdk/service/BeaconService;)V

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->s:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->p:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/jaalee/sdk/service/BeaconService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->q:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "startScan"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/jaalee/sdk/service/BeaconService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->s:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "afterScan"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/jaalee/sdk/service/BeaconService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaalee/sdk/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jaalee/sdk/service/BeaconService;->c:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->t:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/jaalee/sdk/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jaalee/sdk/service/BeaconService;->b:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->r:Landroid/app/PendingIntent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const-string/jumbo v0, "Service destroyed"

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/jaalee/sdk/service/BeaconService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/jaalee/sdk/service/BeaconService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/jaalee/sdk/service/BeaconService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->i:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->b()V

    :cond_1c
    invoke-direct {p0}, Lcom/jaalee/sdk/service/BeaconService;->d()V

    iget-object v0, p0, Lcom/jaalee/sdk/service/BeaconService;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
