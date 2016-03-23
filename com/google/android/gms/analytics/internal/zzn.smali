.class public Lcom/google/android/gms/analytics/internal/zzn;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private volatile zzOu:Ljava/lang/String;

.field private zzPX:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzn;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzg(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "ClientId should be saved from worker thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->zzcy(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_b
    const-string/jumbo v1, "Storing clientId"

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "gaClientId"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_20} :catch_2f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_44
    .catchall {:try_start_b .. :try_end_20} :catchall_59

    const/4 v0, 0x1

    if-eqz v2, :cond_26

    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return v0

    :catch_27
    move-exception v1

    const-string/jumbo v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    :catch_2f
    move-exception v1

    :try_start_30
    const-string/jumbo v3, "Error creating clientId file"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_59

    if-eqz v2, :cond_26

    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_26

    :catch_3c
    move-exception v1

    const-string/jumbo v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    :catch_44
    move-exception v1

    :try_start_45
    const-string/jumbo v3, "Error writing to clientId file"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_59

    if-eqz v2, :cond_26

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_26

    :catch_51
    move-exception v1

    const-string/jumbo v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    :catchall_59
    move-exception v0

    if-eqz v2, :cond_5f

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    throw v0

    :catch_60
    move-exception v1

    const-string/jumbo v2, "Failed to close clientId writing stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5f
.end method

.method private zzjW()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjX()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/zzg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v0, "0"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string/jumbo v1, "Error saving clientId file"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    goto :goto_15
.end method


# virtual methods
.method protected zzab(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string/jumbo v1, "ClientId should be loaded from worker thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->zzcy(Ljava/lang/String;)V

    :try_start_7
    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_7a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_8a
    .catchall {:try_start_7 .. :try_end_d} :catchall_a6

    move-result-object v2

    const/16 v1, 0x24

    :try_start_10
    new-array v3, v1, [B

    const/4 v1, 0x0

    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_3b

    const-string/jumbo v1, "clientId file seems corrupted, deleting it."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zzbd(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_2d} :catch_bb
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_b9
    .catchall {:try_start_10 .. :try_end_2d} :catchall_b7

    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-object v0

    :catch_33
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_32

    :cond_3b
    const/16 v1, 0xe

    if-ge v4, v1, :cond_5c

    :try_start_3f
    const-string/jumbo v1, "clientId file is empty, deleting it."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zzbd(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_4e} :catch_bb
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4e} :catch_b9
    .catchall {:try_start_3f .. :try_end_4e} :catchall_b7

    if-eqz v2, :cond_32

    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_32

    :catch_54
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_32

    :cond_5c
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V

    const-string/jumbo v3, "Read client id from disk"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_6b} :catch_bb
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6b} :catch_b9
    .catchall {:try_start_5c .. :try_end_6b} :catchall_b7

    if-eqz v2, :cond_70

    :try_start_6d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_72

    :cond_70
    :goto_70
    move-object v0, v1

    goto :goto_32

    :catch_72
    move-exception v0

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_70

    :catch_7a
    move-exception v1

    move-object v1, v0

    :goto_7c
    if-eqz v1, :cond_32

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_32

    :catch_82
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_32

    :catch_8a
    move-exception v1

    move-object v2, v0

    :goto_8c
    :try_start_8c
    const-string/jumbo v3, "Error reading client id file, deleting it"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_b7

    if-eqz v2, :cond_32

    :try_start_9a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_32

    :catch_9e
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_32

    :catchall_a6
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_a9
    if-eqz v2, :cond_ae

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    :cond_ae
    :goto_ae
    throw v0

    :catch_af
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ae

    :catchall_b7
    move-exception v0

    goto :goto_a9

    :catch_b9
    move-exception v1

    goto :goto_8c

    :catch_bb
    move-exception v1

    move-object v1, v2

    goto :goto_7c
.end method

.method protected zzir()V
    .registers 1

    return-void
.end method

.method public zzjT()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzje()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$1;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_4a

    if-eqz v0, :cond_39

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_25} :catch_3d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_25} :catch_4d
    .catchall {:try_start_1b .. :try_end_25} :catchall_4a

    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    if-nez v0, :cond_2e

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    :cond_2e
    const-string/jumbo v0, "Loaded clientId"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "ClientId loading or generation was interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    goto :goto_25

    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_4a

    throw v0

    :catch_4d
    move-exception v0

    :try_start_4e
    const-string/jumbo v1, "Failed to load or generate client id"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_4a

    goto :goto_25
.end method

.method zzjU()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzOu:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$2;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->zzPX:Ljava/util/concurrent/Future;

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_19

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjT()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method zzjV()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzn;->zzab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->zzjW()Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method protected zzjX()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
