.class public final Lcom/google/android/gms/internal/zznq;
.super Ljava/lang/Object;


# static fields
.field private static zzaml:Landroid/content/IntentFilter;

.field private static zzamm:J

.field private static zzamn:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zznq;->zzaml:Landroid/content/IntentFilter;

    const/high16 v0, 0x7fc00000

    sput v0, Lcom/google/android/gms/internal/zznq;->zzamn:F

    return-void
.end method

.method public static zzaw(Landroid/content/Context;)I
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zznq;->zzaml:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3b

    move v0, v3

    :goto_1a
    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_43

    move v1, v2

    :goto_1f
    invoke-static {}, Lcom/google/android/gms/internal/zznx;->zzrV()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    :goto_32
    if-eqz v0, :cond_53

    move v0, v2

    :goto_35
    shl-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_55

    :goto_39
    or-int/2addr v0, v2

    goto :goto_b

    :cond_3b
    const-string/jumbo v1, "plugged"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1a

    :cond_43
    move v1, v3

    goto :goto_1f

    :cond_45
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_32

    :cond_53
    move v0, v3

    goto :goto_35

    :cond_55
    move v2, v3

    goto :goto_39
.end method

.method public static declared-synchronized zzax(Landroid/content/Context;)F
    .registers 7

    const-class v1, Lcom/google/android/gms/internal/zznq;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/google/android/gms/internal/zznq;->zzamm:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    sget v0, Lcom/google/android/gms/internal/zznq;->zzamn:F

    const/high16 v2, 0x7fc00000

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1d

    sget v0, Lcom/google/android/gms/internal/zznq;->zzamn:F
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_49

    :goto_1b
    monitor-exit v1

    return v0

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/zznq;->zzaml:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string/jumbo v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "scale"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    sput v0, Lcom/google/android/gms/internal/zznq;->zzamn:F

    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/zznq;->zzamm:J

    sget v0, Lcom/google/android/gms/internal/zznq;->zzamn:F
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_49

    goto :goto_1b

    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method
