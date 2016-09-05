.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static a:Ljava/lang/Object;

.field static b:Lcom/google/android/gms/internal/zzse;

.field static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const-class v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzam;->a(Landroid/content/Context;Ljava/lang/Class;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/analytics/AnalyticsReceiver;->c:Ljava/lang/Boolean;

    goto :goto_d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string/jumbo v0, "Device AnalyticsReceiver got"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1c
    const-string/jumbo v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p1}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_39
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v0, :cond_47

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_65

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const-string/jumbo v0, "Local AnalyticsReceiver got"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_47
    :try_start_47
    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->b:Lcom/google/android/gms/internal/zzse;

    if-nez v0, :cond_5c

    new-instance v0, Lcom/google/android/gms/internal/zzse;

    const/4 v2, 0x1

    const-string/jumbo v4, "Analytics WakeLock"

    invoke-direct {v0, p1, v2, v4}, Lcom/google/android/gms/internal/zzse;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->b:Lcom/google/android/gms/internal/zzse;

    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->b:Lcom/google/android/gms/internal/zzse;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzse;->a(Z)V

    :cond_5c
    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->b:Lcom/google/android/gms/internal/zzse;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzse;->a(J)V
    :try_end_63
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_63} :catch_68
    .catchall {:try_start_47 .. :try_end_63} :catchall_65

    :goto_63
    :try_start_63
    monitor-exit v3

    goto :goto_3f

    :catchall_65
    move-exception v0

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_65

    throw v0

    :catch_68
    move-exception v0

    :try_start_69
    const-string/jumbo v0, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->e(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_65

    goto :goto_63
.end method
