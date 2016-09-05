.class Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;
.super Ljava/lang/Object;
.source "ManagedClientConnectionImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private final b:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field private volatile c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V
    .registers 6

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string/jumbo v0, "Connection manager"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v0, "Connection operator"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "HTTP pool entry"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 80
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->b:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 81
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->d:Z

    .line 83
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->e:J

    .line 84
    return-void
.end method

.method private p()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 106
    if-nez v0, :cond_6

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    goto :goto_5
.end method

.method private q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 114
    if-nez v0, :cond_a

    .line 115
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 117
    :cond_a
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    return-object v0
.end method

.method private r()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 122
    if-nez v0, :cond_a

    .line 123
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 125
    :cond_a
    return-object v0
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    .prologue
    .line 428
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 429
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->e:J

    .line 433
    :goto_c
    return-void

    .line 431
    :cond_d
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->e:J

    goto :goto_c
.end method

.method public a(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .registers 3

    .prologue
    .line 202
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 203
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 204
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 353
    const-string/jumbo v0, "Next proxy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    monitor-enter p0

    .line 357
    :try_start_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_1a

    .line 358
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 364
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v0

    .line 360
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 361
    const-string/jumbo v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    const-string/jumbo v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 364
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_17

    .line 366
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 368
    monitor-enter p0

    .line 369
    :try_start_3e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_4b

    .line 370
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 374
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_48

    throw v0

    .line 372
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 374
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_48

    .line 375
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 209
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 210
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .prologue
    .line 191
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 192
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 193
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 11

    .prologue
    .line 290
    const-string/jumbo v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    monitor-enter p0

    .line 294
    :try_start_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_1a

    .line 295
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 301
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v0

    .line 297
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    :goto_2d
    const-string/jumbo v1, "Connection already open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 301
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_17

    .line 303
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    .line 304
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->b:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    if-eqz v6, :cond_5e

    move-object v2, v6

    .line 307
    :goto_45
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    .line 304
    invoke-interface/range {v0 .. v5}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 310
    monitor-enter p0

    .line 311
    :try_start_4f
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_63

    .line 312
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 320
    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_59

    throw v0

    .line 299
    :cond_5c
    const/4 v0, 0x0

    goto :goto_2d

    .line 306
    :cond_5e
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    goto :goto_45

    .line 314
    :cond_63
    :try_start_63
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 315
    if-nez v6, :cond_74

    .line 316
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a(Z)V

    .line 320
    :goto_72
    monitor-exit p0

    .line 321
    return-void

    .line 318
    :cond_74
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->h()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a(Lcz/msebera/android/httpclient/HttpHost;Z)V
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_59

    goto :goto_72
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 379
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    monitor-enter p0

    .line 383
    :try_start_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_14

    .line 384
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 393
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    .line 386
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v1

    .line 387
    const-string/jumbo v0, "Route tracker"

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    const-string/jumbo v2, "Connection not open"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e()Z

    move-result v0

    const-string/jumbo v2, "Protocol layering without a tunnel not supported"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 390
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f()Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v0, 0x1

    :goto_3b
    const-string/jumbo v2, "Multiple protocol layering not supported"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 392
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 393
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_14 .. :try_end_4e} :catchall_11

    .line 394
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->b:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-interface {v2, v0, v1, p1, p2}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 396
    monitor-enter p0

    .line 397
    :try_start_54
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v1, :cond_63

    .line 398
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 402
    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_5e

    throw v0

    .line 390
    :cond_61
    const/4 v0, 0x0

    goto :goto_3b

    .line 400
    :cond_63
    :try_start_63
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v1

    .line 401
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->h()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c(Z)V

    .line 402
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_5e

    .line 403
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 411
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->r()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 412
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a(Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public a(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 325
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    monitor-enter p0

    .line 329
    :try_start_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_14

    .line 330
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 338
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    .line 332
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v1

    .line 333
    const-string/jumbo v0, "Route tracker"

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    const-string/jumbo v2, "Connection not open"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e()Z

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x1

    :goto_31
    const-string/jumbo v2, "Connection is already tunnelled"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 337
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 338
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_11

    .line 340
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p1, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 342
    monitor-enter p0

    .line 343
    :try_start_49
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_58

    .line 344
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 348
    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_53

    throw v0

    .line 335
    :cond_56
    const/4 v0, 0x0

    goto :goto_31

    .line 346
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b(Z)V

    .line 348
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_53

    .line 349
    return-void
.end method

.method public a(I)Z
    .registers 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 186
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 5

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_7

    .line 448
    monitor-exit p0

    .line 459
    :goto_6
    return-void

    .line 450
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->d:Z

    .line 451
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_23

    .line 453
    :try_start_12
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->e()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_26
    .catchall {:try_start_12 .. :try_end_15} :catchall_23

    .line 456
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 458
    monitor-exit p0

    goto :goto_6

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v0

    .line 454
    :catch_26
    move-exception v0

    goto :goto_15
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 165
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 166
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->b(I)V

    .line 167
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->p()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_b

    .line 149
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->c()Z

    move-result v0

    .line 151
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c_()V
    .registers 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->c_()V

    .line 182
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 129
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 130
    if-eqz v1, :cond_14

    .line 131
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 132
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->h()V

    .line 133
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V

    .line 135
    :cond_14
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->p()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_b

    .line 158
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->d()Z

    move-result v0

    .line 160
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public d_()V
    .registers 5

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_7

    .line 438
    monitor-exit p0

    .line 443
    :goto_6
    return-void

    .line 440
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 442
    monitor-exit p0

    goto :goto_6

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public e()V
    .registers 3

    .prologue
    .line 138
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 139
    if-eqz v1, :cond_14

    .line 140
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 141
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->h()V

    .line 142
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->e()V

    .line 144
    :cond_14
    return-void
.end method

.method public f()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 223
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->f()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->g()I

    move-result v0

    return v0
.end method

.method public h()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->r()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->c()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 2

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->d:Z

    .line 417
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->d:Z

    .line 421
    return-void
.end method

.method public k()Ljavax/net/ssl/SSLSession;
    .registers 4

    .prologue
    .line 247
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->q()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 248
    const/4 v1, 0x0

    .line 249
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->i()Ljava/net/Socket;

    move-result-object v0

    .line 250
    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_14

    .line 251
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 253
    :goto_13
    return-object v0

    :cond_14
    move-object v0, v1

    goto :goto_13
.end method

.method l()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method m()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 97
    return-object v0
.end method

.method public n()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->d:Z

    return v0
.end method
