.class public Lcom/koushikdutta/async/SelectorWrapper;
.super Ljava/lang/Object;
.source "SelectorWrapper.java"


# instance fields
.field a:Z

.field b:Ljava/util/concurrent/Semaphore;

.field private c:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>(Ljava/nio/channels/Selector;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->b:Ljava/util/concurrent/Semaphore;

    .line 22
    iput-object p1, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/nio/channels/Selector;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public a(J)V
    .registers 6

    .prologue
    const v2, 0x7fffffff

    .line 35
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 41
    return-void

    .line 39
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    throw v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    return v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/SelectorWrapper;->a(J)V

    .line 31
    return-void
.end method

.method public d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 53
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-nez v2, :cond_12

    .line 62
    :goto_a
    iget-object v2, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 64
    if-eqz v0, :cond_14

    .line 97
    :goto_11
    return-void

    :cond_12
    move v0, v1

    .line 61
    goto :goto_a

    .line 68
    :cond_14
    monitor-enter p0

    .line 70
    :try_start_15
    iget-boolean v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->a:Z

    if-eqz v0, :cond_1e

    .line 72
    monitor-exit p0

    goto :goto_11

    .line 75
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v0

    .line 74
    :cond_1e
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->a:Z

    .line 75
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1b

    .line 80
    :goto_22
    const/16 v0, 0x64

    if-ge v1, v0, :cond_44

    .line 82
    :try_start_26
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->b:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2f} :catch_3b
    .catchall {:try_start_26 .. :try_end_2f} :catchall_4d

    move-result v0

    if-eqz v0, :cond_3c

    .line 93
    monitor-enter p0

    .line 94
    const/4 v0, 0x0

    :try_start_34
    iput-boolean v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->a:Z

    .line 95
    monitor-exit p0

    goto :goto_11

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_38

    throw v0

    .line 87
    :catch_3b
    move-exception v0

    .line 89
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->c:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_4d

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 93
    :cond_44
    monitor-enter p0

    .line 94
    const/4 v0, 0x0

    :try_start_46
    iput-boolean v0, p0, Lcom/koushikdutta/async/SelectorWrapper;->a:Z

    .line 95
    monitor-exit p0

    goto :goto_11

    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    throw v0

    .line 93
    :catchall_4d
    move-exception v0

    monitor-enter p0

    .line 94
    const/4 v1, 0x0

    :try_start_50
    iput-boolean v1, p0, Lcom/koushikdutta/async/SelectorWrapper;->a:Z

    .line 95
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    throw v0

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method
