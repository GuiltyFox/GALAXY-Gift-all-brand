.class public Lcom/google/android/gms/internal/zzra;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzre;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzrf;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzra;)Lcom/google/android/gms/internal/zzrf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/internal/zzqo$zza;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrd;->i:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsg;->a(Lcom/google/android/gms/internal/zzqq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->b()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrd;->b(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->b()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->b()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqo$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    :goto_33
    return-void

    :cond_34
    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzag;

    if-eqz v1, :cond_3e

    check-cast v0, Lcom/google/android/gms/common/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzag;->k()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    :cond_3e
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqo$zza;->a(Lcom/google/android/gms/common/api/Api$zzb;)V

    goto :goto_33
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzra;->b(Lcom/google/android/gms/internal/zzqo$zza;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-object p1

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    new-instance v1, Lcom/google/android/gms/internal/zzra$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzra$1;-><init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/internal/zzrf$zza;)V

    goto :goto_3
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->h:Lcom/google/android/gms/internal/zzrm$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzrm$zza;->a(IZ)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
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

    return-void
.end method

.method public b()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    if-eqz v2, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzrd;->i()Z

    move-result v2

    if-eqz v2, :cond_30

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsf;->a()V

    goto :goto_1e

    :cond_2e
    move v0, v1

    goto :goto_7

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    new-instance v1, Lcom/google/android/gms/internal/zzra$2;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzra$2;-><init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/internal/zzrf$zza;)V

    :cond_11
    return-void
.end method

.method d()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzra;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrd;->i:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsg;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzra;->b()Z

    :cond_13
    return-void
.end method
