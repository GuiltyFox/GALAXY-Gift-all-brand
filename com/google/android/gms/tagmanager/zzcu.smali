.class Lcom/google/android/gms/tagmanager/zzcu;
.super Lcom/google/android/gms/tagmanager/zzct;


# static fields
.field private static final zzbfI:Ljava/lang/Object;

.field private static zzbfT:Lcom/google/android/gms/tagmanager/zzcu;


# instance fields
.field private connected:Z

.field private handler:Landroid/os/Handler;

.field private zzbfJ:Landroid/content/Context;

.field private zzbfK:Lcom/google/android/gms/tagmanager/zzau;

.field private volatile zzbfL:Lcom/google/android/gms/tagmanager/zzas;

.field private zzbfM:I

.field private zzbfN:Z

.field private zzbfO:Z

.field private zzbfP:Z

.field private zzbfQ:Lcom/google/android/gms/tagmanager/zzav;

.field private zzbfR:Lcom/google/android/gms/tagmanager/zzbl;

.field private zzbfS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfI:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfN:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfO:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->connected:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfP:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcu$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcu$1;-><init>(Lcom/google/android/gms/tagmanager/zzcu;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfQ:Lcom/google/android/gms/tagmanager/zzav;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfS:Z

    return-void
.end method

.method public static zzFs()Lcom/google/android/gms/tagmanager/zzcu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfT:Lcom/google/android/gms/tagmanager/zzcu;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcu;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcu;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfT:Lcom/google/android/gms/tagmanager/zzcu;

    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfT:Lcom/google/android/gms/tagmanager/zzcu;

    return-object v0
.end method

.method private zzFt()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbl;-><init>(Lcom/google/android/gms/tagmanager/zzct;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfR:Lcom/google/android/gms/tagmanager/zzbl;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfR:Lcom/google/android/gms/tagmanager/zzbl;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfJ:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbl;->zzba(Landroid/content/Context;)V

    return-void
.end method

.method private zzFu()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfJ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/tagmanager/zzcu$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/zzcu$2;-><init>(Lcom/google/android/gms/tagmanager/zzcu;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/zzcu;->zzbfI:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_27
    return-void
.end method

.method static synthetic zzFw()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfI:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcu;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->connected:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzcu;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzcu;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfS:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzcu;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzcu;)Lcom/google/android/gms/tagmanager/zzau;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfK:Lcom/google/android/gms/tagmanager/zzau;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfO:Z

    if-nez v0, :cond_10

    const-string/jumbo v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfN:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1b

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfL:Lcom/google/android/gms/tagmanager/zzas;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcu$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzcu$3;-><init>(Lcom/google/android/gms/tagmanager/zzcu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzas;->zzj(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    goto :goto_e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzFv()Lcom/google/android/gms/tagmanager/zzau;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfK:Lcom/google/android/gms/tagmanager/zzau;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfJ:Landroid/content/Context;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :try_start_15
    new-instance v0, Lcom/google/android/gms/tagmanager/zzby;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfQ:Lcom/google/android/gms/tagmanager/zzav;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfJ:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzby;-><init>(Lcom/google/android/gms/tagmanager/zzav;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfK:Lcom/google/android/gms/tagmanager/zzau;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcu;->zzFu()V

    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfO:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfN:Z

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcu;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfN:Z

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfR:Lcom/google/android/gms/tagmanager/zzbl;

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfP:Z

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcu;->zzFt()V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfK:Lcom/google/android/gms/tagmanager/zzau;
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_12

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzas;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfJ:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfJ:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfL:Lcom/google/android/gms/tagmanager/zzas;

    if-nez v0, :cond_5

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfL:Lcom/google/android/gms/tagmanager/zzas;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    goto :goto_5

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzaw(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfS:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzcu;->zzd(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzd(ZZ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfS:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->connected:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_57

    if-ne v0, p2, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    if-nez p1, :cond_f

    if-nez p2, :cond_1b

    :cond_f
    :try_start_f
    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcu;->zzbfI:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1b
    if-nez p1, :cond_34

    if-eqz p2, :cond_34

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/zzcu;->zzbfI:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_44

    if-nez p2, :cond_5a

    :cond_44
    const-string/jumbo v0, "initiated."

    :goto_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfS:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzcu;->connected:Z
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_57

    goto :goto_9

    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5a
    :try_start_5a
    const-string/jumbo v0, "terminated."
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_57

    goto :goto_47
.end method

.method public declared-synchronized zziO()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfS:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->connected:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->zzbfM:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcu;->zzbfI:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/zzcu;->zzbfI:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
