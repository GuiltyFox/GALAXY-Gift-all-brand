.class public Lcom/google/android/gms/internal/zzrh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field private static final b:Lcom/google/android/gms/common/api/Status;

.field private static final f:Ljava/lang/Object;

.field private static g:Lcom/google/android/gms/internal/zzrh;


# instance fields
.field private c:J

.field private d:J

.field private e:J

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;",
            "Lcom/google/android/gms/internal/zzrh$zza",
            "<*>;>;"
        }
    .end annotation
.end field

.field private n:Lcom/google/android/gms/internal/zzqw;

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->a()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzrh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->c:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->d:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrh;->j:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->n:Lcom/google/android/gms/internal/zzqw;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->o:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->p:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrh;->h:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GoogleApiHandler"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrh;->i:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrh;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzrh;->j:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/google/android/gms/internal/zzrh;
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzrh;->g:Lcom/google/android/gms/internal/zzrh;

    const-string/jumbo v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzrh;->g:Lcom/google/android/gms/internal/zzrh;

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrh;
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzrh;->g:Lcom/google/android/gms/internal/zzrh;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzrh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->g:Lcom/google/android/gms/internal/zzrh;

    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/zzrh;->g:Lcom/google/android/gms/internal/zzrh;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->i()I

    move-result v3

    if-ne v3, p1, :cond_b

    :goto_1d
    if-eqz v0, :cond_72

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh;->i:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/internal/zzrh$zza;Lcom/google/android/gms/common/api/Status;)V

    :goto_71
    return-void

    :cond_72
    const-string/jumbo v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Could not find API instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " while trying to fail enqueued calls."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71

    :cond_9b
    move-object v0, v1

    goto :goto_1d
.end method

.method private a(Lcom/google/android/gms/internal/zzrv;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->c:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->d()Lcom/google/android/gms/internal/zzql;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    if-nez v0, :cond_23

    iget-object v0, p1, Lcom/google/android/gms/internal/zzrv;->c:Lcom/google/android/gms/common/api/zzc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh;->b(Lcom/google/android/gms/common/api/zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->c:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->d()Lcom/google/android/gms/internal/zzql;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->h()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/internal/zzrv;->b:I

    if-eq v1, v2, :cond_3e

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->a:Lcom/google/android/gms/internal/zzqj;

    sget-object v2, Lcom/google/android/gms/internal/zzrh;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqj;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->b()V

    :goto_3d
    return-void

    :cond_3e
    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->a:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/internal/zzqj;)V

    goto :goto_3d
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzrh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->c:J

    return-wide v0
.end method

.method private b(Lcom/google/android/gms/common/api/zzc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->d()Lcom/google/android/gms/internal/zzql;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzrh$zza;-><init>(Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/common/api/zzc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->h()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->p:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/internal/zzrh$zza;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzrh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/internal/zzqw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->n:Lcom/google/android/gms/internal/zzqw;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/common/api/Status;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzrh;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/zzrh;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->o:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/zzrh;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzrh;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->i:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->e()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/internal/zzrh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->e:J

    return-wide v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/zzrh;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrh;->j:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/zzrh;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzqn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzqn;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->d()Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->g()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqn;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqn;->c()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqn;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_39
.end method

.method public a(Lcom/google/android/gms/common/api/zzc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzqo$zza;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqj$zzb;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzqj$zzb;-><init>(ILcom/google/android/gms/internal/zzqo$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    const/4 v3, 0x3

    new-instance v4, Lcom/google/android/gms/internal/zzrv;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrh;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v4, v0, v5, p1}, Lcom/google/android/gms/internal/zzrv;-><init>(Lcom/google/android/gms/internal/zzqj;ILcom/google/android/gms/common/api/zzc;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzqn;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqn;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzql;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzrh$zza;

    if-nez v1, :cond_29

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqn;->a(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_28
    return-void

    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh$zza;->g()Z

    move-result v3

    if-eqz v3, :cond_35

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqn;->a(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh$zza;->f()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh$zza;->f()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqn;->a(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_43
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/internal/zzqn;)V

    goto :goto_8
.end method

.method public a(Lcom/google/android/gms/internal/zzqw;)V
    .registers 5

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->n:Lcom/google/android/gms/internal/zzqw;

    if-eq v0, p1, :cond_17

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrh;->n:Lcom/google/android/gms/internal/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->o:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqw;->e()Lcom/google/android/gms/common/util/zza;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method a(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->i:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->i:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method b(Lcom/google/android/gms/internal/zzqw;)V
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->n:Lcom/google/android/gms/internal/zzqw;

    if-ne v0, p1, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->n:Lcom/google/android/gms/internal/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->q:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzql;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->b()V

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_98

    const-string/jumbo v0, "GoogleApiManager"

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown message id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_24
    return v0

    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzqn;)V

    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    goto :goto_24

    :pswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh;->b(Lcom/google/android/gms/common/api/zzc;)V

    goto :goto_2c

    :pswitch_36
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;->g()V

    goto :goto_2c

    :pswitch_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzrv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrv;)V

    goto :goto_2c

    :pswitch_42
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzrh;->a(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2c

    :pswitch_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->b(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_2c

    :pswitch_64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrh;->d()V

    goto :goto_2c

    :pswitch_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->c(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_2c

    :pswitch_80
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->d(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_2c

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_25
        :pswitch_36
        :pswitch_3a
        :pswitch_42
        :pswitch_2e
        :pswitch_3a
        :pswitch_4c
        :pswitch_64
        :pswitch_68
        :pswitch_80
        :pswitch_3a
    .end packed-switch
.end method
