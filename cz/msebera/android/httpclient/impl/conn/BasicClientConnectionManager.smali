.class public Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;
.super Ljava/lang/Object;
.source "BasicClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final c:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field private final d:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field private e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

.field private f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 110
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 4

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 104
    const-string/jumbo v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->c:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 106
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->d:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 107
    return-void
.end method

.method private a(Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .registers 5

    .prologue
    .line 182
    :try_start_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 188
    :cond_3
    :goto_3
    return-void

    .line 183
    :catch_4
    move-exception v0

    .line 184
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "I/O exception shutting down connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private c()V
    .registers 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->g:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Connection manager has been shut down"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 151
    return-void

    .line 150
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public final a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .registers 4

    .prologue
    .line 134
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->c:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 11

    .prologue
    .line 191
    instance-of v0, p1, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    const-string/jumbo v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    move-object v0, p1

    .line 193
    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 194
    monitor-enter v0

    .line 195
    :try_start_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 196
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Releasing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 198
    :cond_2d
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->l()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v1

    if-nez v1, :cond_35

    .line 199
    monitor-exit v0

    .line 233
    :goto_34
    return-void

    .line 201
    :cond_35
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->n()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    .line 202
    if-ne v1, p0, :cond_50

    const/4 v1, 0x1

    :goto_3c
    const-string/jumbo v2, "Connection not obtained from this manager"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 203
    monitor-enter p0
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_4d

    .line 204
    :try_start_43
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->g:Z

    if-eqz v1, :cond_52

    .line 205
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 206
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_e4

    :try_start_4b
    monitor-exit v0

    goto :goto_34

    .line 232
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4d

    throw v1

    .line 202
    :cond_50
    const/4 v1, 0x0

    goto :goto_3c

    .line 209
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->c()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->o()Z

    move-result v1

    if-nez v1, :cond_61

    .line 210
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 212
    :cond_61
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->o()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 213
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz p4, :cond_ca

    move-object v1, p4

    :goto_6c
    invoke-virtual {v2, p2, p3, v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 214
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 216
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_cd

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :goto_9c
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connection can be kept alive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_b5
    .catchall {:try_start_52 .. :try_end_b5} :catchall_d1

    .line 225
    :cond_b5
    :try_start_b5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->m()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 227
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->d()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 231
    :cond_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_b5 .. :try_end_c7} :catchall_e4

    .line 232
    :try_start_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_4d

    goto/16 :goto_34

    .line 213
    :cond_ca
    :try_start_ca
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_6c

    .line 219
    :cond_cd
    const-string/jumbo v1, "indefinitely"
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_d1

    goto :goto_9c

    .line 225
    :catchall_d1
    move-exception v1

    :try_start_d2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->m()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 226
    const/4 v2, 0x0

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 227
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->d()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    :cond_e3
    throw v1

    .line 231
    :catchall_e4
    move-exception v1

    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_d2 .. :try_end_e6} :catchall_e4

    :try_start_e6
    throw v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_4d
.end method

.method b(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .registers 12

    .prologue
    .line 154
    const-string/jumbo v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    monitor-enter p0

    .line 156
    :try_start_7
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->c()V

    .line 157
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 158
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get connection for route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 160
    :cond_2b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    if-nez v0, :cond_99

    const/4 v0, 0x1

    :goto_30
    const-string/jumbo v1, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 162
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->e()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 165
    :cond_4e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_70

    .line 166
    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 167
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->d:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->a()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v5

    .line 168
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-wide/16 v6, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 170
    :cond_70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a(J)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 172
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->e()V

    .line 173
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->h()V

    .line 175
    :cond_8a
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->d:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-direct {v0, p0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 176
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    monitor-exit p0

    return-object v0

    .line 160
    :cond_99
    const/4 v0, 0x0

    goto :goto_30

    .line 177
    :catchall_9b
    move-exception v0

    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_7 .. :try_end_9d} :catchall_9b

    throw v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 263
    monitor-enter p0

    .line 264
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->g:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1d

    .line 266
    :try_start_4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_d

    .line 267
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->e()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_15

    .line 270
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 273
    monitor-exit p0

    .line 274
    return-void

    .line 270
    :catchall_15
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->e:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->f:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    throw v0

    .line 273
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->b()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 120
    return-void

    .line 118
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
