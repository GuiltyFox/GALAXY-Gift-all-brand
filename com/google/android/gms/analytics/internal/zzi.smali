.class public Lcom/google/android/gms/analytics/internal/zzi;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/zzi$zza;

.field private b:Lcom/google/android/gms/analytics/internal/zzac;

.field private final c:Lcom/google/android/gms/analytics/internal/zzt;

.field private d:Lcom/google/android/gms/analytics/internal/zzaj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->d()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zznl;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->d:Lcom/google/android/gms/analytics/internal/zzaj;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzi$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->a:Lcom/google/android/gms/analytics/internal/zzi$zza;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzi$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzi$1;-><init>(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->c:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->a:Lcom/google/android/gms/analytics/internal/zzi$zza;

    return-object v0
.end method

.method private a(Landroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    const-string/jumbo v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->g()V

    :cond_13
    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/internal/zzac;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->m()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->t()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->g()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/zzi;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/zzi;Lcom/google/android/gms/analytics/internal/zzac;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzi;->a(Lcom/google/android/gms/analytics/internal/zzac;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/zzi;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->f()V

    return-void
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->d:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->a()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->c:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->a(J)V

    return-void
.end method

.method private f()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->b()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const-string/jumbo v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzi;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->d()V

    goto :goto_9
.end method

.method private g()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->t()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->e()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_10

    move v0, v6

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->f()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->o()Ljava/lang/String;

    move-result-object v4

    :goto_1e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_22
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzac;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->e()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_30} :catch_3b

    const/4 v0, 0x1

    goto :goto_f

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :catch_3b
    move-exception v0

    const-string/jumbo v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzi;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_f
.end method

.method public b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public c()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->D()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->a:Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi$zza;->a()Lcom/google/android/gms/analytics/internal/zzac;

    move-result-object v1

    if-eqz v1, :cond_1a

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->e()V

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public d()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->D()V

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->a()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzi;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi;->a:Lcom/google/android/gms/analytics/internal/zzi$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_13} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_13} :catch_1e

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi;->b:Lcom/google/android/gms/analytics/internal/zzac;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzi;->g()V

    :cond_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_13

    :catch_20
    move-exception v0

    goto :goto_13
.end method
