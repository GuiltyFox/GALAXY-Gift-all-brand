.class public Lcom/koushikdutta/async/future/SimpleFuture;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SimpleFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/DependentFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleCancellable;",
        "Lcom/koushikdutta/async/future/DependentFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field d:Lcom/koushikdutta/async/AsyncSemaphore;

.field i:Ljava/lang/Exception;

.field j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field k:Z

.field l:Lcom/koushikdutta/async/future/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 18
    return-void
.end method

.method private a(Z)Z
    .registers 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 35
    const/4 v0, 0x0

    .line 45
    :goto_7
    return v0

    .line 38
    :cond_8
    monitor-enter p0

    .line 39
    :try_start_9
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Ljava/lang/Exception;

    .line 40
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->g()V

    .line 41
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->m()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    .line 42
    iput-boolean p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->k:Z

    .line 43
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1f

    .line 44
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_7

    .line 43
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private c(Lcom/koushikdutta/async/future/FutureCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_d

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->k:Z

    if-nez v0, :cond_d

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 108
    :cond_d
    return-void
.end method

.method private l()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Ljava/lang/Exception;

    if-eqz v0, :cond_c

    .line 71
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 72
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Ljava/lang/Object;

    return-object v0
.end method

.method private m()Lcom/koushikdutta/async/future/FutureCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->l:Lcom/koushikdutta/async/future/FutureCallback;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->l:Lcom/koushikdutta/async/future/FutureCallback;

    .line 102
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->d(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/SimpleFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future",
            "<TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->i()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 156
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 157
    return-object p0
.end method

.method public a(Ljava/lang/Exception;)Z
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;>(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 181
    instance-of v0, p1, Lcom/koushikdutta/async/future/DependentCancellable;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/koushikdutta/async/future/DependentCancellable;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/future/DependentCancellable;->a(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    .line 183
    :cond_a
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->d(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 184
    return-object p1
.end method

.method public synthetic b(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->k:Z

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_1
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()Z

    move-result v0

    if-nez v0, :cond_a

    .line 135
    const/4 v0, 0x0

    monitor-exit p0

    .line 142
    :goto_9
    return v0

    .line 136
    :cond_a
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Ljava/lang/Object;

    .line 137
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Ljava/lang/Exception;

    .line 138
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->g()V

    .line 139
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->m()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    .line 140
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    .line 141
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 142
    const/4 v0, 0x1

    goto :goto_9

    .line 140
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public b(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Cancellable;",
            ")",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 190
    return-object p0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->b()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    .line 169
    :try_start_1
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->l:Lcom/koushikdutta/async/future/FutureCallback;

    .line 170
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 171
    :cond_f
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->m()Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v0

    .line 174
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 175
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 176
    return-object p0

    .line 173
    :cond_18
    const/4 v0, 0x0

    goto :goto_13

    .line 174
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method g()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->d:Lcom/koushikdutta/async/AsyncSemaphore;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->d:Lcom/koushikdutta/async/AsyncSemaphore;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->b()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->d:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 115
    :cond_c
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 62
    :cond_d
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 66
    :goto_12
    return-object v0

    .line 63
    :cond_13
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->h()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 64
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    .line 65
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->a()V

    .line 66
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->l()Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    .line 64
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 80
    :cond_d
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 85
    :goto_12
    return-object v0

    .line 81
    :cond_13
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->h()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 82
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_24

    .line 83
    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncSemaphore;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 84
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 82
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 85
    :cond_27
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->l()Ljava/lang/Object;

    move-result-object v0

    goto :goto_12
.end method

.method h()Lcom/koushikdutta/async/AsyncSemaphore;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->d:Lcom/koushikdutta/async/AsyncSemaphore;

    if-nez v0, :cond_b

    .line 119
    new-instance v0, Lcom/koushikdutta/async/AsyncSemaphore;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSemaphore;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->d:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 120
    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->d:Lcom/koushikdutta/async/AsyncSemaphore;

    return-object v0
.end method

.method public i()Lcom/koushikdutta/async/future/FutureCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture$1;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;)V

    return-object v0
.end method

.method public j()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Ljava/lang/Exception;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Ljava/lang/Object;

    return-object v0
.end method
