.class final Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final q:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:I

.field d:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Lrx/subscriptions/CompositeSubscription;

.field volatile g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile i:Z

.field j:Z

.field k:Z

.field final l:Ljava/lang/Object;

.field volatile m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<*>;"
        }
    .end annotation
.end field

.field n:J

.field o:J

.field p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 178
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    sput-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->q:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 181
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a:Lrx/Subscriber;

    .line 182
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b:Z

    .line 183
    iput p3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->c:I

    .line 184
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->h:Lrx/internal/operators/NotificationLite;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->l:Ljava/lang/Object;

    .line 186
    sget-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->q:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 187
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_28

    const-wide v0, 0x7fffffffffffffffL

    :goto_24
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(J)V

    .line 188
    return-void

    .line 187
    :cond_28
    int-to-long v0, p3

    goto :goto_24
.end method

.method private j()V
    .registers 4

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 240
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a:Lrx/Subscriber;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    .line 244
    :goto_1a
    return-void

    .line 242
    :cond_1b
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method


# virtual methods
.method protected a(Ljava/lang/Object;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 474
    .line 477
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_25
    .catchall {:try_start_2 .. :try_end_7} :catchall_46

    .line 488
    :goto_7
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p2, v4

    if-eqz v0, :cond_16

    .line 489
    :try_start_10
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->a(I)J

    .line 491
    :cond_16
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b(J)V

    .line 493
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_46

    .line 495
    :try_start_1c
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->k:Z

    if-nez v0, :cond_48

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    .line 497
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_50

    .line 516
    :goto_24
    return-void

    .line 478
    :catch_25
    move-exception v0

    .line 479
    :try_start_26
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b:Z

    if-nez v3, :cond_3e

    .line 480
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_46

    .line 482
    :try_start_2d
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b()V

    .line 483
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_34

    goto :goto_24

    .line 502
    :catchall_34
    move-exception v0

    move v1, v2

    :goto_36
    if-nez v1, :cond_3d

    .line 503
    monitor-enter p0

    .line 504
    const/4 v1, 0x0

    :try_start_3a
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    .line 505
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_53

    :cond_3d
    throw v0

    .line 486
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    goto :goto_7

    .line 502
    :catchall_46
    move-exception v0

    goto :goto_36

    .line 499
    :cond_48
    const/4 v0, 0x0

    :try_start_49
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->k:Z

    .line 500
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_50

    .line 515
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->h()V

    goto :goto_24

    .line 500
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_34

    .line 505
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i:Z

    .line 250
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    .line 251
    return-void
.end method

.method public a(Lrx/Observable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_3

    .line 235
    :goto_2
    return-void

    .line 227
    :cond_3
    instance-of v0, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_11

    .line 228
    check-cast p1, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 230
    :cond_11
    new-instance v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->n:J

    invoke-direct {v0, p0, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;J)V

    .line 231
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 232
    invoke-virtual {p1, v0}, Lrx/Observable;->a(Lrx/Subscriber;)Lrx/Subscription;

    .line 233
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    goto :goto_2
.end method

.method a(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->f()Lrx/subscriptions/CompositeSubscription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->a(Lrx/Subscription;)V

    .line 260
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_a
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 262
    array-length v2, v0

    .line 263
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 264
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    aput-object p1, v3, v2

    .line 266
    iput-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method a(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    .line 314
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 316
    cmp-long v4, v0, v6

    if-eqz v4, :cond_22

    .line 317
    monitor-enter p0

    .line 319
    :try_start_f
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 320
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    if-nez v4, :cond_21

    cmp-long v4, v0, v6

    if-eqz v4, :cond_21

    .line 321
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    move v2, v3

    .line 324
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_28

    .line 326
    :cond_22
    if-eqz v2, :cond_2b

    .line 327
    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V

    .line 331
    :goto_27
    return-void

    .line 324
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 329
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    goto :goto_27
.end method

.method protected a(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;J)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    .line 365
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_25
    .catchall {:try_start_2 .. :try_end_7} :catchall_46

    .line 376
    :goto_7
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_16

    .line 377
    :try_start_10
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->a(I)J

    .line 379
    :cond_16
    const-wide/16 v4, 0x1

    invoke-virtual {p1, v4, v5}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b(J)V

    .line 381
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_46

    .line 383
    :try_start_1c
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->k:Z

    if-nez v0, :cond_48

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    .line 385
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_50

    .line 404
    :goto_24
    return-void

    .line 366
    :catch_25
    move-exception v0

    .line 367
    :try_start_26
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b:Z

    if-nez v3, :cond_3e

    .line 368
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_46

    .line 370
    :try_start_2d
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b()V

    .line 371
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_34

    goto :goto_24

    .line 390
    :catchall_34
    move-exception v0

    move v1, v2

    :goto_36
    if-nez v1, :cond_3d

    .line 391
    monitor-enter p0

    .line 392
    const/4 v1, 0x0

    :try_start_3a
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    .line 393
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_53

    :cond_3d
    throw v0

    .line 374
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    goto :goto_7

    .line 390
    :catchall_46
    move-exception v0

    goto :goto_36

    .line 387
    :cond_48
    const/4 v0, 0x0

    :try_start_49
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->k:Z

    .line 388
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_50

    .line 403
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->h()V

    goto :goto_24

    .line 388
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_34

    .line 393
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public synthetic a_(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 142
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Lrx/Observable;)V

    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 407
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(J)V

    .line 408
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    .line 422
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 424
    cmp-long v4, v0, v6

    if-eqz v4, :cond_22

    .line 425
    monitor-enter p0

    .line 427
    :try_start_f
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 428
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    if-nez v4, :cond_21

    cmp-long v4, v0, v6

    if-eqz v4, :cond_21

    .line 429
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    move v2, v3

    .line 432
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_28

    .line 434
    :cond_22
    if-eqz v2, :cond_2b

    .line 435
    invoke-virtual {p0, p1, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Ljava/lang/Object;J)V

    .line 439
    :goto_27
    return-void

    .line 432
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 437
    :cond_2b
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->c(Ljava/lang/Object;)V

    goto :goto_27
.end method

.method b(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 270
    iget-object v1, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->d:Lrx/internal/util/RxRingBuffer;

    .line 271
    if-eqz v1, :cond_8

    .line 272
    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->d()V

    .line 276
    :cond_8
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->f:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p1}, Lrx/subscriptions/CompositeSubscription;->b(Lrx/Subscription;)V

    .line 277
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    :try_start_10
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 279
    array-length v4, v3

    .line 280
    const/4 v1, -0x1

    .line 282
    :goto_14
    if-ge v0, v4, :cond_46

    .line 283
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 288
    :goto_1e
    if-gez v0, :cond_25

    .line 289
    monitor-exit v2

    .line 300
    :goto_21
    return-void

    .line 282
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 291
    :cond_25
    const/4 v1, 0x1

    if-ne v4, v1, :cond_31

    .line 292
    sget-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->q:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 293
    monitor-exit v2

    goto :goto_21

    .line 299
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v0

    .line 295
    :cond_31
    add-int/lit8 v1, v4, -0x1

    :try_start_33
    new-array v1, v1, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 296
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 299
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_2e

    goto :goto_21

    :cond_46
    move v0, v1

    goto :goto_1e
.end method

.method protected b(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->d:Lrx/internal/util/RxRingBuffer;

    .line 340
    if-nez v0, :cond_d

    .line 341
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->a()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    .line 342
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a(Lrx/Subscription;)V

    .line 343
    iput-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->d:Lrx/internal/util/RxRingBuffer;

    .line 346
    :cond_d
    :try_start_d
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->h:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p2}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/util/RxRingBuffer;->a(Ljava/lang/Object;)V
    :try_end_16
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_d .. :try_end_16} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_16} :catch_22

    .line 358
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    .line 359
    :cond_19
    :goto_19
    return-void

    .line 347
    :catch_1a
    move-exception v0

    .line 348
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b()V

    .line 349
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 351
    :catch_22
    move-exception v0

    .line 352
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->c()Z

    move-result v1

    if-nez v1, :cond_19

    .line 353
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b()V

    .line 354
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e:Ljava/util/Queue;

    .line 448
    if-nez v0, :cond_14

    .line 449
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->c:I

    .line 450
    const v0, 0x7fffffff

    if-ne v1, v0, :cond_2a

    .line 451
    new-instance v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->c:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    .line 463
    :goto_12
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e:Ljava/util/Queue;

    .line 465
    :cond_14
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 466
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b()V

    .line 467
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Ljava/lang/Throwable;)V

    .line 471
    :goto_29
    return-void

    .line 453
    :cond_2a
    invoke-static {v1}, Lrx/internal/util/unsafe/Pow2;->b(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 454
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->a()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 455
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    goto :goto_12

    .line 457
    :cond_3c
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    goto :goto_12

    .line 460
    :cond_42
    new-instance v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;-><init>(I)V

    goto :goto_12

    .line 470
    :cond_48
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    goto :goto_29
.end method

.method e()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 192
    if-nez v0, :cond_11

    .line 193
    monitor-enter p0

    .line 194
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 195
    if-nez v0, :cond_10

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 197
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 199
    :cond_10
    monitor-exit p0

    .line 201
    :cond_11
    return-object v0

    .line 199
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method f()Lrx/subscriptions/CompositeSubscription;
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->f:Lrx/subscriptions/CompositeSubscription;

    .line 205
    if-nez v0, :cond_1b

    .line 206
    const/4 v0, 0x0

    .line 207
    monitor-enter p0

    .line 208
    :try_start_6
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->f:Lrx/subscriptions/CompositeSubscription;

    .line 209
    if-nez v1, :cond_1f

    .line 210
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 211
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->f:Lrx/subscriptions/CompositeSubscription;

    .line 212
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    move v1, v2

    .line 214
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1c

    .line 215
    if-eqz v1, :cond_1b

    .line 216
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Lrx/Subscription;)V

    .line 219
    :cond_1b
    return-object v0

    .line 214
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    move v2, v0

    move-object v0, v1

    move v1, v2

    goto :goto_15
.end method

.method g()V
    .registers 2

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    if-eqz v0, :cond_a

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->k:Z

    .line 522
    monitor-exit p0

    .line 527
    :goto_9
    return-void

    .line 524
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    .line 525
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 526
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->h()V

    goto :goto_9

    .line 525
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method h()V
    .registers 22

    .prologue
    .line 532
    const/4 v3, 0x0

    .line 534
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a:Lrx/Subscriber;

    .line 537
    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 762
    :cond_b
    :goto_b
    return-void

    .line 541
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e:Ljava/util/Queue;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v4

    .line 544
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_83

    const/4 v2, 0x1

    move v13, v2

    .line 547
    :goto_23
    const/4 v2, 0x0

    .line 550
    if-eqz v9, :cond_1ef

    .line 552
    :cond_26
    const/4 v7, 0x0

    .line 553
    const/4 v6, 0x0

    .line 554
    :goto_28
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-lez v8, :cond_3a

    .line 555
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 557
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i()Z

    move-result v8

    if-nez v8, :cond_b

    .line 561
    if-nez v6, :cond_86

    .line 582
    :cond_3a
    if-lez v7, :cond_43

    .line 583
    if-eqz v13, :cond_b6

    .line 584
    const-wide v4, 0x7fffffffffffffffL

    .line 589
    :cond_43
    :goto_43
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-eqz v7, :cond_1ef

    if-nez v6, :cond_26

    move-wide v8, v4

    move v5, v2

    .line 601
    :goto_4d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i:Z

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e:Ljava/util/Queue;

    .line 606
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->m:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 607
    array-length v0, v15

    move/from16 v16, v0

    .line 611
    if-eqz v2, :cond_c4

    if-eqz v4, :cond_66

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c4

    :cond_66
    if-nez v16, :cond_c4

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 613
    if-eqz v2, :cond_74

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 614
    :cond_74
    invoke-virtual {v14}, Lrx/Subscriber;->i_()V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_78

    goto :goto_b

    .line 756
    :catchall_78
    move-exception v2

    if-nez v3, :cond_82

    .line 757
    monitor-enter p0

    .line 758
    const/4 v3, 0x0

    :try_start_7d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    .line 759
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_1e5

    :cond_82
    throw v2

    .line 544
    :cond_83
    const/4 v2, 0x0

    move v13, v2

    goto :goto_23

    .line 564
    :cond_86
    :try_start_86
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->h:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8, v6}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_78

    move-result-object v8

    .line 567
    :try_start_8e
    invoke-virtual {v14, v8}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_9b
    .catchall {:try_start_8e .. :try_end_91} :catchall_78

    .line 578
    :goto_91
    add-int/lit8 v8, v2, 0x1

    .line 579
    add-int/lit8 v2, v7, 0x1

    .line 580
    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    move v7, v2

    move v2, v8

    .line 581
    goto :goto_28

    .line 568
    :catch_9b
    move-exception v8

    .line 569
    :try_start_9c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b:Z

    if-nez v10, :cond_ae

    .line 570
    invoke-static {v8}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 571
    const/4 v3, 0x1

    .line 572
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b()V

    .line 573
    invoke-virtual {v14, v8}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 576
    :cond_ae
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e()Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_91

    .line 586
    :cond_b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4, v7}, Lrx/internal/operators/OperatorMerge$MergeProducer;->a(I)J

    move-result-wide v4

    goto :goto_43

    .line 616
    :cond_bf
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j()V

    goto/16 :goto_b

    .line 622
    :cond_c4
    const/4 v4, 0x0

    .line 623
    if-lez v16, :cond_1ec

    .line 625
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->o:J

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->p:I

    .line 630
    move/from16 v0, v16

    if-le v0, v2, :cond_db

    aget-object v6, v15, v2

    iget-wide v6, v6, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_fb

    .line 631
    :cond_db
    move/from16 v0, v16

    if-gt v0, v2, :cond_e0

    .line 632
    const/4 v2, 0x0

    .line 636
    :cond_e0
    const/4 v6, 0x0

    :goto_e1
    move/from16 v0, v16

    if-ge v6, v0, :cond_ef

    .line 637
    aget-object v7, v15, v2

    iget-wide v0, v7, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b:J

    move-wide/from16 v18, v0

    cmp-long v7, v18, v10

    if-nez v7, :cond_191

    .line 649
    :cond_ef
    move-object/from16 v0, p0

    iput v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->p:I

    .line 650
    aget-object v6, v15, v2

    iget-wide v6, v6, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->o:J

    .line 655
    :cond_fb
    const/4 v6, 0x0

    move v12, v2

    move v7, v5

    move/from16 v20, v4

    move-wide v4, v8

    move v9, v6

    move/from16 v6, v20

    :goto_104
    move/from16 v0, v16

    if-ge v9, v0, :cond_1e8

    .line 657
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i()Z

    move-result v2

    if-nez v2, :cond_b

    .line 662
    aget-object v17, v15, v12

    .line 664
    const/4 v2, 0x0

    .line 666
    :cond_111
    const/4 v8, 0x0

    .line 667
    :goto_112
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_124

    .line 669
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i()Z

    move-result v10

    if-nez v10, :cond_b

    .line 673
    move-object/from16 v0, v17

    iget-object v10, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->d:Lrx/internal/util/RxRingBuffer;

    .line 674
    if-nez v10, :cond_19c

    .line 698
    :cond_124
    if-lez v8, :cond_136

    .line 699
    if-nez v13, :cond_1c9

    .line 700
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4, v8}, Lrx/internal/operators/OperatorMerge$MergeProducer;->a(I)J

    move-result-wide v4

    .line 704
    :goto_130
    int-to-long v10, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b(J)V

    .line 707
    :cond_136
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_13e

    if-nez v2, :cond_111

    .line 711
    :cond_13e
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->c:Z

    .line 712
    move-object/from16 v0, v17

    iget-object v8, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->d:Lrx/internal/util/RxRingBuffer;

    .line 713
    if-eqz v2, :cond_160

    if-eqz v8, :cond_150

    invoke-virtual {v8}, Lrx/internal/util/RxRingBuffer;->e()Z

    move-result v2

    if-eqz v2, :cond_160

    .line 714
    :cond_150
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i()Z

    move-result v2

    if-nez v2, :cond_b

    .line 719
    add-int/lit8 v7, v7, 0x1

    .line 720
    const/4 v6, 0x1

    .line 723
    :cond_160
    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-nez v2, :cond_1d0

    move v2, v6

    move v4, v7

    .line 734
    :goto_168
    move-object/from16 v0, p0

    iput v12, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->p:I

    .line 735
    aget-object v5, v15, v12

    iget-wide v6, v5, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->o:J

    .line 738
    :goto_174
    if-lez v4, :cond_17c

    .line 739
    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(J)V

    .line 742
    :cond_17c
    if-nez v2, :cond_5

    .line 746
    monitor-enter p0
    :try_end_17f
    .catchall {:try_start_9c .. :try_end_17f} :catchall_78

    .line 747
    :try_start_17f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->k:Z

    if-nez v2, :cond_1dd

    .line 748
    const/4 v3, 0x1

    .line 749
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j:Z

    .line 750
    monitor-exit p0

    goto/16 :goto_b

    .line 753
    :catchall_18e
    move-exception v2

    monitor-exit p0
    :try_end_190
    .catchall {:try_start_17f .. :try_end_190} :catchall_18e

    :try_start_190
    throw v2

    .line 641
    :cond_191
    add-int/lit8 v2, v2, 0x1

    .line 642
    move/from16 v0, v16

    if-ne v2, v0, :cond_198

    .line 643
    const/4 v2, 0x0

    .line 636
    :cond_198
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e1

    .line 677
    :cond_19c
    invoke-virtual {v10}, Lrx/internal/util/RxRingBuffer;->f()Ljava/lang/Object;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_124

    .line 681
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->h:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v2}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a9
    .catchall {:try_start_190 .. :try_end_1a9} :catchall_78

    move-result-object v10

    .line 684
    :try_start_1aa
    invoke-virtual {v14, v10}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V
    :try_end_1ad
    .catch Ljava/lang/Throwable; {:try_start_1aa .. :try_end_1ad} :catch_1b7
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_78

    .line 695
    const-wide/16 v10, 0x1

    sub-long v10, v4, v10

    .line 696
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide v4, v10

    .line 697
    goto/16 :goto_112

    .line 685
    :catch_1b7
    move-exception v2

    .line 686
    const/4 v3, 0x1

    .line 687
    :try_start_1b9
    invoke-static {v2}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V
    :try_end_1bc
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_78

    .line 689
    :try_start_1bc
    invoke-virtual {v14, v2}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V
    :try_end_1bf
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_1c4

    .line 691
    :try_start_1bf
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b()V

    goto/16 :goto_b

    :catchall_1c4
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b()V

    throw v2
    :try_end_1c9
    .catchall {:try_start_1bf .. :try_end_1c9} :catchall_78

    .line 702
    :cond_1c9
    const-wide v4, 0x7fffffffffffffffL

    goto/16 :goto_130

    .line 728
    :cond_1d0
    add-int/lit8 v2, v12, 0x1

    .line 729
    move/from16 v0, v16

    if-ne v2, v0, :cond_1d7

    .line 730
    const/4 v2, 0x0

    .line 655
    :cond_1d7
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v12, v2

    goto/16 :goto_104

    .line 752
    :cond_1dd
    const/4 v2, 0x0

    :try_start_1de
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->k:Z

    .line 753
    monitor-exit p0
    :try_end_1e3
    .catchall {:try_start_1de .. :try_end_1e3} :catchall_18e

    goto/16 :goto_5

    .line 759
    :catchall_1e5
    move-exception v2

    :try_start_1e6
    monitor-exit p0
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_1e5

    throw v2

    :cond_1e8
    move v2, v6

    move v4, v7

    goto/16 :goto_168

    :cond_1ec
    move v2, v4

    move v4, v5

    goto :goto_174

    :cond_1ef
    move-wide v8, v4

    move v5, v2

    goto/16 :goto_4d
.end method

.method i()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 770
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 782
    :goto_9
    return v0

    .line 773
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 774
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b:Z

    if-nez v2, :cond_24

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 776
    :try_start_18
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->j()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    .line 778
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b()V

    goto :goto_9

    :catchall_1f
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->b()V

    throw v0

    .line 782
    :cond_24
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public i_()V
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->i:Z

    .line 255
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    .line 256
    return-void
.end method
