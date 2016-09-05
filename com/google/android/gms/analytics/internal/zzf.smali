.class public Lcom/google/android/gms/analytics/internal/zzf;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/analytics/internal/zzf;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/zznl;

.field private final e:Lcom/google/android/gms/analytics/internal/zzr;

.field private final f:Lcom/google/android/gms/analytics/internal/zzaf;

.field private final g:Lcom/google/android/gms/measurement/zzg;

.field private final h:Lcom/google/android/gms/analytics/internal/zzb;

.field private final i:Lcom/google/android/gms/analytics/internal/zzv;

.field private final j:Lcom/google/android/gms/analytics/internal/zzan;

.field private final k:Lcom/google/android/gms/analytics/internal/zzai;

.field private final l:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final m:Lcom/google/android/gms/analytics/internal/zzn;

.field private final n:Lcom/google/android/gms/analytics/internal/zza;

.field private final o:Lcom/google/android/gms/analytics/internal/zzk;

.field private final p:Lcom/google/android/gms/analytics/internal/zzu;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzg;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzg;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Application;

    const-string/jumbo v2, "getApplicationContext didn\'t return the application"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzg;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzf;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->h(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzf;->d:Lcom/google/android/gms/internal/zznl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->g(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzf;->e:Lcom/google/android/gms/analytics/internal/zzr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->f(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzaf;->E()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzf;->f:Lcom/google/android/gms/analytics/internal/zzaf;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Google Analytics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/analytics/internal/zze;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is starting up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->d(Ljava/lang/String;)V

    :goto_63
    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->q(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzai;->E()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzf;->k:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->e(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzan;->E()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzf;->j:Lcom/google/android/gms/analytics/internal/zzan;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->l(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->d(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzn;

    move-result-object v2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->c(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zza;

    move-result-object v3

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->b(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzk;

    move-result-object v4

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->a(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzu;

    move-result-object v5

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/internal/zzg;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzf;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/zzg;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->g:Lcom/google/android/gms/measurement/zzg;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->i(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzn;->E()V

    iput-object v2, p0, Lcom/google/android/gms/analytics/internal/zzf;->m:Lcom/google/android/gms/analytics/internal/zzn;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zza;->E()V

    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/zzf;->n:Lcom/google/android/gms/analytics/internal/zza;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzk;->E()V

    iput-object v4, p0, Lcom/google/android/gms/analytics/internal/zzf;->o:Lcom/google/android/gms/analytics/internal/zzk;

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/internal/zzu;->E()V

    iput-object v5, p0, Lcom/google/android/gms/analytics/internal/zzf;->p:Lcom/google/android/gms/analytics/internal/zzu;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/analytics/internal/zzg;->p(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzv;->E()V

    iput-object v2, p0, Lcom/google/android/gms/analytics/internal/zzf;->i:Lcom/google/android/gms/analytics/internal/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzb;->E()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzf;->h:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v2

    const-string/jumbo v3, "Device AnalyticsService version"

    sget-object v4, Lcom/google/android/gms/analytics/internal/zze;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/internal/zzaf;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->l:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzb;->b()V

    return-void

    :cond_db
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Google Analytics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/analytics/internal/zze;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is starting up. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "To enable debug logging on a device run:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  adb shell setprop log.tag.GAv4 DEBUG\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->d(Ljava/lang/String;)V

    goto/16 :goto_63
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;
    .registers 9

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzf;->a:Lcom/google/android/gms/analytics/internal/zzf;

    if-nez v0, :cond_52

    const-class v1, Lcom/google/android/gms/analytics/internal/zzf;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzf;->a:Lcom/google/android/gms/analytics/internal/zzf;

    if-nez v0, :cond_51

    invoke-static {}, Lcom/google/android/gms/internal/zzno;->c()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/analytics/internal/zzg;

    invoke-direct {v5, v4}, Lcom/google/android/gms/analytics/internal/zzg;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/analytics/internal/zzf;

    invoke-direct {v4, v5}, Lcom/google/android/gms/analytics/internal/zzf;-><init>(Lcom/google/android/gms/analytics/internal/zzg;)V

    sput-object v4, Lcom/google/android/gms/analytics/internal/zzf;->a:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->d()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->Q:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_51

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaf;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_a .. :try_end_52} :catchall_55

    :cond_52
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzf;->a:Lcom/google/android/gms/analytics/internal/zzf;

    return-object v0

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method

.method private a(Lcom/google/android/gms/analytics/internal/zzd;)V
    .registers 4

    const-string/jumbo v0, "Analytics service not created/initialized"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzd;->C()Z

    move-result v0

    const-string/jumbo v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzf$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzf$1;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/zznl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->d:Lcom/google/android/gms/internal/zznl;

    return-object v0
.end method

.method public e()Lcom/google/android/gms/analytics/internal/zzr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->e:Lcom/google/android/gms/analytics/internal/zzr;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/analytics/internal/zzaf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->f:Lcom/google/android/gms/analytics/internal/zzaf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->f:Lcom/google/android/gms/analytics/internal/zzaf;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/analytics/internal/zzaf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->f:Lcom/google/android/gms/analytics/internal/zzaf;

    return-object v0
.end method

.method public h()Lcom/google/android/gms/measurement/zzg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->g:Lcom/google/android/gms/measurement/zzg;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->g:Lcom/google/android/gms/measurement/zzg;

    return-object v0
.end method

.method public i()Lcom/google/android/gms/analytics/internal/zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->h:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->h:Lcom/google/android/gms/analytics/internal/zzb;

    return-object v0
.end method

.method public j()Lcom/google/android/gms/analytics/internal/zzv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->i:Lcom/google/android/gms/analytics/internal/zzv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->i:Lcom/google/android/gms/analytics/internal/zzv;

    return-object v0
.end method

.method public k()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->l:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->l:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->c()Z

    move-result v0

    const-string/jumbo v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->l:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public l()Lcom/google/android/gms/analytics/internal/zzan;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->j:Lcom/google/android/gms/analytics/internal/zzan;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->j:Lcom/google/android/gms/analytics/internal/zzan;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/analytics/internal/zzai;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->k:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->k:Lcom/google/android/gms/analytics/internal/zzai;

    return-object v0
.end method

.method public n()Lcom/google/android/gms/analytics/internal/zzai;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->k:Lcom/google/android/gms/analytics/internal/zzai;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->k:Lcom/google/android/gms/analytics/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzai;->C()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->k:Lcom/google/android/gms/analytics/internal/zzai;

    goto :goto_d
.end method

.method public o()Lcom/google/android/gms/analytics/internal/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->n:Lcom/google/android/gms/analytics/internal/zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->n:Lcom/google/android/gms/analytics/internal/zza;

    return-object v0
.end method

.method public p()Lcom/google/android/gms/analytics/internal/zzn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->m:Lcom/google/android/gms/analytics/internal/zzn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->m:Lcom/google/android/gms/analytics/internal/zzn;

    return-object v0
.end method

.method public q()Lcom/google/android/gms/analytics/internal/zzk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->o:Lcom/google/android/gms/analytics/internal/zzk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Lcom/google/android/gms/analytics/internal/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->o:Lcom/google/android/gms/analytics/internal/zzk;

    return-object v0
.end method

.method public r()Lcom/google/android/gms/analytics/internal/zzu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf;->p:Lcom/google/android/gms/analytics/internal/zzu;

    return-object v0
.end method

.method public s()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/measurement/zzg;->d()V

    return-void
.end method
