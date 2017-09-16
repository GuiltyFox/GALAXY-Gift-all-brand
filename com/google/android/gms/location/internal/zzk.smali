.class public Lcom/google/android/gms/location/internal/zzk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/location/internal/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/location/internal/zzp",
            "<",
            "Lcom/google/android/gms/location/internal/zzi;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/content/ContentProviderClient;

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/location/internal/zzk$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/location/internal/zzk$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/zzp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/location/internal/zzp",
            "<",
            "Lcom/google/android/gms/location/internal/zzi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/internal/zzk;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzk;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/zzk;->a:Lcom/google/android/gms/location/internal/zzp;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->a:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->a()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->a:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzi;->b(Ljava/lang/String;)Landroid/location/Location;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->a:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->a()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->a:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/zzp;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/internal/zzi;->a(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/location/internal/zzk;->d:Z

    return-void
.end method

.method public b()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2f

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zzc;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->a:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/zzp;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->a(Lcom/google/android/gms/location/zzi;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->a(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_2c

    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzk;->f:Ljava/util/Map;

    monitor-enter v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_2f

    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzk$zza;

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk;->a:Lcom/google/android/gms/location/internal/zzp;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/zzp;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/zzi;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->a(Lcom/google/android/gms/location/zzh;Lcom/google/android/gms/location/internal/zzg;)Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/zzi;->a(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    goto :goto_49

    :catchall_68
    move-exception v0

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_3f .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6b} :catch_2f

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_68

    return-void
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/location/internal/zzk;->d:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zzk;->a(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    :cond_8
    return-void

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
