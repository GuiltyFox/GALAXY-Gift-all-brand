.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final b:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field protected final c:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

.field protected final d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

.field protected final e:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected final f:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 101
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 5

    .prologue
    .line 94
    const-wide/16 v0, -0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
    .registers 11

    .prologue
    .line 115
    new-instance v5, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V
    .registers 8

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string/jumbo v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 135
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 136
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->f:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    .line 137
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 138
    invoke-virtual {p0, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    .line 139
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string/jumbo v0, "Scheme registry"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 155
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 156
    new-instance v0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->f:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    .line 157
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 158
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    .line 159
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    .line 160
    return-void
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .registers 3

    .prologue
    .line 209
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .registers 5

    .prologue
    .line 220
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 223
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method protected a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected a(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;
    .registers 11

    .prologue
    .line 191
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->e:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->f:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    const/16 v3, 0x14

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 13

    .prologue
    .line 247
    instance-of v0, p1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    const-string/jumbo v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 249
    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    .line 250
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 251
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->n()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    if-ne v0, p0, :cond_28

    const/4 v0, 0x1

    :goto_17
    const-string/jumbo v1, "Connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 253
    :cond_1d
    monitor-enter p1

    .line 254
    :try_start_1e
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 255
    if-nez v2, :cond_2a

    .line 256
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_5b

    .line 289
    :goto_27
    return-void

    .line 251
    :cond_28
    const/4 v0, 0x0

    goto :goto_17

    .line 260
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->c()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->p()Z

    move-result v0

    if-nez v0, :cond_39

    .line 269
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->e()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_39} :catch_67
    .catchall {:try_start_2a .. :try_end_39} :catchall_a2

    .line 277
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->p()Z

    move-result v3

    .line 278
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 279
    if-eqz v3, :cond_5e

    .line 280
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Released connection is reusable."

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 285
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->l()V

    .line 286
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 288
    :goto_59
    monitor-exit p1

    goto :goto_27

    :catchall_5b
    move-exception v0

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_39 .. :try_end_5d} :catchall_5b

    throw v0

    .line 282
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Released connection is not reusable."

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5b

    goto :goto_4f

    .line 271
    :catch_67
    move-exception v0

    .line 272
    :try_start_68
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 273
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v3, "Exception shutting down released connection."

    invoke-virtual {v1, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_a2

    .line 277
    :cond_78
    :try_start_78
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->p()Z

    move-result v3

    .line 278
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 279
    if-eqz v3, :cond_99

    .line 280
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Released connection is reusable."

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 285
    :cond_8e
    :goto_8e
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->l()V

    .line 286
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    goto :goto_59

    .line 282
    :cond_99
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Released connection is not reusable."

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_8e

    .line 277
    :catchall_a2
    move-exception v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->p()Z

    move-result v3

    .line 278
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 279
    if-eqz v3, :cond_c4

    .line 280
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Released connection is reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 285
    :cond_b9
    :goto_b9
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->l()V

    .line 286
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 287
    throw v0

    .line 282
    :cond_c4
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Released connection is not reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_cc
    .catchall {:try_start_78 .. :try_end_cc} :catchall_5b

    goto :goto_b9
.end method

.method public b()V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Shutting down"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a()V

    .line 294
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->b()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 169
    return-void

    .line 167
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
