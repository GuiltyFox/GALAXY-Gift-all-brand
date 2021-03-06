.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic c:Z

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lokhttp3/internal/RouteDatabase;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/io/RealConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lokhttp3/ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v8

    :goto_b
    sput-boolean v0, Lokhttp3/ConnectionPool;->c:Z

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp ConnectionPool"

    .line 51
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/ConnectionPool;->d:Ljava/util/concurrent/Executor;

    .line 49
    return-void

    :cond_28
    move v0, v2

    .line 43
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 85
    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 86
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 9

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lokhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionPool$1;-><init>(Lokhttp3/ConnectionPool;)V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->g:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->h:Ljava/util/Deque;

    .line 76
    new-instance v0, Lokhttp3/internal/RouteDatabase;

    invoke-direct {v0}, Lokhttp3/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->a:Lokhttp3/internal/RouteDatabase;

    .line 89
    iput p1, p0, Lokhttp3/ConnectionPool;->e:I

    .line 90
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ConnectionPool;->f:J

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_40

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_40
    return-void
.end method

.method private a(Lokhttp3/internal/io/RealConnection;J)I
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v3, p1, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    move v1, v2

    .line 240
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    .line 241
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 243
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 244
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 245
    goto :goto_4

    .line 249
    :cond_1a
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v0

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/internal/io/RealConnection;->a()Lokhttp3/Route;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lokhttp3/internal/Platform;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/internal/io/RealConnection;->i:Z

    .line 255
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->f:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lokhttp3/internal/io/RealConnection;->j:J

    .line 261
    :goto_5c
    return v2

    :cond_5d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5c
.end method


# virtual methods
.method a(J)J
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 182
    .line 184
    const/4 v1, 0x0

    .line 185
    const-wide/high16 v4, -0x8000000000000000L

    .line 188
    monitor-enter p0

    .line 189
    :try_start_5
    iget-object v2, p0, Lokhttp3/ConnectionPool;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    move v7, v0

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 190
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/io/RealConnection;

    .line 193
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/ConnectionPool;->a(Lokhttp3/internal/io/RealConnection;J)I

    move-result v3

    if-lez v3, :cond_23

    .line 194
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 195
    goto :goto_d

    .line 198
    :cond_23
    add-int/lit8 v6, v2, 0x1

    .line 201
    iget-wide v2, v0, Lokhttp3/internal/io/RealConnection;->j:J

    sub-long v2, p1, v2

    .line 202
    cmp-long v9, v2, v4

    if-lez v9, :cond_65

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_30
    move-wide v4, v0

    move-object v1, v2

    move v2, v6

    .line 206
    goto :goto_d

    .line 208
    :cond_34
    iget-wide v8, p0, Lokhttp3/ConnectionPool;->f:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_3e

    iget v0, p0, Lokhttp3/ConnectionPool;->e:I

    if-le v2, v0, :cond_4e

    .line 212
    :cond_3e
    iget-object v0, p0, Lokhttp3/ConnectionPool;->h:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_55

    .line 226
    invoke-virtual {v1}, Lokhttp3/internal/io/RealConnection;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 229
    const-wide/16 v0, 0x0

    :goto_4d
    return-wide v0

    .line 213
    :cond_4e
    if-lez v2, :cond_58

    .line 215
    :try_start_50
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->f:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_4d

    .line 224
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw v0

    .line 216
    :cond_58
    if-lez v7, :cond_5e

    .line 218
    :try_start_5a
    iget-wide v0, p0, Lokhttp3/ConnectionPool;->f:J

    monitor-exit p0

    goto :goto_4d

    .line 221
    :cond_5e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->b:Z

    .line 222
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_55

    goto :goto_4d

    :cond_65
    move-object v2, v1

    move-wide v0, v4

    goto :goto_30
.end method

.method a(Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;
    .registers 7

    .prologue
    .line 119
    sget-boolean v0, Lokhttp3/ConnectionPool;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_10
    iget-object v0, p0, Lokhttp3/ConnectionPool;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/io/RealConnection;

    .line 121
    iget-object v2, v0, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lokhttp3/internal/io/RealConnection;->g:I

    if-ge v2, v3, :cond_16

    .line 122
    invoke-virtual {v0}, Lokhttp3/internal/io/RealConnection;->a()Lokhttp3/Route;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/Route;->a:Lokhttp3/Address;

    invoke-virtual {p1, v2}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, v0, Lokhttp3/internal/io/RealConnection;->i:Z

    if-nez v2, :cond_16

    .line 124
    invoke-virtual {p2, v0}, Lokhttp3/internal/http/StreamAllocation;->a(Lokhttp3/internal/io/RealConnection;)V

    .line 128
    :goto_3f
    return-object v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method a(Lokhttp3/internal/io/RealConnection;)V
    .registers 4

    .prologue
    .line 132
    sget-boolean v0, Lokhttp3/ConnectionPool;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_10
    iget-boolean v0, p0, Lokhttp3/ConnectionPool;->b:Z

    if-nez v0, :cond_1e

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->b:Z

    .line 135
    sget-object v0, Lokhttp3/ConnectionPool;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/ConnectionPool;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_1e
    iget-object v0, p0, Lokhttp3/ConnectionPool;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method b(Lokhttp3/internal/io/RealConnection;)Z
    .registers 3

    .prologue
    .line 145
    sget-boolean v0, Lokhttp3/ConnectionPool;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_10
    iget-boolean v0, p1, Lokhttp3/internal/io/RealConnection;->i:Z

    if-nez v0, :cond_18

    iget v0, p0, Lokhttp3/ConnectionPool;->e:I

    if-nez v0, :cond_1f

    .line 147
    :cond_18
    iget-object v0, p0, Lokhttp3/ConnectionPool;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_1e
    return v0

    .line 150
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    const/4 v0, 0x0

    goto :goto_1e
.end method
