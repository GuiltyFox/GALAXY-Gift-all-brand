.class public Lcom/anupcowkur/reservoir/Reservoir;
.super Ljava/lang/Object;
.source "Reservoir.java"


# static fields
.field private static a:Lcom/anupcowkur/reservoir/SimpleDiskCache;

.field private static b:Ljava/io/File;

.field private static c:Z

.field private static d:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anupcowkur/reservoir/Reservoir;->c:Z

    return-void
.end method

.method static synthetic a()Lcom/google/gson/Gson;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->d:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;JLcom/google/gson/Gson;)V
    .registers 9

    .prologue
    .line 52
    const-class v1, Lcom/anupcowkur/reservoir/Reservoir;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/Reservoir"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/anupcowkur/reservoir/Reservoir;->b:Ljava/io/File;

    .line 53
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->b:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/anupcowkur/reservoir/Reservoir;->a(Ljava/io/File;J)V

    .line 54
    sput-object p3, Lcom/anupcowkur/reservoir/Reservoir;->d:Lcom/google/gson/Gson;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anupcowkur/reservoir/Reservoir;->c:Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    .line 56
    monitor-exit v1

    return-void

    .line 52
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/io/File;J)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 78
    const-class v1, Lcom/anupcowkur/reservoir/Reservoir;

    monitor-enter v1

    .line 79
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 82
    :cond_e
    if-nez v0, :cond_1c

    .line 83
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to create cache directory!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_19

    .line 78
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 85
    :cond_1c
    const/4 v0, 0x1

    :try_start_1d
    invoke-static {p0, v0, p1, p2}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a(Ljava/io/File;IJ)Lcom/anupcowkur/reservoir/SimpleDiskCache;

    move-result-object v0

    sput-object v0, Lcom/anupcowkur/reservoir/Reservoir;->a:Lcom/anupcowkur/reservoir/SimpleDiskCache;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_19

    .line 86
    monitor-exit v1

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/anupcowkur/reservoir/ReservoirGetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->c()V

    .line 198
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 108
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->c()V

    .line 109
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->d:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/anupcowkur/reservoir/Reservoir;->a:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v1, p0, v0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V
    .registers 5

    .prologue
    .line 125
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->c()V

    .line 126
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$PutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anupcowkur/reservoir/Reservoir$PutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method

.method static synthetic b()Lcom/anupcowkur/reservoir/SimpleDiskCache;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->a:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    return-object v0
.end method

.method private static c()V
    .registers 2

    .prologue
    .line 64
    sget-boolean v0, Lcom/anupcowkur/reservoir/Reservoir;->c:Z

    if-nez v0, :cond_d

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Init hasn\'t been called! You need to initialise Reservoir before you call any other methods."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_d
    return-void
.end method
