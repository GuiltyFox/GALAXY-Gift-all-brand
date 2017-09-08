.class public Lcom/google/android/gms/analytics/internal/zzn;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private volatile a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/Future;
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

.method static synthetic a(Lcom/google/android/gms/analytics/internal/zzn;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "ClientId should be saved from worker thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzaa;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_b
    const-string/jumbo v1, "Storing clientId"

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzn;->a(Ljava/lang/String;Ljava/lang/Object;)V

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

    if-eqz v2, :cond_25

    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_27

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :cond_26
    :goto_26
    return v0

    :catch_27
    move-exception v0

    const-string/jumbo v1, "Failed to close clientId writing stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_25

    :catch_2f
    move-exception v1

    :try_start_30
    const-string/jumbo v3, "Error creating clientId file"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V
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

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    :catch_44
    move-exception v1

    :try_start_45
    const-string/jumbo v3, "Error writing to clientId file"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V
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

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

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

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5f
.end method

.method private f()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->e()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->r()Lcom/google/android/gms/analytics/zzi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzi;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->a(Landroid/content/Context;Ljava/lang/String;)Z

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

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    goto :goto_15
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string/jumbo v1, "ClientId should be loaded from worker thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzaa;->c(Ljava/lang/String;)V

    :try_start_7
    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_7b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_8b
    .catchall {:try_start_7 .. :try_end_d} :catchall_a7

    move-result-object v2

    const/16 v1, 0x24

    :try_start_10
    new-array v3, v1, [B

    const/4 v1, 0x0

    const/16 v4, 0x24

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_3c

    const-string/jumbo v1, "clientId file seems corrupted, deleting it."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_2e} :catch_bc
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2e} :catch_ba
    .catchall {:try_start_10 .. :try_end_2e} :catchall_b8

    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return-object v0

    :catch_34
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33

    :cond_3c
    const/16 v1, 0xe

    if-ge v4, v1, :cond_5d

    :try_start_40
    const-string/jumbo v1, "clientId file is empty, deleting it."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_4f} :catch_bc
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4f} :catch_ba
    .catchall {:try_start_40 .. :try_end_4f} :catchall_b8

    if-eqz v2, :cond_33

    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_33

    :catch_55
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33

    :cond_5d
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V

    const-string/jumbo v3, "Read client id from disk"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_6c} :catch_bc
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6c} :catch_ba
    .catchall {:try_start_5d .. :try_end_6c} :catchall_b8

    if-eqz v2, :cond_71

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_73

    :cond_71
    :goto_71
    move-object v0, v1

    goto :goto_33

    :catch_73
    move-exception v0

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_71

    :catch_7b
    move-exception v1

    move-object v1, v0

    :goto_7d
    if-eqz v1, :cond_33

    :try_start_7f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_33

    :catch_83
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33

    :catch_8b
    move-exception v1

    move-object v2, v0

    :goto_8d
    :try_start_8d
    const-string/jumbo v3, "Error reading client id file, deleting it"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "gaClientId"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_b8

    if-eqz v2, :cond_33

    :try_start_9b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_33

    :catch_9f
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33

    :catchall_a7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_aa
    if-eqz v2, :cond_af

    :try_start_ac
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    :cond_af
    :goto_af
    throw v0

    :catch_b0
    move-exception v1

    const-string/jumbo v2, "Failed to close client id reading stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_af

    :catchall_b8
    move-exception v0

    goto :goto_aa

    :catch_ba
    move-exception v1

    goto :goto_8d

    :catch_bc
    move-exception v1

    move-object v1, v2

    goto :goto_7d
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->D()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->r()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$1;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->b:Ljava/util/concurrent/Future;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->b:Ljava/util/concurrent/Future;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_4a

    if-eqz v0, :cond_39

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_25} :catch_3d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_25} :catch_4d
    .catchall {:try_start_1b .. :try_end_25} :catchall_4a

    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;

    if-nez v0, :cond_2e

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;

    :cond_2e
    const-string/jumbo v0, "Loaded clientId"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->b:Ljava/util/concurrent/Future;

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "ClientId loading or generation was interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;

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

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzn;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_4a

    goto :goto_25
.end method

.method c()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->r()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzn$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzn$2;-><init>(Lcom/google/android/gms/analytics/internal/zzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzn;->b:Ljava/util/concurrent/Future;

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_19

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->b()Ljava/lang/String;

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

.method d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzn;->r()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzn;->f()Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
