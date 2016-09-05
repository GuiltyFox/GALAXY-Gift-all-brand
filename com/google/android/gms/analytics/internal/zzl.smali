.class Lcom/google/android/gms/analytics/internal/zzl;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private a:Z

.field private final b:Lcom/google/android/gms/analytics/internal/zzj;

.field private final c:Lcom/google/android/gms/analytics/internal/zzah;

.field private final d:Lcom/google/android/gms/analytics/internal/zzag;

.field private final e:Lcom/google/android/gms/analytics/internal/zzi;

.field private f:J

.field private final g:Lcom/google/android/gms/analytics/internal/zzt;

.field private final h:Lcom/google/android/gms/analytics/internal/zzt;

.field private final i:Lcom/google/android/gms/analytics/internal/zzaj;

.field private j:J

.field private k:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->f:J

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->k(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->d:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->m(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->n(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->c:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->o(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zznl;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->i:Lcom/google/android/gms/analytics/internal/zzaj;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$1;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->g:Lcom/google/android/gms/analytics/internal/zzt;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/zzl$2;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->h:Lcom/google/android/gms/analytics/internal/zzt;

    return-void
.end method

.method private J()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;)V

    :cond_14
    :goto_14
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->f(Ljava/lang/String;)V

    goto :goto_14

    :cond_2e
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;)V

    goto :goto_20
.end method

.method private K()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzl$4;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->a(Lcom/google/android/gms/analytics/internal/zzw;)V

    return-void
.end method

.method private L()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->g()I

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_8} :catch_16

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->h:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->a(J)V

    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method private M()Z
    .registers 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->k:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->H()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private N()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->u()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->b()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->c()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->F()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->k()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->j()J

    move-result-wide v2

    const-string/jumbo v1, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->d()V

    goto :goto_a
.end method

.method private O()V
    .registers 9

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->N()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->H()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->d()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_5b

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_4e

    :goto_29
    const-string/jumbo v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->g:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzt;->c()Z

    move-result v2

    if-eqz v2, :cond_68

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->g:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzt;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->g:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->b(J)V

    :goto_4d
    return-void

    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->h()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_29

    :cond_5b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->h()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_29

    :cond_68
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->g:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzt;->a(J)V

    goto :goto_4d
.end method

.method private P()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->Q()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->R()V

    return-void
.end method

.method private Q()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->g:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->g:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->d()V

    return-void
.end method

.method private R()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->u()Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzv;->e()V

    :cond_d
    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzqi;)V
    .registers 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zza;->b(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->l()Lcom/google/android/gms/measurement/zzc;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/zzc;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkc;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkc;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkc;->b(Z)V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/measurement/zzc;->a(Lcom/google/android/gms/measurement/zze;)V

    const-class v1, Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/measurement/zzc;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzkb;

    const-class v2, Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/zzc;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzqh;->a(Ljava/lang/String;)V

    goto :goto_52

    :cond_77
    const-string/jumbo v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzqh;->b(Ljava/lang/String;)V

    goto :goto_52

    :cond_84
    const-string/jumbo v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzqh;->c(Ljava/lang/String;)V

    goto :goto_52

    :cond_91
    const-string/jumbo v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzqh;->d(Ljava/lang/String;)V

    goto :goto_52

    :cond_9e
    const-string/jumbo v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzkc;->c(Ljava/lang/String;)V

    goto :goto_52

    :cond_ab
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/zzkb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_af
    const-string/jumbo v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->b()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/measurement/zzc;->a(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/zzc;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/zzl;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->K()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/zzl;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->L()V

    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public F()J
    .registers 3

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->h()J
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-wide v0

    :goto_c
    return-wide v0

    :catch_d
    move-exception v0

    const-string/jumbo v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method public G()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->s()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->M()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->d:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->d:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto :goto_18

    :cond_2a
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->J:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->d:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->a()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->d:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->e()Z

    move-result v0

    :goto_43
    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->O()V

    goto :goto_18

    :cond_49
    const/4 v0, 0x1

    goto :goto_43

    :cond_4b
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->N()V

    goto :goto_18
.end method

.method public H()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->f:J

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->v()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzan;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->v()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->g()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_a
.end method

.method public I()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzh;Z)J
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->m()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->b()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/analytics/internal/zzj;->a(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/analytics/internal/zzj;->a(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_42

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzh;->a(J)V

    :goto_32
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/zzj;->a(Lcom/google/android/gms/analytics/internal/zzh;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzj;->c()V
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_3c} :catch_49
    .catchall {:try_start_9 .. :try_end_3c} :catchall_68

    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_41} :catch_60

    :goto_41
    return-wide v0

    :cond_42
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :try_start_45
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzh;->a(J)V
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_68

    goto :goto_32

    :catch_49
    move-exception v0

    :try_start_4a
    const-string/jumbo v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_68

    const-wide/16 v0, -0x1

    :try_start_52
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_41

    :catch_58
    move-exception v2

    const-string/jumbo v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    :catch_60
    move-exception v2

    const-string/jumbo v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    :catchall_68
    move-exception v0

    :try_start_69
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_6e} :catch_6f

    :goto_6e
    throw v0

    :catch_6f
    move-exception v1

    const-string/jumbo v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6e
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->E()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->c:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzah;->E()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->E()V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzab;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->k:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->c(Ljava/lang/String;)V

    :goto_13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->b(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->g()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->a(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->c(Ljava/lang/String;)V

    :goto_28
    return-void

    :cond_29
    const-string/jumbo v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13

    :cond_30
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v2, "Service unavailable on package side"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_28

    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->a(Lcom/google/android/gms/analytics/internal/zzab;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_4d} :catch_4e

    goto :goto_28

    :catch_4e
    move-exception v0

    const-string/jumbo v2, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_28
.end method

.method protected a(Lcom/google/android/gms/analytics/internal/zzh;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->m()V

    const-string/jumbo v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->c()Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->F()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/analytics/internal/zzam;->a(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqi;

    move-result-object v0

    const-string/jumbo v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->a(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzqi;)V

    goto :goto_23
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzw;)V
    .registers 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->a(Lcom/google/android/gms/analytics/internal/zzw;J)V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzw;J)V
    .registers 10

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_23

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_23
    const-string/jumbo v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->g()V

    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->i()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->r()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/analytics/internal/zzl$5;-><init>(Lcom/google/android/gms/analytics/internal/zzl;Lcom/google/android/gms/analytics/internal/zzw;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->a(Ljava/lang/Runnable;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    if-eqz p1, :cond_5d

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->a(Ljava/lang/Throwable;)V

    :cond_5d
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->j:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->d:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->c()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_68} :catch_69

    goto :goto_4c

    :catch_69
    move-exception v0

    const-string/jumbo v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzai;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    if-eqz p1, :cond_4c

    invoke-interface {p1, v0}, Lcom/google/android/gms/analytics/internal/zzw;->a(Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/internal/zzam;->a(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqi;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string/jumbo v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;)V

    goto :goto_19

    :cond_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string/jumbo v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/analytics/internal/zzl;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzai;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->c()Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->F()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :cond_60
    const-string/jumbo v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->d(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzh;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->a(Lcom/google/android/gms/analytics/internal/zzh;Lcom/google/android/gms/internal/zzqi;)V

    goto :goto_72
.end method

.method public a(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    return-void
.end method

.method b(Lcom/google/android/gms/analytics/internal/zzab;)Lcom/google/android/gms/analytics/internal/zzab;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-object p1

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->g()Lcom/google/android/gms/analytics/internal/zzai$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai$zza;->a()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string/jumbo v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzab;->a(Lcom/google/android/gms/analytics/internal/zzc;Lcom/google/android/gms/analytics/internal/zzab;Ljava/util/Map;)Lcom/google/android/gms/analytics/internal/zzab;

    move-result-object p1

    goto :goto_a
.end method

.method b()V
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->a:Z

    if-nez v0, :cond_2b

    move v0, v1

    :goto_9
    const-string/jumbo v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->a:Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->J()V

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->r()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzl$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzl$3;-><init>(Lcom/google/android/gms/analytics/internal/zzl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected c()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->b()J

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->I()V

    :cond_1c
    const-string/jumbo v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->I()V

    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    :goto_3e
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->k:Z

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->f()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->g()V

    :cond_57
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    return-void

    :cond_5b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo v0, "Device AnalyticsService not registered! Hits will not be delivered reliably."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->f(Ljava/lang/String;)V

    goto :goto_3e

    :cond_6c
    const-string/jumbo v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method d()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->j:J

    return-void
.end method

.method protected e()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->h()V

    :cond_10
    return-void
.end method

.method public f()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    const-string/jumbo v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected g()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->k:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->x()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->i:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzaj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->i:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->a()V

    const-string/jumbo v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->i:Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->e()V

    goto :goto_4
.end method

.method public h()V
    .registers 7

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->c()Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->b()Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->f()Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->l()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->b(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_4e} :catch_4f

    goto :goto_27

    :catch_4f
    move-exception v0

    const-string/jumbo v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto :goto_27

    :cond_5a
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_5d
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/internal/zzj;->c(J)V
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_66} :catch_7f

    :cond_66
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/zzi;->a(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    goto :goto_27

    :catch_7f
    move-exception v0

    const-string/jumbo v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto :goto_27
.end method

.method protected i()Z
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    const-string/jumbo v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->b()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-nez v0, :cond_34

    move v0, v1

    :goto_21
    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/zzl;->c:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzah;->b()Z

    move-result v3

    if-nez v3, :cond_36

    :goto_29
    if-eqz v0, :cond_38

    if-eqz v1, :cond_38

    const-string/jumbo v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    :goto_33
    return v2

    :cond_34
    move v0, v2

    goto :goto_21

    :cond_36
    move v1, v2

    goto :goto_29

    :cond_38
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->l()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->m()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_54
    :try_start_54
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->b()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_1ff

    :try_start_5c
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzj;->b(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_87

    const-string/jumbo v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_71} :catch_da
    .catchall {:try_start_5c .. :try_end_71} :catchall_1ff

    :try_start_71
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_33

    :catch_7c
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto :goto_33

    :cond_87
    :try_start_87
    const-string/jumbo v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_87 .. :try_end_95} :catch_da
    .catchall {:try_start_87 .. :try_end_95} :catchall_1ff

    :try_start_95
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_99

    const-string/jumbo v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/analytics/internal/zzl;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V
    :try_end_c2
    .catchall {:try_start_95 .. :try_end_c2} :catchall_1ff

    :try_start_c2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c2 .. :try_end_cc} :catch_ce

    goto/16 :goto_33

    :catch_ce
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto/16 :goto_33

    :catch_da
    move-exception v0

    :try_start_db
    const-string/jumbo v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_1ff

    :try_start_e4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_ee
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e4 .. :try_end_ee} :catch_f0

    goto/16 :goto_33

    :catch_f0
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto/16 :goto_33

    :cond_fc
    :try_start_fc
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->b()Z

    move-result v0

    if-eqz v0, :cond_217

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-nez v0, :cond_217

    const-string/jumbo v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;)V

    :goto_114
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_217

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->e:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzi;->a(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v1

    if-nez v1, :cond_152

    move-wide v0, v4

    :goto_12a
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->c:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzah;->b()Z

    move-result v4

    if-eqz v4, :cond_1a6

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->c:Lcom/google/android/gms/analytics/internal/zzah;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/analytics/internal/zzah;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v0

    :goto_13d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_13d

    :cond_152
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_163
    .catchall {:try_start_fc .. :try_end_163} :catchall_1ff

    :try_start_163
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/analytics/internal/zzj;->c(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_177
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_163 .. :try_end_177} :catch_178
    .catchall {:try_start_163 .. :try_end_177} :catchall_1ff

    goto :goto_114

    :catch_178
    move-exception v0

    :try_start_179
    const-string/jumbo v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V
    :try_end_182
    .catchall {:try_start_179 .. :try_end_182} :catchall_1ff

    :try_start_182
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_18c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_182 .. :try_end_18c} :catch_18e

    goto/16 :goto_33

    :catch_18e
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto/16 :goto_33

    :cond_19a
    :try_start_19a
    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_19d
    .catchall {:try_start_19a .. :try_end_19d} :catchall_1ff

    :try_start_19d
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/util/List;)V

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19d .. :try_end_1a5} :catch_1c4
    .catchall {:try_start_19d .. :try_end_1a5} :catchall_1ff

    move-wide v0, v4

    :cond_1a6
    :try_start_1a6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_1a9
    .catchall {:try_start_1a6 .. :try_end_1a9} :catchall_1ff

    move-result v4

    if-eqz v4, :cond_1e6

    :try_start_1ac
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_1b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ac .. :try_end_1b6} :catch_1b8

    goto/16 :goto_33

    :catch_1b8
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto/16 :goto_33

    :catch_1c4
    move-exception v0

    :try_start_1c5
    const-string/jumbo v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V
    :try_end_1ce
    .catchall {:try_start_1c5 .. :try_end_1ce} :catchall_1ff

    :try_start_1ce
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_1d8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ce .. :try_end_1d8} :catch_1da

    goto/16 :goto_33

    :catch_1da
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto/16 :goto_33

    :cond_1e6
    :try_start_1e6
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_1f0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e6 .. :try_end_1f0} :catch_1f3

    move-wide v4, v0

    goto/16 :goto_54

    :catch_1f3
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto/16 :goto_33

    :catchall_1ff
    move-exception v0

    :try_start_200
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->c()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzl;->b:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->d()V
    :try_end_20a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_200 .. :try_end_20a} :catch_20b

    throw v0

    :catch_20b
    move-exception v0

    const-string/jumbo v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzl;->P()V

    goto/16 :goto_33

    :cond_217
    move-wide v0, v4

    goto/16 :goto_12a
.end method

.method public j()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->D()V

    const-string/jumbo v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzl;->c(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->j:J

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->g()V

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->i()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->w()Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzai;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzl;->j:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzl;->d:Lcom/google/android/gms/analytics/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzag;->c()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    const-string/jumbo v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzl;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzl;->G()V

    goto :goto_36
.end method
