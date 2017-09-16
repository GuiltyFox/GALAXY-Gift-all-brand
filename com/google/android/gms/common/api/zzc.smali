.class public abstract Lcom/google/android/gms/common/api/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/zzql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzql",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Looper;

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/zzrh;

.field private final h:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final i:Lcom/google/android/gms/internal/zzsb;

.field private final j:Lcom/google/android/gms/common/api/Api$zze;

.field private final k:Lcom/google/android/gms/internal/zzqr;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzqr;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzqr;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->b:Lcom/google/android/gms/common/api/Api;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->c:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->e:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzql;->a(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->d:Lcom/google/android/gms/internal/zzql;

    new-instance v0, Lcom/google/android/gms/internal/zzri;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzri;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->g:Lcom/google/android/gms/internal/zzrh;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->g:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->f:I

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->i:Lcom/google/android/gms/internal/zzsb;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzc;->j:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p5, p0, Lcom/google/android/gms/common/api/zzc;->k:Lcom/google/android/gms/internal/zzqr;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->g:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method

.method private a(ILcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzqo$zza;->i()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->g:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzqo$zza;)V

    return-object p2
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->j:Lcom/google/android/gms/common/api/Api$zze;

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Client is already built, use getClient(). getClientCallbacks() should also be provided with a helper."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->b:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->e()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->b:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->c()Lcom/google/android/gms/common/api/Api$zzh;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/common/internal/zzag;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$zzh;->b()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzf;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->c:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/Api$zzh;->b(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v7

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzag;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzg;)V

    :goto_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_5

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->b:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->b()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzc;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->c:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    goto :goto_33
.end method

.method public a(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 3
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

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->a(ILcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->j:Lcom/google/android/gms/common/api/Api$zze;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->k:Lcom/google/android/gms/internal/zzqr;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Lcom/google/android/gms/common/api/Api$zze;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->j:Lcom/google/android/gms/common/api/Api$zze;

    const-string/jumbo v1, "Client is null, buildApiClient() should be used."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/zzqr;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->k:Lcom/google/android/gms/internal/zzqr;

    const-string/jumbo v1, "ClientCallbacks is null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqr;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/zzql;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzql",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->d:Lcom/google/android/gms/internal/zzql;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/zzc;->f:I

    return v0
.end method

.method public f()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->e:Landroid/os/Looper;

    return-object v0
.end method
