.class final Lrx/internal/operators/UnicastSubject$State;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "UnicastSubject.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Observer;
.implements Lrx/Producer;
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TT;>;",
        "Lrx/functions/Action0;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d831d73a4227baaL


# instance fields
.field volatile caughtUp:Z

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final subscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Subscriber",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacityHint"    # I

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 116
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    .line 117
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    const/4 v1, 0x1

    if-le p1, v1, :cond_27

    .line 120
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    .line 128
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_1e
    iput-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 129
    return-void

    .line 120
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_21
    new-instance v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    goto :goto_1e

    .line 124
    :cond_27
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_32
    goto :goto_1e

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_33
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    goto :goto_32
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 297
    monitor-enter p0

    .line 298
    :try_start_4
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    if-eqz v0, :cond_a

    .line 299
    monitor-exit p0

    .line 304
    :goto_9
    return-void

    .line 301
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    .line 302
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 303
    iget-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_9

    .line 302
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/UnicastSubject$State;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 219
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 220
    invoke-virtual {p1, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 224
    :goto_13
    return-void

    .line 222
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only a single subscriber is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method checkTerminated(ZZLrx/Subscriber;)Z
    .registers 7
    .param p1, "done"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    .local p3, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x1

    .line 314
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 315
    iget-object v2, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 330
    :goto_c
    return v1

    .line 318
    :cond_d
    if-eqz p1, :cond_22

    .line 319
    iget-object v0, p0, Lrx/internal/operators/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 320
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1c

    .line 321
    iget-object v2, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 322
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 325
    :cond_1c
    if-eqz p2, :cond_22

    .line 326
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_c

    .line 330
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const/4 v1, 0x1

    .line 182
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-nez v2, :cond_18

    .line 183
    iput-boolean v1, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 184
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_1e

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "stillReplay":Z
    monitor-enter p0

    .line 187
    :try_start_d
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_19

    move v0, v1

    .line 188
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1b

    .line 189
    if-eqz v0, :cond_1e

    .line 190
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 196
    .end local v0    # "stillReplay":Z
    :cond_18
    :goto_18
    return-void

    .line 187
    .restart local v0    # "stillReplay":Z
    :cond_19
    const/4 v0, 0x0

    goto :goto_12

    .line 188
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1

    .line 194
    .end local v0    # "stillReplay":Z
    :cond_1e
    iget-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_18
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const/4 v1, 0x1

    .line 164
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-nez v2, :cond_1a

    .line 165
    iput-object p1, p0, Lrx/internal/operators/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 166
    iput-boolean v1, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 167
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_20

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "stillReplay":Z
    monitor-enter p0

    .line 170
    :try_start_f
    iget-boolean v2, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v2, :cond_1b

    move v0, v1

    .line 171
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1d

    .line 172
    if-eqz v0, :cond_20

    .line 173
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 179
    .end local v0    # "stillReplay":Z
    :cond_1a
    :goto_1a
    return-void

    .line 170
    .restart local v0    # "stillReplay":Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_14

    .line 171
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1

    .line 177
    .end local v0    # "stillReplay":Z
    :cond_20
    iget-object v1, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-nez v3, :cond_20

    .line 134
    iget-boolean v3, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_24

    .line 135
    const/4 v2, 0x0

    .line 142
    .local v2, "stillReplay":Z
    monitor-enter p0

    .line 143
    :try_start_a
    iget-boolean v3, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_1a

    .line 144
    iget-object v3, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    iget-object v4, p0, Lrx/internal/operators/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 145
    const/4 v2, 0x1

    .line 147
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_21

    .line 148
    if-eqz v2, :cond_24

    .line 149
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 161
    .end local v2    # "stillReplay":Z
    :cond_20
    :goto_20
    return-void

    .line 147
    .restart local v2    # "stillReplay":Z
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v3

    .line 153
    .end local v2    # "stillReplay":Z
    :cond_24
    iget-object v3, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    .line 155
    .local v1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_2c
    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    .line 156
    :catch_30
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 158
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method replay()V
    .registers 15

    .prologue
    .line 229
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    monitor-enter p0

    .line 230
    :try_start_1
    iget-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    if-eqz v12, :cond_a

    .line 231
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->missed:Z

    .line 232
    monitor-exit p0

    .line 284
    :cond_9
    :goto_9
    return-void

    .line 234
    :cond_a
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    .line 235
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_72

    .line 236
    iget-object v5, p0, Lrx/internal/operators/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 238
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_10
    iget-object v12, p0, Lrx/internal/operators/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/Subscriber;

    .line 239
    .local v8, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v9, 0x0

    .line 240
    .local v9, "unlimited":Z
    if-eqz v8, :cond_5a

    .line 241
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 242
    .local v0, "d":Z
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 244
    .local v1, "empty":Z
    invoke-virtual {p0, v0, v1, v8}, Lrx/internal/operators/UnicastSubject$State;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->get()J

    move-result-wide v6

    .line 248
    .local v6, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v6, v12

    if-nez v12, :cond_75

    const/4 v9, 0x1

    .line 249
    :goto_35
    const-wide/16 v2, 0x0

    .line 251
    .local v2, "e":J
    :goto_37
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_4e

    .line 252
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    .line 253
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 254
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_77

    const/4 v1, 0x1

    .line 255
    :goto_46
    invoke-virtual {p0, v0, v1, v8}, Lrx/internal/operators/UnicastSubject$State;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 258
    if-eqz v1, :cond_79

    .line 273
    .end local v10    # "v":Ljava/lang/Object;
    :cond_4e
    if-nez v9, :cond_5a

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_5a

    .line 274
    neg-long v12, v2

    invoke-virtual {p0, v12, v13}, Lrx/internal/operators/UnicastSubject$State;->addAndGet(J)J

    .line 278
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v6    # "r":J
    :cond_5a
    monitor-enter p0

    .line 279
    :try_start_5b
    iget-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->missed:Z

    if-nez v12, :cond_99

    .line 280
    if-eqz v9, :cond_6a

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 281
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->caughtUp:Z

    .line 283
    :cond_6a
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->emitting:Z

    .line 284
    monitor-exit p0

    goto :goto_9

    .line 287
    :catchall_6f
    move-exception v12

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_6f

    throw v12

    .line 235
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v8    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v9    # "unlimited":Z
    :catchall_72
    move-exception v12

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v12

    .line 248
    .restart local v0    # "d":Z
    .restart local v1    # "empty":Z
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "r":J
    .restart local v8    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v9    # "unlimited":Z
    :cond_75
    const/4 v9, 0x0

    goto :goto_35

    .line 254
    .restart local v2    # "e":J
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_77
    const/4 v1, 0x0

    goto :goto_46

    .line 261
    :cond_79
    iget-object v12, p0, Lrx/internal/operators/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v12, v10}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 263
    .local v11, "value":Ljava/lang/Object;, "TT;"
    :try_start_7f
    invoke-virtual {v8, v11}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_89

    .line 270
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 271
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 272
    goto :goto_37

    .line 264
    :catch_89
    move-exception v4

    .line 265
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 266
    invoke-static {v4}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 267
    invoke-static {v4, v11}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v8, v12}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 286
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v6    # "r":J
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;, "TT;"
    :cond_99
    const/4 v12, 0x0

    :try_start_9a
    iput-boolean v12, p0, Lrx/internal/operators/UnicastSubject$State;->missed:Z

    .line 287
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_6f

    goto/16 :goto_10
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/UnicastSubject$State;, "Lrx/internal/operators/UnicastSubject$State<TT;>;"
    const-wide/16 v2, 0x0

    .line 200
    cmp-long v0, p1, v2

    if-gez v0, :cond_f

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_f
    cmp-long v0, p1, v2

    if-lez v0, :cond_1a

    .line 204
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 205
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    .line 210
    :cond_19
    :goto_19
    return-void

    .line 207
    :cond_1a
    iget-boolean v0, p0, Lrx/internal/operators/UnicastSubject$State;->done:Z

    if-eqz v0, :cond_19

    .line 208
    invoke-virtual {p0}, Lrx/internal/operators/UnicastSubject$State;->replay()V

    goto :goto_19
.end method
