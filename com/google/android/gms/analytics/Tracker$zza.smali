.class Lcom/google/android/gms/analytics/Tracker$zza;
.super Lcom/google/android/gms/analytics/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/analytics/GoogleAnalytics$zza;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/Tracker;

.field private b:Z

.field private c:I

.field private d:J

.field private e:Z

.field private f:J


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    invoke-direct {p0, p2}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->d:J

    return-void
.end method

.method private d()V
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->b:Z

    if-eqz v0, :cond_1a

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->s()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->s()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->b(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    goto :goto_19
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->d:J

    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->d()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->e:Z

    :cond_d
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->b:Z

    if-eqz v0, :cond_72

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Landroid/net/Uri;)V

    :cond_26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "&t"

    const-string/jumbo v2, "screenview"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    const-string/jumbo v3, "&cd"

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->k(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->k(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzal;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "&dr"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-static {p1}, Lcom/google/android/gms/analytics/Tracker;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string/jumbo v2, "&dr"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->a:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;)V

    :cond_72
    return-void

    :cond_73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->b:Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->d()V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->c:I

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->f:J

    :cond_1d
    return-void
.end method

.method public declared-synchronized b()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->e:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Z
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/analytics/Tracker$zza;->f:J

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcom/google/android/gms/analytics/Tracker$zza;->d:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
