.class Lcom/google/android/gms/tagmanager/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzo$zzb;,
        Lcom/google/android/gms/tagmanager/zzo$zza;
    }
.end annotation


# instance fields
.field private zzTA:Lcom/google/android/gms/common/api/Status;

.field private final zzaeK:Landroid/os/Looper;

.field private zzanO:Z

.field private zzbcN:Lcom/google/android/gms/tagmanager/Container;

.field private zzbcO:Lcom/google/android/gms/tagmanager/Container;

.field private zzbcP:Lcom/google/android/gms/tagmanager/zzo$zzb;

.field private zzbcQ:Lcom/google/android/gms/tagmanager/zzo$zza;

.field private zzbcR:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo;->zzTA:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzaeK:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcR:Lcom/google/android/gms/tagmanager/TagManager;

    if-eqz p2, :cond_15

    :goto_7
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzo;->zzaeK:Landroid/os/Looper;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcN:Lcom/google/android/gms/tagmanager/Container;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcQ:Lcom/google/android/gms/tagmanager/zzo$zza;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaeX:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzTA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zza(Lcom/google/android/gms/tagmanager/zzo;)V

    return-void

    :cond_15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_7
.end method

.method private zzEi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcP:Lcom/google/android/gms/tagmanager/zzo$zzb;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcP:Lcom/google/android/gms/tagmanager/zzo$zzb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcO:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/Container;->zzEf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzfg(Ljava/lang/String;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public declared-synchronized getContainer()Lcom/google/android/gms/tagmanager/Container;
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "ContainerHolder is released."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_1c

    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcO:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcO:Lcom/google/android/gms/tagmanager/Container;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcN:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcO:Lcom/google/android/gms/tagmanager/Container;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcN:Lcom/google/android/gms/tagmanager/Container;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1c

    goto :goto_c

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContainerId()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "getContainerId called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcN:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->getContainerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzTA:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public declared-synchronized refresh()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Refreshing a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcQ:Lcom/google/android/gms/tagmanager/zzo$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzo$zza;->zzEj()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_b

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Releasing a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_27

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcR:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzb(Lcom/google/android/gms/tagmanager/zzo;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcN:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcN:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcO:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcQ:Lcom/google/android/gms/tagmanager/zzo$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcP:Lcom/google/android/gms/tagmanager/zzo$zzb;
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_27

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContainerAvailableListener(Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    .prologue
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ContainerHolder is released."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    if-nez p1, :cond_16

    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcP:Lcom/google/android/gms/tagmanager/zzo$zzb;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_b

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_16
    :try_start_16
    new-instance v0, Lcom/google/android/gms/tagmanager/zzo$zzb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzo;->zzaeK:Landroid/os/Looper;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/tagmanager/zzo$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzo;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcP:Lcom/google/android/gms/tagmanager/zzo$zzb;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcO:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzo;->zzEi()V
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_13

    goto :goto_b
.end method

.method zzEh()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcQ:Lcom/google/android/gms/tagmanager/zzo$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzo$zza;->zzEh()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/tagmanager/Container;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_13

    :try_start_9
    const-string/jumbo v0, "Unexpected null container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_5

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcO:Lcom/google/android/gms/tagmanager/Container;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzo;->zzEi()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    goto :goto_5
.end method

.method public declared-synchronized zzfd(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcN:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->zzfd(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method zzff(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzanO:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo;->zzbcQ:Lcom/google/android/gms/tagmanager/zzo$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzo$zza;->zzff(Ljava/lang/String;)V

    goto :goto_a
.end method
