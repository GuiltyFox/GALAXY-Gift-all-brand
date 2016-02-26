.class public Lcom/androidquery/util/AQUtility;
.super Ljava/lang/Object;
.source "AQUtility.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x400

.field private static cacheDir:Ljava/io/File;

.field private static context:Landroid/content/Context;

.field private static debug:Z

.field private static eh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static handler:Landroid/os/Handler;

.field private static pcacheDir:Ljava/io/File;

.field private static storeExe:Ljava/util/concurrent/ScheduledExecutorService;

.field private static times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 7
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v4, 0x0

    .line 288
    sget v0, Lcom/androidquery/AQuery;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    .line 289
    const-string v1, "apply"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :goto_10
    return-void

    .line 291
    :cond_11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_10
.end method

.method public static cleanCache(Ljava/io/File;JJ)V
    .registers 12
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "triggerSize"    # J
    .param p3, "targetSize"    # J

    .prologue
    .line 591
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 593
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_7

    .line 608
    .end local v1    # "files":[Ljava/io/File;
    :cond_6
    :goto_6
    return-void

    .line 595
    .restart local v1    # "files":[Ljava/io/File;
    :cond_7
    new-instance v3, Lcom/androidquery/util/Common;

    invoke-direct {v3}, Lcom/androidquery/util/Common;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 597
    invoke-static {v1, p1, p2}, Lcom/androidquery/util/AQUtility;->testCleanNeeded([Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 598
    invoke-static {v1, p3, p4}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V

    .line 601
    :cond_18
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v2

    .line 602
    .local v2, "temp":Ljava/io/File;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 603
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_6

    .line 605
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "temp":Ljava/io/File;
    :catch_2e
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static cleanCache([Ljava/io/File;J)V
    .registers 12
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "maxSize"    # J

    .prologue
    .line 636
    const-wide/16 v4, 0x0

    .line 637
    .local v4, "total":J
    const/4 v0, 0x0

    .line 639
    .local v0, "deletes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v3, p0

    if-lt v2, v3, :cond_11

    .line 658
    const-string v3, "deleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 659
    return-void

    .line 641
    :cond_11
    aget-object v1, p0, v2

    .line 643
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 645
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 647
    cmp-long v3, v4, p1

    if-ltz v3, :cond_27

    .line 650
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 651
    add-int/lit8 v0, v0, 0x1

    .line 639
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public static cleanCacheAsync(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    const-wide/32 v2, 0x2dc6c0

    .line 567
    .local v2, "triggerSize":J
    const-wide/32 v0, 0x1e8480

    .line 568
    .local v0, "targetSize":J
    invoke-static {p0, v2, v3, v0, v1}, Lcom/androidquery/util/AQUtility;->cleanCacheAsync(Landroid/content/Context;JJ)V

    .line 569
    return-void
.end method

.method public static cleanCacheAsync(Landroid/content/Context;JJ)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "triggerSize"    # J
    .param p3, "targetSize"    # J

    .prologue
    .line 574
    :try_start_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 576
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v4, Lcom/androidquery/util/Common;

    invoke-direct {v4}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object v3

    .line 578
    .local v3, "task":Lcom/androidquery/util/Common;
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 580
    .local v2, "exe":Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 585
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "exe":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v3    # "task":Lcom/androidquery/util/Common;
    :goto_2d
    return-void

    .line 582
    :catch_2e
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public static close(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 434
    if-eqz p0, :cond_5

    .line 435
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 439
    :cond_5
    :goto_5
    return-void

    .line 437
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V

    .line 326
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "max"    # I
    .param p3, "progress"    # Lcom/androidquery/util/Progress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const-string v2, "content header"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    if-eqz p3, :cond_11

    .line 333
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->reset()V

    .line 334
    invoke-virtual {p3, p2}, Lcom/androidquery/util/Progress;->setBytes(I)V

    .line 337
    :cond_11
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 339
    .local v0, "b":[B
    :cond_15
    :goto_15
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    .line 346
    if-eqz p3, :cond_21

    .line 347
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->done()V

    .line 350
    :cond_21
    return-void

    .line 340
    :cond_22
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 341
    if-eqz p3, :cond_15

    .line 342
    invoke-virtual {p3, v1}, Lcom/androidquery/util/Progress;->increment(I)V

    goto :goto_15
.end method

.method public static debug(Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 96
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_16

    .line 97
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_16
    return-void
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "msg2"    # Ljava/lang/Object;

    .prologue
    .line 106
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_20

    .line 107
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_20
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    sget-boolean v1, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v1, :cond_d

    .line 113
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "trace":Ljava/lang/String;
    const-string v1, "AQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "trace":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public static debugNotify()V
    .registers 2

    .prologue
    .line 86
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 92
    :cond_8
    :goto_8
    return-void

    .line 88
    :cond_9
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_c
    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v1

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method public static debugWait(J)V
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 67
    sget-boolean v1, Lcom/androidquery/util/AQUtility;->debug:Z

    if-nez v1, :cond_5

    .line 80
    :goto_4
    return-void

    .line 69
    :cond_5
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    .line 71
    :cond_10
    sget-object v2, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v2

    .line 74
    :try_start_13
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_1d
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    .line 71
    :goto_18
    :try_start_18
    monitor-exit v2

    goto :goto_4

    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v1

    .line 75
    :catch_1d
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1a

    goto :goto_18
.end method

.method public static dip2pixel(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # F

    .prologue
    .line 662
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 663
    .local v0, "value":I
    return v0
.end method

.method public static ensureUIThread()V
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_10

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 253
    :cond_10
    return-void
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_16

    .line 485
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 486
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 489
    :cond_16
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getCacheDir(Landroid/content/Context;I)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # I

    .prologue
    .line 467
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    .line 469
    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    .line 477
    :goto_9
    return-object v1

    .line 471
    :cond_a
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 472
    .local v0, "cd":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "persistent"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    .line 473
    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 475
    sget-object v1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    goto :goto_9

    .line 477
    .end local v0    # "cd":Ljava/io/File;
    :cond_1f
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    goto :goto_9
.end method

.method public static getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 518
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 525
    :goto_3
    return-object v0

    .line 519
    :cond_4
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 520
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 523
    :cond_12
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/androidquery/util/AQUtility;->makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 525
    .local v0, "file":Ljava/io/File;
    goto :goto_3
.end method

.method private static getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getMD5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "hash":Ljava/lang/String;
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 672
    sget-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 531
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 532
    :cond_c
    const/4 v0, 0x0

    .line 534
    .end local v0    # "file":Ljava/io/File;
    :cond_d
    return-object v0
.end method

.method public static getExistedCacheByUrlSetAccess(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 539
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_9

    .line 540
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->lastAccess(Ljava/io/File;)V

    .line 542
    :cond_9
    return-object v0
.end method

.method private static getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .prologue
    .line 445
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_a

    .line 446
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    .line 449
    :cond_a
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 268
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    .line 271
    :cond_f
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getMD5([B)[B
    .registers 5
    .param p0, "data"    # [B

    .prologue
    .line 310
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 311
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 312
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    .line 318
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_d
    return-object v2

    .line 314
    :catch_e
    move-exception v1

    .line 315
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 318
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private static getMD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->getMD5([B)[B

    move-result-object v1

    .line 299
    .local v1, "data":[B
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 301
    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static getTempDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 611
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 612
    .local v0, "ext":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 613
    .local v1, "tempDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 615
    const/4 v1, 0x0

    .line 617
    .end local v1    # "tempDir":Ljava/io/File;
    :cond_15
    return-object v1
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "report"    # Z
    .param p4, "cls"    # [Ljava/lang/Class;
    .param p5, "cls2"    # [Ljava/lang/Class;
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    :try_start_6
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 183
    :goto_a
    return-object v0

    .line 177
    :catch_b
    move-exception v6

    .line 178
    .local v6, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_13

    .line 179
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 183
    :goto_11
    const/4 v0, 0x0

    goto :goto_a

    .line 181
    :cond_13
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "report"    # Z
    .param p4, "cls"    # [Ljava/lang/Class;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "cls"    # [Ljava/lang/Class;
    .param p4, "cls2"    # [Ljava/lang/Class;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 192
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 220
    :cond_5
    :goto_5
    return-object v1

    .line 194
    :cond_6
    const/4 v0, 0x0

    .line 197
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez p3, :cond_c

    const/4 v2, 0x0

    :try_start_a
    new-array p3, v2, [Ljava/lang/Class;

    .line 198
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_5

    .line 200
    :catch_19
    move-exception v2

    .line 206
    if-eqz p2, :cond_5

    .line 208
    if-nez p4, :cond_31

    .line 209
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 212
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_3c} :catch_3e

    move-result-object v1

    goto :goto_5

    .line 217
    :catch_3e
    move-exception v2

    goto :goto_5
.end method

.method public static isUIThread()Z
    .registers 5

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 258
    .local v2, "uiId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 260
    .local v0, "cId":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_1a

    const/4 v4, 0x1

    :goto_19
    return v4

    :cond_1a
    const/4 v4, 0x0

    goto :goto_19
.end method

.method private static lastAccess(Ljava/io/File;)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 547
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 548
    return-void
.end method

.method private static makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 504
    .local v0, "result":Ljava/io/File;
    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 275
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "run"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 283
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method

.method public static removePost(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 279
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method public static report(Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    if-nez p0, :cond_3

    .line 135
    :cond_2
    :goto_2
    return-void

    .line 125
    :cond_3
    :try_start_3
    const-string v1, "reporting"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    sget-object v1, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 128
    sget-object v1, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_2

    .line 131
    :catch_1a
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alphaValue"    # F

    .prologue
    .line 236
    const/high16 v1, 0x3f800000

    cmpl-float v1, p1, v1

    if-nez v1, :cond_a

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 245
    :goto_9
    return-void

    .line 239
    :cond_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 240
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 242
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_9
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 494
    sput-object p0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 495
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 496
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 498
    :cond_b
    return-void
.end method

.method public static setContext(Landroid/app/Application;)V
    .registers 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 668
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    .line 669
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1
    .param p0, "debug"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/androidquery/util/AQUtility;->debug:Z

    .line 63
    return-void
.end method

.method public static setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 139
    sput-object p0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 140
    return-void
.end method

.method public static store(Ljava/io/File;[B)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    .line 554
    if-eqz p0, :cond_5

    .line 555
    :try_start_2
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->write(Ljava/io/File;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 562
    :cond_5
    :goto_5
    return-void

    .line 557
    :catch_6
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static storeAsync(Ljava/io/File;[BJ)V
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "delay"    # J

    .prologue
    const/4 v5, 0x1

    .line 455
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 457
    .local v0, "exe":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v2, Lcom/androidquery/util/Common;

    invoke-direct {v2}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {v2, v5, v3}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object v1

    .line 458
    .local v1, "task":Lcom/androidquery/util/Common;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 460
    return-void
.end method

.method private static testCleanNeeded([Ljava/io/File;J)Z
    .registers 12
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "triggerSize"    # J

    .prologue
    const/4 v1, 0x0

    .line 622
    const-wide/16 v2, 0x0

    .line 624
    .local v2, "total":J
    array-length v5, p0

    move v4, v1

    :goto_5
    if-lt v4, v5, :cond_8

    .line 631
    :goto_7
    return v1

    .line 624
    :cond_8
    aget-object v0, p0, v4

    .line 625
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 626
    cmp-long v6, v2, p1

    if-lez v6, :cond_15

    .line 627
    const/4 v1, 0x1

    goto :goto_7

    .line 624
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public static time(Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public static timeEnd(Ljava/lang/String;J)J
    .registers 14
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 152
    sget-object v5, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 153
    .local v4, "old":Ljava/lang/Long;
    if-nez v4, :cond_e

    move-wide v0, v6

    .line 163
    :cond_d
    :goto_d
    return-wide v0

    .line 155
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, "now":J
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v2, v8

    .line 159
    .local v0, "diff":J
    cmp-long v5, p1, v6

    if-eqz v5, :cond_20

    cmp-long v5, v0, p1

    if-lez v5, :cond_d

    .line 160
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 393
    const/4 v2, 0x0

    check-cast v2, [B

    .line 395
    .local v2, "result":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 398
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 399
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_13

    move-result-object v2

    .line 404
    :goto_f
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 407
    return-object v2

    .line 400
    :catch_13
    move-exception v1

    .line 401
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static transparent(Landroid/view/View;Z)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transparent"    # Z

    .prologue
    .line 226
    const/high16 v0, 0x3f800000

    .line 227
    .local v0, "alpha":F
    if-eqz p1, :cond_6

    const/high16 v0, 0x3f000000

    .line 229
    :cond_6
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->setAlpha(Landroid/view/View;F)V

    .line 231
    return-void
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "msg2"    # Ljava/lang/Object;

    .prologue
    .line 102
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public static write(Ljava/io/File;[B)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1f

    move-result v2

    if-nez v2, :cond_9

    .line 416
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_15

    .line 423
    :cond_9
    :goto_9
    :try_start_9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 424
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 425
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 430
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_14
    return-void

    .line 417
    :catch_15
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "file create fail"

    invoke-static {v2, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_9

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v0

    .line 427
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_14
.end method
