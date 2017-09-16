.class Lcom/google/android/gms/location/internal/zzk$zzc;
.super Lcom/google/android/gms/location/zzi$zza;


# instance fields
.field private a:Landroid/os/Handler;


# virtual methods
.method public declared-synchronized a(Landroid/location/Location;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zzc;->a:Landroid/os/Handler;

    if-nez v0, :cond_10

    const-string/jumbo v0, "LocationClientHelper"

    const-string/jumbo v1, "Received a location in client after calling removeLocationUpdates."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk$zzc;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    goto :goto_e

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
