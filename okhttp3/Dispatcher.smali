.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lokhttp3/Dispatcher;->a:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/Dispatcher;->b:I

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->d:Ljava/util/Deque;

    .line 49
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->f:Ljava/util/Deque;

    .line 59
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/Dispatcher;->a:I

    if-lt v0, v1, :cond_b

    .line 157
    :cond_a
    :goto_a
    return-void

    .line 144
    :cond_b
    iget-object v0, p0, Lokhttp3/Dispatcher;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 146
    iget-object v0, p0, Lokhttp3/Dispatcher;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RealCall$AsyncCall;

    .line 149
    invoke-direct {p0, v0}, Lokhttp3/Dispatcher;->c(Lokhttp3/RealCall$AsyncCall;)I

    move-result v2

    iget v3, p0, Lokhttp3/Dispatcher;->b:I

    if-ge v2, v3, :cond_3c

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 151
    iget-object v2, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 155
    :cond_3c
    iget-object v0, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v2, p0, Lokhttp3/Dispatcher;->a:I

    if-lt v0, v2, :cond_19

    goto :goto_a
.end method

.method private c(Lokhttp3/RealCall$AsyncCall;)I
    .registers 6

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RealCall$AsyncCall;

    .line 163
    invoke-virtual {v0}, Lokhttp3/RealCall$AsyncCall;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, v1, 0x1

    :goto_24
    move v1, v0

    .line 164
    goto :goto_8

    .line 165
    :cond_26
    return v1

    :cond_27
    move v0, v1

    goto :goto_24
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    .line 63
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 64
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    .line 66
    :cond_21
    iget-object v0, p0, Lokhttp3/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 62
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lokhttp3/RealCall$AsyncCall;)V
    .registers 4

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/Dispatcher;->a:I

    if-ge v0, v1, :cond_21

    invoke-direct {p0, p1}, Lokhttp3/Dispatcher;->c(Lokhttp3/RealCall$AsyncCall;)I

    move-result v0

    iget v1, p0, Lokhttp3/Dispatcher;->b:I

    if-ge v0, v1, :cond_21

    .line 111
    iget-object v0, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    .line 116
    :goto_1f
    monitor-exit p0

    return-void

    .line 114
    :cond_21
    :try_start_21
    iget-object v0, p0, Lokhttp3/Dispatcher;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_1f

    .line 110
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lokhttp3/RealCall$AsyncCall;)V
    .registers 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "AsyncCall wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lokhttp3/Dispatcher;->b()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    .line 140
    monitor-exit p0

    return-void
.end method
