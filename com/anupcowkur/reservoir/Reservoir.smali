.class public Lcom/anupcowkur/reservoir/Reservoir;
.super Ljava/lang/Object;
.source "Reservoir.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupcowkur/reservoir/Reservoir$ClearTask;,
        Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;,
        Lcom/anupcowkur/reservoir/Reservoir$GetTask;,
        Lcom/anupcowkur/reservoir/Reservoir$PutTask;
    }
.end annotation


# static fields
.field private static cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

.field private static cacheDir:Ljava/io/File;

.field private static initialised:Z

.field private static sGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anupcowkur/reservoir/Reservoir;->initialised:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    return-void
.end method

.method static synthetic access$500()Lcom/google/gson/Gson;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->sGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$600()Lcom/anupcowkur/reservoir/SimpleDiskCache;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    return-object v0
.end method

.method static bytesUsed()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 362
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->bytesUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public static clear()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 322
    sget-object v2, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->getMaxSize()J

    move-result-wide v0

    .line 323
    .local v0, "maxSize":J
    sget-object v2, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->destroy()V

    .line 324
    sget-object v2, Lcom/anupcowkur/reservoir/Reservoir;->cacheDir:Ljava/io/File;

    invoke-static {v2, v0, v1}, Lcom/anupcowkur/reservoir/Reservoir;->createCache(Ljava/io/File;J)V

    .line 325
    return-void
.end method

.method public static clearAsync()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 343
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$5;

    invoke-direct {v0}, Lcom/anupcowkur/reservoir/Reservoir$5;-><init>()V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static clearAsync(Lcom/anupcowkur/reservoir/ReservoirClearCallback;)V
    .registers 3
    .param p0, "callback"    # Lcom/anupcowkur/reservoir/ReservoirClearCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 332
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;-><init>(Lcom/anupcowkur/reservoir/ReservoirClearCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anupcowkur/reservoir/Reservoir$ClearTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 333
    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 96
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v0, p0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized createCache(Ljava/io/File;J)V
    .registers 8
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    const-class v2, Lcom/anupcowkur/reservoir/Reservoir;

    monitor-enter v2

    const/4 v0, 0x1

    .line 79
    .local v0, "success":Z
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 82
    :cond_e
    if-nez v0, :cond_1c

    .line 83
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Failed to create cache directory!"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_19

    .line 78
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1

    .line 85
    :cond_1c
    const/4 v1, 0x1

    :try_start_1d
    invoke-static {p0, v1, p1, p2}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->open(Ljava/io/File;IJ)Lcom/anupcowkur/reservoir/SimpleDiskCache;

    move-result-object v1

    sput-object v1, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_19

    .line 86
    monitor-exit v2

    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 275
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v0, p0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->delete(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static deleteAsync(Ljava/lang/String;)Lrx/Observable;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 303
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$4;

    invoke-direct {v0, p0}, Lcom/anupcowkur/reservoir/Reservoir$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAsync(Ljava/lang/String;Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;

    .prologue
    .line 288
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 289
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;-><init>(Ljava/lang/String;Lcom/anupcowkur/reservoir/ReservoirDeleteCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anupcowkur/reservoir/Reservoir$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    return-void
.end method

.method private static failIfNotInitialised()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 64
    sget-boolean v0, Lcom/anupcowkur/reservoir/Reservoir;->initialised:Z

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

.method public static get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 164
    sget-object v2, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v2, p0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->getString(Ljava/lang/String;)Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->getString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "json":Ljava/lang/String;
    sget-object v2, Lcom/anupcowkur/reservoir/Reservoir;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1b

    .line 167
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 168
    :cond_1b
    return-object v1
.end method

.method public static get(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 180
    sget-object v2, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v2, p0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->getString(Ljava/lang/String;)Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;->getString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "json":Ljava/lang/String;
    sget-object v2, Lcom/anupcowkur/reservoir/Reservoir;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1b

    .line 183
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 184
    :cond_1b
    return-object v1
.end method

.method public static getAsync(Ljava/lang/String;Ljava/lang/Class;)Lrx/Observable;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 225
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$2;

    invoke-direct {v0, p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$2;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getAsync(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lrx/Observable;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 250
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$3;

    invoke-direct {v0, p0, p2}, Lcom/anupcowkur/reservoir/Reservoir$3;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getAsync(Ljava/lang/String;Ljava/lang/Class;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
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
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Lcom/anupcowkur/reservoir/ReservoirGetCallback;, "Lcom/anupcowkur/reservoir/ReservoirGetCallback<TT;>;"
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

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

.method public static getAsync(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/anupcowkur/reservoir/ReservoirGetCallback;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/anupcowkur/reservoir/ReservoirGetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "callback":Lcom/anupcowkur/reservoir/ReservoirGetCallback;, "Lcom/anupcowkur/reservoir/ReservoirGetCallback<TT;>;"
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 212
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$GetTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/anupcowkur/reservoir/ReservoirGetCallback;Lcom/anupcowkur/reservoir/Reservoir$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anupcowkur/reservoir/Reservoir$GetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;J)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const-class v1, Lcom/anupcowkur/reservoir/Reservoir;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/anupcowkur/reservoir/Reservoir;->init(Landroid/content/Context;JLcom/google/gson/Gson;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 39
    monitor-exit v1

    return-void

    .line 38
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;JLcom/google/gson/Gson;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxSize"    # J
    .param p3, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    sput-object v0, Lcom/anupcowkur/reservoir/Reservoir;->cacheDir:Ljava/io/File;

    .line 53
    sget-object v0, Lcom/anupcowkur/reservoir/Reservoir;->cacheDir:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/anupcowkur/reservoir/Reservoir;->createCache(Ljava/io/File;J)V

    .line 54
    sput-object p3, Lcom/anupcowkur/reservoir/Reservoir;->sGson:Lcom/google/gson/Gson;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anupcowkur/reservoir/Reservoir;->initialised:Z
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

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 109
    sget-object v1, Lcom/anupcowkur/reservoir/Reservoir;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "json":Ljava/lang/String;
    sget-object v1, Lcom/anupcowkur/reservoir/Reservoir;->cache:Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-virtual {v1, p0, v0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static putAsync(Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

    .line 141
    new-instance v0, Lcom/anupcowkur/reservoir/Reservoir$1;

    invoke-direct {v0, p0, p1}, Lcom/anupcowkur/reservoir/Reservoir$1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static putAsync(Ljava/lang/String;Ljava/lang/Object;Lcom/anupcowkur/reservoir/ReservoirPutCallback;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/anupcowkur/reservoir/ReservoirPutCallback;

    .prologue
    .line 125
    invoke-static {}, Lcom/anupcowkur/reservoir/Reservoir;->failIfNotInitialised()V

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
