.class public abstract Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;
.super Ljava/lang/Object;
.source "AbstractClientConnAdapter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private volatile b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 105
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 106
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->c:Z

    .line 107
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->d:Z

    .line 108
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->e:J

    .line 109
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 221
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 222
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->j()V

    .line 223
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 343
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 344
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_12

    .line 345
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    .prologue
    .line 313
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 314
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->e:J

    .line 318
    :goto_c
    return-void

    .line 316
    :cond_d
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->e:J

    goto :goto_c
.end method

.method public a(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .registers 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 230
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->j()V

    .line 231
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 232
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 238
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->j()V

    .line 239
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 240
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 214
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->j()V

    .line 215
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 216
    return-void
.end method

.method protected final a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V
    .registers 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->o()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_e

    .line 155
    :cond_8
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 157
    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 362
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 363
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 364
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_10

    .line 365
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    :cond_10
    return-void
.end method

.method public a(I)Z
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 207
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b()V
    .registers 5

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    .line 339
    :goto_5
    monitor-exit p0

    return-void

    .line 332
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->d:Z

    .line 333
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->j()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1a

    .line 335
    :try_start_d
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->e()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1d
    .catchall {:try_start_d .. :try_end_10} :catchall_1a

    .line 338
    :goto_10
    :try_start_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_5

    .line 329
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 336
    :catch_1d
    move-exception v0

    goto :goto_10
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 183
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->b(I)V

    .line 184
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 161
    if-nez v0, :cond_8

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_7
    return v0

    :cond_8
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->c()Z

    move-result v0

    goto :goto_7
.end method

.method public d()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    :cond_7
    :goto_7
    return v0

    .line 172
    :cond_8
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_7

    .line 177
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->d()Z

    move-result v0

    goto :goto_7
.end method

.method public f()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 257
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->f()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 262
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 263
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->g()I

    move-result v0

    return v0
.end method

.method public h_()V
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 201
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->h_()V

    .line 202
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->c:Z

    .line 302
    return-void
.end method

.method public declared-synchronized i_()V
    .registers 5

    .prologue
    .line 321
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_7

    .line 326
    :goto_5
    monitor-exit p0

    return-void

    .line 324
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->d:Z

    .line 325
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    goto :goto_5

    .line 321
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->c:Z

    .line 306
    return-void
.end method

.method public k()Ljavax/net/ssl/SSLSession;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 288
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->c()Z

    move-result v2

    if-nez v2, :cond_f

    .line 297
    :goto_e
    return-object v1

    .line 293
    :cond_f
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->i()Ljava/net/Socket;

    move-result-object v0

    .line 294
    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_1f

    .line 295
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_1d
    move-object v1, v0

    .line 297
    goto :goto_e

    :cond_1f
    move-object v0, v1

    goto :goto_1d
.end method

.method protected declared-synchronized l()V
    .registers 3

    .prologue
    .line 116
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 117
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->e:J
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 118
    monitor-exit p0

    return-void

    .line 116
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    return-object v0
.end method

.method protected n()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    return-object v0
.end method

.method protected o()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->d:Z

    return v0
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->c:Z

    return v0
.end method
