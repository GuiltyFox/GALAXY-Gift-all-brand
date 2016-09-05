.class final Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/schedulers/CachedThreadScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/subscriptions/CompositeSubscription;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p3, :cond_3e

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_a
    iput-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->a:J

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c:Lrx/subscriptions/CompositeSubscription;

    .line 59
    if-eqz p3, :cond_41

    .line 60
    const/4 v0, 0x1

    invoke-static {}, Lrx/schedulers/CachedThreadScheduler;->c()Lrx/internal/util/RxThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 62
    new-instance v1, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;

    invoke-direct {v1, p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;-><init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    iget-wide v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->a:J

    iget-wide v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    .line 71
    :goto_39
    iput-object v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->e:Ljava/util/concurrent/Future;

    .line 73
    return-void

    .line 53
    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_41
    move-object v0, v2

    goto :goto_39
.end method


# virtual methods
.method a()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 77
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->a:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 89
    :goto_a
    return-object v0

    .line 79
    :cond_b
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 80
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 81
    if-eqz v0, :cond_b

    goto :goto_a

    .line 87
    :cond_1e
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-static {}, Lrx/schedulers/CachedThreadScheduler;->d()Lrx/internal/util/RxThreadFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 88
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->a(Lrx/Subscription;)V

    goto :goto_a
.end method

.method a(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .registers 6

    .prologue
    .line 94
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->a:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->a(J)V

    .line 96
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method b()V
    .registers 7

    .prologue
    .line 100
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 101
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c()J

    move-result-wide v2

    .line 103
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 104
    invoke-virtual {v0}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->e()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_34

    .line 105
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 106
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v0}, Lrx/subscriptions/CompositeSubscription;->b(Lrx/Subscription;)V

    goto :goto_12

    .line 115
    :cond_34
    return-void
.end method

.method c()J
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .registers 3

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_a

    .line 124
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 126
    :cond_a
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    .line 127
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    .line 130
    :cond_13
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->b()V

    .line 132
    return-void

    .line 130
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->b()V

    throw v0
.end method
