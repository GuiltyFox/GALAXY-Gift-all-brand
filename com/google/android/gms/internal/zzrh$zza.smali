.class Lcom/google/android/gms/internal/zzrh$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/internal/zzqs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/internal/zzqs;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzrh;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzqj;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/Api$zze;

.field private final d:Lcom/google/android/gms/common/api/Api$zzb;

.field private final e:Lcom/google/android/gms/internal/zzql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzql",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/zzqv;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzqn;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzrr$zzb",
            "<*>;",
            "Lcom/google/android/gms/internal/zzrx;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private j:Z

.field private k:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/common/api/zzc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->a()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->b()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->c()Lcom/google/android/gms/internal/zzqr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzqr;->a(Lcom/google/android/gms/internal/zzqs;)V

    :goto_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/zzag;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    check-cast v0, Lcom/google/android/gms/common/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzag;->k()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->d:Lcom/google/android/gms/common/api/Api$zzb;

    :goto_40
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->d()Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    new-instance v0, Lcom/google/android/gms/internal/zzqv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->f:Lcom/google/android/gms/internal/zzqv;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->i:I

    return-void

    :cond_54
    invoke-static {p1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p0}, Lcom/google/android/gms/common/api/zzc;->a(Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    goto :goto_30

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->d:Lcom/google/android/gms/common/api/Api$zzb;

    goto :goto_40
.end method

.method private a(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqj;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrh$zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->o()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrh$zza;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzqn;->a(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/zzqj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->f:Lcom/google/android/gms/internal/zzqv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrh$zza;->h()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqj;->a(Lcom/google/android/gms/internal/zzqv;Z)V

    :try_start_9
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzqj;->a(Lcom/google/android/gms/internal/zzrh$zza;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->a()V

    goto :goto_c
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzrh$zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->j()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzrh$zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->l()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/zzrh$zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->n()V

    return-void
.end method

.method private j()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->j:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->o()V

    :cond_7
    return-void
.end method

.method private k()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->j:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->j:Z

    :cond_20
    return-void
.end method

.method private l()V
    .registers 4

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->j:Z

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->k()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->g(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrh;->f(Lcom/google/android/gms/internal/zzrh;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2e

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->a()V

    :cond_2d
    return-void

    :cond_2e
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_25
.end method

.method private m()V
    .registers 5

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrh;->h(Lcom/google/android/gms/internal/zzrh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->f:Lcom/google/android/gms/internal/zzqv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqv;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->m()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->a()V

    goto :goto_1b
.end method

.method private o()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->b()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->e()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->i(Lcom/google/android/gms/internal/zzrh;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrh;->g(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrh;->f(Lcom/google/android/gms/internal/zzrh;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->i(Lcom/google/android/gms/internal/zzrh;)I

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrh;->i(Lcom/google/android/gms/internal/zzrh;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_10

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->d()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_56
    new-instance v0, Lcom/google/android/gms/internal/zzrh$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzrh$zzb;-><init>(Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzql;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/Api$zze;->a(Lcom/google/android/gms/common/internal/zze$zzf;)V

    goto :goto_10
.end method


# virtual methods
.method public a()V
    .registers 2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->b(Lcom/google/android/gms/internal/zzqj;)V

    goto :goto_0

    :cond_1c
    return-void
.end method

.method public a(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrh$zza;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->f:Lcom/google/android/gms/internal/zzqv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqv;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrh;->b(Lcom/google/android/gms/internal/zzrh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrh;->c(Lcom/google/android/gms/internal/zzrh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;I)I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrh$zza;->e()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->k()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrx;

    :try_start_21
    iget-object v0, v0, Lcom/google/android/gms/internal/zzrx;->a:Lcom/google/android/gms/internal/zzrw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->d:Lcom/google/android/gms/common/api/Api$zzb;

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzrw;->a(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_2d
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_15

    :catch_2e
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->a()V

    goto :goto_15

    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrh$zza;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->m()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrh$zza;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrh$zza;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/google/android/gms/internal/zzrh;->e()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrh$zza;->k:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1a

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/zzrh;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->d(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->e(Lcom/google/android/gms/internal/zzrh;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->d(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->i:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzqw;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_1a

    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    iget v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->i:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_67

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->j:Z

    :cond_67
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->j:Z

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrh;->b(Lcom/google/android/gms/internal/zzrh;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1a

    :cond_88
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh$zza;->e:Lcom/google/android/gms/internal/zzql;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzql;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_1a
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzqj;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrh$zza;->b(Lcom/google/android/gms/internal/zzqj;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->m()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_e

    :cond_26
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh$zza;->o()V

    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/internal/zzqn;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzrh;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->f:Lcom/google/android/gms/internal/zzqv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqv;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrr$zzb;

    new-instance v2, Lcom/google/android/gms/internal/zzqj$zze;

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzqj$zze;-><init>(Lcom/google/android/gms/internal/zzrr$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/internal/zzqj;)V

    goto :goto_14

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->a()V

    return-void
.end method

.method public c()Lcom/google/android/gms/common/api/Api$zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzrr$zzb",
            "<*>;",
            "Lcom/google/android/gms/internal/zzrx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->h:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method f()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method g()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->b()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->c:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->d()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrh$zza;->i:I

    return v0
.end method
