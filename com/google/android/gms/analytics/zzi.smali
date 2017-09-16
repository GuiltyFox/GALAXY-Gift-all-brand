.class public final Lcom/google/android/gms/analytics/zzi;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/android/gms/analytics/zzi;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/analytics/zzd;

.field private final e:Lcom/google/android/gms/analytics/zzi$zza;

.field private volatile f:Lcom/google/android/gms/internal/zzms;

.field private g:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->b:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/analytics/zzi$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/zzi$zza;-><init>(Lcom/google/android/gms/analytics/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->e:Lcom/google/android/gms/analytics/zzi$zza;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/analytics/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzi;->d:Lcom/google/android/gms/analytics/zzd;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzi;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/zzi;->a:Lcom/google/android/gms/analytics/zzi;

    if-nez v0, :cond_16

    const-class v1, Lcom/google/android/gms/analytics/zzi;

    monitor-enter v1

    :try_start_a
    sget-object v0, Lcom/google/android/gms/analytics/zzi;->a:Lcom/google/android/gms/analytics/zzi;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/zzi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->a:Lcom/google/android/gms/analytics/zzi;

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    :cond_16
    sget-object v0, Lcom/google/android/gms/analytics/zzi;->a:Lcom/google/android/gms/analytics/zzi;

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/zzi;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/zzi;Lcom/google/android/gms/analytics/zze;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zzi;->b(Lcom/google/android/gms/analytics/zze;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/zzi;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/analytics/zze;)V
    .registers 7

    const-string/jumbo v0, "deliver should be called from worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->f()Z

    move-result v0

    const-string/jumbo v1, "Measurement must be submitted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzk;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/zzk;->a(Lcom/google/android/gms/analytics/zze;)V

    goto :goto_24
.end method

.method public static d()V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzi$zzc;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/zzms;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->f:Lcom/google/android/gms/internal/zzms;

    if-nez v0, :cond_4d

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->f:Lcom/google/android/gms/internal/zzms;

    if-nez v0, :cond_4c

    new-instance v3, Lcom/google/android/gms/internal/zzms;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzms;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzms;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzms;->d(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_69

    const/4 v0, 0x0

    :try_start_25
    iget-object v4, p0, Lcom/google/android/gms/analytics/zzi;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_44

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_42
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_44} :catch_50
    .catchall {:try_start_25 .. :try_end_44} :catchall_69

    :cond_44
    :goto_44
    :try_start_44
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzms;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzms;->b(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gms/analytics/zzi;->f:Lcom/google/android/gms/internal/zzms;

    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_69

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->f:Lcom/google/android/gms/internal/zzms;

    return-object v0

    :catch_50
    move-exception v2

    :try_start_51
    const-string/jumbo v4, "GAv4"

    const-string/jumbo v5, "Error retrieving package info: appName set to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6c

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_65
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catchall_69
    move-exception v0

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_69

    throw v0

    :cond_6c
    :try_start_6c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_69

    goto :goto_65
.end method

.method public a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzi$zzc;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->e:Lcom/google/android/gms/analytics/zzi$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzi$zza;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_13
.end method

.method a(Lcom/google/android/gms/analytics/zze;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->j()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Measurement prototype can\'t be submitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Measurement can only be submitted once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->a()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->g()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzi;->e:Lcom/google/android/gms/analytics/zzi$zza;

    new-instance v2, Lcom/google/android/gms/analytics/zzi$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/analytics/zzi$1;-><init>(Lcom/google/android/gms/analytics/zzi;Lcom/google/android/gms/analytics/zze;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzi$zza;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->e:Lcom/google/android/gms/analytics/zzi$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzi$zza;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzi;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/zzmx;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzmx;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzao;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmx;->a(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmx;->b(I)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmx;->c(I)V

    return-object v1
.end method

.method public c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->b:Landroid/content/Context;

    return-object v0
.end method
