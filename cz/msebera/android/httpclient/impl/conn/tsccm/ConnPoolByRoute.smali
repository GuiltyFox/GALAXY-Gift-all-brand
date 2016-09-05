.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;
.super Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final g:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected final h:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

.field protected final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field

.field protected final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile m:Z

.field protected volatile n:I

.field protected volatile o:I

.field private final p:Ljava/util/concurrent/locks/Lock;

.field private final q:J

.field private final r:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;I)V
    .registers 11

    .prologue
    .line 114
    const-wide/16 v4, -0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V
    .registers 9

    .prologue
    .line 126
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;-><init>()V

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 127
    const-string/jumbo v0, "Connection operator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v0, "Connections per route"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->c:Ljava/util/Set;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Set;

    .line 131
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->g:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 132
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->h:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 133
    iput p3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->n:I

    .line 134
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->b()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Queue;

    .line 135
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->c()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->k:Ljava/util/Queue;

    .line 136
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->l:Ljava/util/Map;

    .line 137
    iput-wide p4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->q:J

    .line 138
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->r:Ljava/util/concurrent/TimeUnit;

    .line 139
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    .line 153
    invoke-static {p2}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    move-result-object v0

    .line 154
    invoke-static {p2}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    .line 152
    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;I)V

    .line 155
    return-void
.end method

.method static synthetic a(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .registers 5

    .prologue
    .line 216
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->c()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_9

    .line 219
    :try_start_6
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 224
    :cond_9
    :goto_9
    return-void

    .line 220
    :catch_a
    move-exception v0

    .line 221
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_9
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .registers 16

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_15

    .line 330
    new-instance v0, Ljava/util/Date;

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 334
    :cond_15
    const/4 v3, 0x0

    .line 335
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 338
    const/4 v1, 0x1

    :try_start_1c
    invoke-virtual {p0, p1, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 339
    const/4 v1, 0x0

    .line 341
    :cond_21
    :goto_21
    if-nez v3, :cond_91

    .line 342
    iget-boolean v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->m:Z

    if-nez v3, :cond_97

    const/4 v3, 0x1

    :goto_28
    const-string/jumbo v4, "Connection pool shut down"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 345
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] total kept alive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", total issued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Set;

    .line 346
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", total allocated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " out of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 356
    :cond_8b
    invoke-virtual {p0, v2, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    :try_end_8e
    .catchall {:try_start_1c .. :try_end_8e} :catchall_18c

    move-result-object v3

    .line 357
    if-eqz v3, :cond_99

    .line 419
    :cond_91
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 421
    return-object v3

    .line 342
    :cond_97
    const/4 v3, 0x0

    goto :goto_28

    .line 361
    :cond_99
    :try_start_99
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->d()I

    move-result v4

    if-lez v4, :cond_101

    const/4 v4, 0x1

    .line 363
    :goto_a0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 364
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Available capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->d()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " out of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 365
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 369
    :cond_f1
    if-eqz v4, :cond_103

    iget v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    iget v6, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->n:I

    if-ge v5, v6, :cond_103

    .line 371
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->g:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-virtual {p0, v2, v3}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v3

    goto/16 :goto_21

    .line 361
    :cond_101
    const/4 v4, 0x0

    goto :goto_a0

    .line 373
    :cond_103
    if-eqz v4, :cond_11d

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11d

    .line 375
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->e()V

    .line 378
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 379
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->g:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-virtual {p0, v2, v3}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v3

    goto/16 :goto_21

    .line 383
    :cond_11d
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v4

    if-eqz v4, :cond_150

    .line 384
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Need to wait for connection ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 388
    :cond_150
    if-nez v1, :cond_15f

    .line 389
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    .line 390
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Ljava/util/concurrent/locks/Condition;Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    move-result-object v1

    .line 391
    invoke-virtual {p6, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    :try_end_15f
    .catchall {:try_start_99 .. :try_end_15f} :catchall_18c

    .line 396
    :cond_15f
    :try_start_15f
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V

    .line 397
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->k:Ljava/util/Queue;

    invoke-interface {v4, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a(Ljava/util/Date;)Z
    :try_end_16a
    .catchall {:try_start_15f .. :try_end_16a} :catchall_193

    move-result v4

    .line 405
    :try_start_16b
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V

    .line 406
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->k:Ljava/util/Queue;

    invoke-interface {v5, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 410
    if-nez v4, :cond_21

    if-eqz v0, :cond_21

    .line 411
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_21

    .line 412
    new-instance v0, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;

    const-string/jumbo v1, "Timeout waiting for connection from pool"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18c
    .catchall {:try_start_16b .. :try_end_18c} :catchall_18c

    .line 419
    :catchall_18c
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 405
    :catchall_193
    move-exception v0

    :try_start_194
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V

    .line 406
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->k:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    throw v0
    :try_end_19d
    .catchall {:try_start_194 .. :try_end_19d} :catchall_18c
.end method

.method protected a(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .registers 10

    .prologue
    .line 545
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 546
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating new connection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 550
    :cond_2c
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v3

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->q:J

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->r:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V

    .line 552
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 554
    :try_start_3f
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V

    .line 555
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    .line 556
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_53

    .line 558
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 561
    return-object v1

    .line 558
    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected a(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 484
    const/4 v2, 0x0

    .line 485
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 487
    const/4 v0, 0x0

    .line 488
    :goto_8
    if-nez v0, :cond_e4

    .line 490
    :try_start_a
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a(Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v2

    .line 492
    if-eqz v2, :cond_aa

    .line 493
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 494
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Getting free connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 495
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 498
    :cond_47
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a(J)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 502
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 503
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Closing expired free connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 506
    :cond_8d
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V

    .line 510
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e()V

    .line 511
    iget v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I
    :try_end_99
    .catchall {:try_start_a .. :try_end_99} :catchall_9b

    goto/16 :goto_8

    .line 526
    :catchall_9b
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 513
    :cond_a2
    :try_start_a2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 514
    goto/16 :goto_8

    .line 519
    :cond_aa
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 520
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No free connections ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 521
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_e1
    .catchall {:try_start_a2 .. :try_end_e1} :catchall_9b

    move v0, v1

    goto/16 :goto_8

    .line 526
    :cond_e4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 528
    return-object v2

    :cond_ea
    move v0, v1

    goto/16 :goto_8
.end method

.method public a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;
    .registers 5

    .prologue
    .line 281
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 283
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;
    .registers 4

    .prologue
    .line 197
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->h:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    invoke-direct {v0, p1, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;-><init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V

    return-object v0
.end method

.method protected a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;
    .registers 5

    .prologue
    .line 237
    .line 238
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 241
    :try_start_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    .line 242
    if-nez v0, :cond_1a

    if-eqz p2, :cond_1a

    .line 244
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    .line 249
    :cond_1a
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 252
    return-object v0

    .line 249
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected a(Ljava/util/concurrent/locks/Condition;Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;
    .registers 4

    .prologue
    .line 212
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)V

    return-object v0
.end method

.method public a()V
    .registers 6

    .prologue
    .line 765
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 767
    :try_start_5
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->m:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_2b

    if-eqz v0, :cond_f

    .line 804
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 806
    :goto_e
    return-void

    .line 770
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->m:Z

    .line 773
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 774
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 775
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 776
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 777
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_18

    .line 804
    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 781
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 782
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 783
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 784
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 786
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 787
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Closing connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 788
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->d()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 787
    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 790
    :cond_82
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V

    goto :goto_38

    .line 794
    :cond_86
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 795
    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 796
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    .line 797
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 798
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a()V

    goto :goto_8c

    .line 801
    :cond_9f
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_a4
    .catchall {:try_start_32 .. :try_end_a4} :catchall_2b

    .line 804
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_e
.end method

.method protected a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .registers 6

    .prologue
    .line 578
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->d()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 581
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 582
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 585
    :cond_3b
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 588
    :try_start_40
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V

    .line 590
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 591
    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->c(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)Z

    .line 592
    iget v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    .line 593
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->c()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 594
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_62

    .line 598
    :cond_5c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 600
    return-void

    .line 598
    :catchall_62
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .registers 13

    .prologue
    .line 427
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->d()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    .line 428
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 429
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Releasing connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 430
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 433
    :cond_3b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 435
    :try_start_40
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->m:Z

    if-eqz v0, :cond_4d

    .line 438
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_e5

    .line 470
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 472
    :goto_4c
    return-void

    .line 443
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 445
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 447
    if-eqz p2, :cond_d8

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->d()I

    move-result v0

    if-ltz v0, :cond_d8

    .line 448
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 450
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_d4

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_8c
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pooling connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 456
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]; keep alive "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 458
    :cond_bf
    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V

    .line 459
    invoke-virtual {p1, p3, p4, p5}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 460
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 467
    :goto_ca
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_cd
    .catchall {:try_start_4d .. :try_end_cd} :catchall_e5

    .line 470
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4c

    .line 453
    :cond_d4
    :try_start_d4
    const-string/jumbo v0, "indefinitely"

    goto :goto_8c

    .line 462
    :cond_d8
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->b(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V

    .line 463
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->e()V

    .line 464
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->o:I
    :try_end_e4
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_e5

    goto :goto_ca

    .line 470
    :catchall_e5
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected a(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)V
    .registers 5

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 661
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 664
    if-eqz p1, :cond_49

    :try_start_8
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->f()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 665
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 666
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notifying thread waiting on pool ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 667
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->a()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 669
    :cond_3a
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->g()Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    move-result-object v0

    .line 679
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_43

    .line 680
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a()V
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_7b

    .line 684
    :cond_43
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 686
    return-void

    .line 670
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->k:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 671
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 672
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Notifying thread waiting on any pool"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 674
    :cond_61
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    goto :goto_3e

    .line 675
    :cond_6a
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 676
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "Notifying no-one, there are no waiting threads"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_49 .. :try_end_7a} :catchall_7b

    goto :goto_3e

    .line 684
    :catchall_7b
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected b()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected c()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected e()V
    .registers 3

    .prologue
    .line 608
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 611
    :try_start_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 613
    if-eqz v0, :cond_18

    .line 614
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_29

    .line 620
    :cond_12
    :goto_12
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 622
    return-void

    .line 615
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 616
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->f:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "No free connection to delete"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_29

    goto :goto_12

    .line 620
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
