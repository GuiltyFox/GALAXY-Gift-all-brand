.class public final Lcom/google/android/gms/internal/zzno;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zznl;


# static fields
.field private static zzamk:Lcom/google/android/gms/internal/zzno;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zzrM()Lcom/google/android/gms/internal/zznl;
    .registers 2

    const-class v1, Lcom/google/android/gms/internal/zzno;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzno;->zzamk:Lcom/google/android/gms/internal/zzno;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzno;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzno;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzno;->zzamk:Lcom/google/android/gms/internal/zzno;

    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/zzno;->zzamk:Lcom/google/android/gms/internal/zzno;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public nanoTime()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
