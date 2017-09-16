.class public Lcom/google/android/gms/location/internal/zzl;
.super Lcom/google/android/gms/location/internal/zzb;


# instance fields
.field private final f:Lcom/google/android/gms/location/internal/zzk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzf;)V
    .registers 9

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/location/internal/zzb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/location/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzl;->e:Lcom/google/android/gms/location/internal/zzp;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/internal/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/zzp;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->f:Lcom/google/android/gms/location/internal/zzk;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzl;->f:Lcom/google/android/gms/location/internal/zzk;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzl;->b()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_23

    move-result v0

    if-eqz v0, :cond_13

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->f:Lcom/google/android/gms/location/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk;->b()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->f:Lcom/google/android/gms/location/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk;->c()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_18
    .catchall {:try_start_9 .. :try_end_13} :catchall_23

    :cond_13
    :goto_13
    :try_start_13
    invoke-super {p0}, Lcom/google/android/gms/location/internal/zzb;->a()V

    monitor-exit v1

    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v2, "LocationClientImpl"

    const-string/jumbo v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public k()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->f:Lcom/google/android/gms/location/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
