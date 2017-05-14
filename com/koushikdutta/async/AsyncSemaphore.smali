.class public Lcom/koushikdutta/async/AsyncSemaphore;
.super Ljava/lang/Object;
.source "AsyncSemaphore.java"


# instance fields
.field a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSemaphore;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/ThreadQueue;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 13
    iput-object p0, v1, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 14
    iget-object v0, v1, Lcom/koushikdutta/async/ThreadQueue;->b:Ljava/util/concurrent/Semaphore;

    .line 16
    :try_start_e
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSemaphore;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_39

    move-result v3

    if-eqz v3, :cond_1c

    .line 36
    iput-object v2, v1, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 38
    :goto_18
    return-void

    .line 26
    :cond_19
    :try_start_19
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_1c
    invoke-virtual {v1}, Lcom/koushikdutta/async/ThreadQueue;->a()Ljava/lang/Runnable;

    move-result-object v3

    .line 23
    if-nez v3, :cond_19

    .line 29
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 31
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSemaphore;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_39

    move-result v3

    if-eqz v3, :cond_1c

    .line 36
    iput-object v2, v1, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    goto :goto_18

    :catchall_39
    move-exception v0

    iput-object v2, v1, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    throw v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Z
    .registers 21

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {v8}, Lcom/koushikdutta/async/ThreadQueue;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v8

    .line 43
    iget-object v9, v8, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 44
    move-object/from16 v0, p0

    iput-object v0, v8, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 45
    iget-object v10, v8, Lcom/koushikdutta/async/ThreadQueue;->b:Ljava/util/concurrent/Semaphore;

    .line 48
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSemaphore;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_4c

    move-result v11

    if-eqz v11, :cond_29

    .line 72
    iput-object v9, v8, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    :goto_28
    return v4

    .line 51
    :cond_29
    :try_start_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 55
    :cond_2d
    :goto_2d
    invoke-virtual {v8}, Lcom/koushikdutta/async/ThreadQueue;->a()Ljava/lang/Runnable;

    move-result-object v11

    .line 56
    if-nez v11, :cond_48

    .line 62
    const/4 v11, 0x1

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 63
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v6, v7, v14}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_4c

    move-result v11

    if-nez v11, :cond_50

    .line 72
    iput-object v9, v8, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    move v4, v5

    goto :goto_28

    .line 59
    :cond_48
    :try_start_48
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_2d

    .line 72
    :catchall_4c
    move-exception v4

    iput-object v9, v8, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    throw v4

    .line 65
    :cond_50
    :try_start_50
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSemaphore;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4c

    move-result v11

    if-eqz v11, :cond_5d

    .line 72
    iput-object v9, v8, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    goto :goto_28

    .line 68
    :cond_5d
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_4c

    move-result-wide v14

    sub-long/2addr v14, v12

    cmp-long v11, v14, v6

    if-ltz v11, :cond_2d

    .line 72
    iput-object v9, v8, Lcom/koushikdutta/async/ThreadQueue;->a:Lcom/koushikdutta/async/AsyncSemaphore;

    move v4, v5

    goto :goto_28
.end method

.method public b()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSemaphore;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    invoke-static {p0}, Lcom/koushikdutta/async/ThreadQueue;->a(Lcom/koushikdutta/async/AsyncSemaphore;)V

    .line 79
    return-void
.end method
