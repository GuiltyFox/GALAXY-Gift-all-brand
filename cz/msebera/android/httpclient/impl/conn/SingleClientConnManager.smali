.class public Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected final alwaysShutDown:Z

.field protected final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected volatile connectionExpiresTime:J
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected volatile isShutDown:Z

.field protected volatile lastReleaseTime:J
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected volatile managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field protected volatile uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 136
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 5
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 122
    const-string/jumbo v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 124
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 125
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 128
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 129
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 130
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 3
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .param p2, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 175
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Manager is shut down"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 176
    return-void

    .line 175
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public closeExpiredConnections()V
    .registers 6

    .prologue
    .line 311
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 312
    .local v0, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_11

    .line 313
    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 315
    :cond_11
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 318
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 321
    const-string/jumbo v3, "Time unit"

    invoke-static {p3, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    monitor-enter p0

    .line 324
    :try_start_a
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v3, v3, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 327
    .local v0, "cutoff":J
    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_39

    cmp-long v3, v4, v0

    if-gtz v3, :cond_2d

    .line 329
    :try_start_28
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_2f
    .catchall {:try_start_28 .. :try_end_2d} :catchall_39

    .line 336
    .end local v0    # "cutoff":J
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit p0

    .line 337
    return-void

    .line 330
    .restart local v0    # "cutoff":J
    :catch_2f
    move-exception v2

    .line 332
    .local v2, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Problem closing idle connection."

    invoke-virtual {v3, v4, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 336
    .end local v0    # "cutoff":J
    .end local v2    # "iox":Ljava/io/IOException;
    :catchall_39
    move-exception v3

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    throw v3
.end method

.method protected createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .registers 3
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .prologue
    .line 166
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->shutdown()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 144
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 146
    return-void

    .line 144
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .registers 12
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    const-string/jumbo v6, "Route"

    invoke-static {p1, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 209
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 210
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Get connection for route "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 213
    :cond_2c
    monitor-enter p0

    .line 215
    :try_start_2d
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v6, :cond_76

    move v6, v5

    :goto_32
    const-string/jumbo v7, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {v6, v7}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "recreate":Z
    const/4 v2, 0x0

    .line 222
    .local v2, "shutdown":Z
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    .line 224
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v6, v6, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 225
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v3, v6, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 226
    .local v3, "tracker":Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
    if-eqz v3, :cond_57

    .line 227
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_86

    move-result v6

    if-nez v6, :cond_78

    :cond_57
    move v2, v5

    .line 237
    .end local v3    # "tracker":Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
    :goto_58
    if-eqz v2, :cond_60

    .line 238
    const/4 v1, 0x1

    .line 240
    :try_start_5b
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_7c
    .catchall {:try_start_5b .. :try_end_60} :catchall_86

    .line 246
    :cond_60
    :goto_60
    if-eqz v1, :cond_69

    .line 247
    :try_start_62
    new-instance v4, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v4, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 250
    :cond_69
    new-instance v4, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v4, p0, v5, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 252
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    monitor-exit p0

    return-object v4

    .end local v1    # "recreate":Z
    .end local v2    # "shutdown":Z
    :cond_76
    move v6, v4

    .line 215
    goto :goto_32

    .restart local v1    # "recreate":Z
    .restart local v2    # "shutdown":Z
    .restart local v3    # "tracker":Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
    :cond_78
    move v2, v4

    .line 227
    goto :goto_58

    .line 234
    .end local v3    # "tracker":Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
    :cond_7a
    const/4 v1, 0x1

    goto :goto_58

    .line 241
    :catch_7c
    move-exception v0

    .line 242
    .local v0, "iox":Ljava/io/IOException;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v5, "Problem shutting down connection."

    invoke-virtual {v4, v5, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_60

    .line 253
    .end local v0    # "iox":Ljava/io/IOException;
    .end local v1    # "recreate":Z
    .end local v2    # "shutdown":Z
    :catchall_86
    move-exception v4

    monitor-exit p0
    :try_end_88
    .catchall {:try_start_62 .. :try_end_88} :catchall_86

    throw v4
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v6, 0x0

    .line 259
    instance-of v3, p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const-string/jumbo v4, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 263
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 264
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Releasing connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_2e
    move-object v2, p1

    .line 267
    check-cast v2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 268
    .local v2, "sca":Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;
    monitor-enter v2

    .line 269
    :try_start_32
    iget-object v3, v2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    if-nez v3, :cond_38

    .line 271
    monitor-exit v2

    .line 308
    :goto_37
    return-void

    .line 273
    :cond_38
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    .line 274
    .local v1, "manager":Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    if-ne v1, p0, :cond_88

    const/4 v3, 0x1

    :goto_3f
    const-string/jumbo v4, "Connection not obtained from this manager"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_85

    .line 277
    :try_start_45
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_68

    iget-boolean v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v3, :cond_55

    .line 278
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z

    move-result v3

    if-nez v3, :cond_68

    .line 280
    :cond_55
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 281
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Released connection open but not reusable."

    .line 282
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 288
    :cond_65
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_68} :catch_95
    .catchall {:try_start_45 .. :try_end_68} :catchall_cd

    .line 296
    :cond_68
    :try_start_68
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 297
    monitor-enter p0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_85

    .line 298
    const/4 v3, 0x0

    :try_start_6d
    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 300
    cmp-long v3, p2, v6

    if-lez v3, :cond_8a

    .line 301
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 305
    :goto_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_92

    .line 307
    :goto_83
    :try_start_83
    monitor-exit v2

    goto :goto_37

    .end local v1    # "manager":Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    :catchall_85
    move-exception v3

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_85

    throw v3

    .line 274
    .restart local v1    # "manager":Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    :cond_88
    const/4 v3, 0x0

    goto :goto_3f

    .line 303
    :cond_8a
    const-wide v4, 0x7fffffffffffffffL

    :try_start_8f
    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_82

    .line 305
    :catchall_92
    move-exception v3

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_92

    :try_start_94
    throw v3
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_85

    .line 290
    :catch_95
    move-exception v0

    .line 291
    .local v0, "iox":Ljava/io/IOException;
    :try_start_96
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 292
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v4, "Exception shutting down released connection."

    invoke-virtual {v3, v4, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a6
    .catchall {:try_start_96 .. :try_end_a6} :catchall_cd

    .line 296
    :cond_a6
    :try_start_a6
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 297
    monitor-enter p0
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_85

    .line 298
    const/4 v3, 0x0

    :try_start_ab
    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 300
    cmp-long v3, p2, v6

    if-lez v3, :cond_c5

    .line 301
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 305
    :goto_c0
    monitor-exit p0

    goto :goto_83

    :catchall_c2
    move-exception v3

    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v3
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_85

    .line 303
    :cond_c5
    const-wide v4, 0x7fffffffffffffffL

    :try_start_ca
    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_c2

    goto :goto_c0

    .line 296
    .end local v0    # "iox":Ljava/io/IOException;
    :catchall_cd
    move-exception v3

    :try_start_ce
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 297
    monitor-enter p0
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_85

    .line 298
    const/4 v4, 0x0

    :try_start_d3
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 300
    cmp-long v4, p2, v6

    if-lez v4, :cond_ea

    .line 301
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 305
    :goto_e8
    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_d3 .. :try_end_e9} :catchall_f2

    :try_start_e9
    throw v3
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_85

    .line 303
    :cond_ea
    const-wide v4, 0x7fffffffffffffffL

    :try_start_ef
    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_e8

    .line 305
    :catchall_f2
    move-exception v3

    monitor-exit p0
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_f2

    :try_start_f4
    throw v3
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_85
.end method

.method public final requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .registers 4
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 182
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected revokeConnection()V
    .registers 5

    .prologue
    .line 357
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 358
    .local v0, "conn":Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;
    if-nez v0, :cond_5

    .line 371
    :goto_4
    return-void

    .line 361
    :cond_5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 363
    monitor-enter p0

    .line 365
    :try_start_9
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_13
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 370
    :goto_e
    :try_start_e
    monitor-exit p0

    goto :goto_4

    :catchall_10
    move-exception v2

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v2

    .line 366
    :catch_13
    move-exception v1

    .line 368
    .local v1, "iox":Ljava/io/IOException;
    :try_start_14
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v3, "Problem while shutting down connection."

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_10

    goto :goto_e
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 341
    monitor-enter p0

    .line 343
    :try_start_4
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v1, :cond_d

    .line 344
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_15
    .catchall {:try_start_4 .. :try_end_d} :catchall_28

    .line 350
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 351
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 353
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_25

    .line 354
    return-void

    .line 346
    :catch_15
    move-exception v0

    .line 348
    .local v0, "iox":Ljava/io/IOException;
    :try_start_16
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "Problem while shutting down manager."

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_28

    .line 350
    const/4 v1, 0x0

    :try_start_1f
    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 351
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    goto :goto_13

    .line 353
    .end local v0    # "iox":Ljava/io/IOException;
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_25

    throw v1

    .line 350
    :catchall_28
    move-exception v1

    const/4 v2, 0x0

    :try_start_2a
    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 351
    const/4 v2, 0x0

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    throw v1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_25
.end method
