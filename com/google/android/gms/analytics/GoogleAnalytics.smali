.class public final Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/zza;


# static fields
.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Z

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/analytics/GoogleAnalytics$zza;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->e:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->k()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public static d()V
    .registers 3

    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->b:Ljava/util/List;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->b:Ljava/util/List;

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1d

    return-void
.end method

.method private p()Lcom/google/android/gms/analytics/internal/zzb;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->i()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/google/android/gms/analytics/internal/zzan;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->l()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/analytics/Tracker;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;Lcom/google/android/gms/analytics/internal/zzad;)V

    if-lez p1, :cond_22

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzak;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/internal/zzak;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/zzak;->a(I)Lcom/google/android/gms/analytics/internal/zzp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzal;

    if-eqz v0, :cond_22

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Lcom/google/android/gms/analytics/internal/zzal;)V

    :cond_22
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/Tracker;->E()V

    monitor-exit p0

    return-object v1

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->c:Z

    return-void
.end method

.method a(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->a(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->f:Z

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->f:Z

    :cond_15
    return-void
.end method

.method a(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->b()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_16

    check-cast v0, Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Landroid/app/Application;)V

    :cond_16
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->g:Z

    return-void
.end method

.method b()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->q()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->g()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->e()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/analytics/Logger;->a(I)V

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->h()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->i()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Z)V

    :cond_22
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->d()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->a()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->e()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/Logger;->a(I)V

    :cond_35
    return-void
.end method

.method b(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->b(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method b(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->c:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->d:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->g:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->h:Z

    return v0
.end method

.method public g()Lcom/google/android/gms/analytics/Logger;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzae;->a()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "getClientId can not be called from the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->p()Lcom/google/android/gms/analytics/internal/zzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzn;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->p()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->c()V

    return-void
.end method

.method j()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->p()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzb;->d()Z

    return-void
.end method
