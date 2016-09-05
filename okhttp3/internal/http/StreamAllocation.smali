.class public final Lokhttp3/internal/http/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final a:Lokhttp3/Address;

.field private b:Lokhttp3/Route;

.field private final c:Lokhttp3/ConnectionPool;

.field private final d:Lokhttp3/internal/http/RouteSelector;

.field private e:I

.field private f:Lokhttp3/internal/io/RealConnection;

.field private g:Z

.field private h:Z

.field private i:Lokhttp3/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V
    .registers 5

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    .line 85
    iput-object p2, p0, Lokhttp3/internal/http/StreamAllocation;->a:Lokhttp3/Address;

    .line 86
    new-instance v0, Lokhttp3/internal/http/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/http/StreamAllocation;->f()Lokhttp3/internal/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/http/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/RouteDatabase;)V

    iput-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->d:Lokhttp3/internal/http/RouteSelector;

    .line 87
    return-void
.end method

.method private a(IIIZ)Lokhttp3/internal/io/RealConnection;
    .registers 11

    .prologue
    .line 151
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 152
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/http/StreamAllocation;->g:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    .line 153
    :cond_13
    :try_start_13
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stream != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_20
    iget-boolean v0, p0, Lokhttp3/internal/http/StreamAllocation;->h:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2d
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    .line 157
    if-eqz v0, :cond_37

    iget-boolean v2, v0, Lokhttp3/internal/io/RealConnection;->i:Z

    if-nez v2, :cond_37

    .line 158
    monitor-exit v1

    .line 191
    :goto_36
    return-object v0

    .line 162
    :cond_37
    sget-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/http/StreamAllocation;->a:Lokhttp3/Address;

    invoke-virtual {v0, v2, v3, p0}, Lokhttp3/internal/Internal;->a(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_47

    .line 164
    iput-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    .line 165
    monitor-exit v1

    goto :goto_36

    .line 168
    :cond_47
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->b:Lokhttp3/Route;

    .line 169
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_13 .. :try_end_4a} :catchall_10

    .line 171
    if-nez v0, :cond_9d

    .line 172
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->d:Lokhttp3/internal/http/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/http/RouteSelector;->b()Lokhttp3/Route;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 174
    :try_start_55
    iput-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->b:Lokhttp3/Route;

    .line 175
    const/4 v2, 0x0

    iput v2, p0, Lokhttp3/internal/http/StreamAllocation;->e:I

    .line 176
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_80

    move-object v1, v0

    .line 178
    :goto_5c
    new-instance v0, Lokhttp3/internal/io/RealConnection;

    invoke-direct {v0, v1}, Lokhttp3/internal/io/RealConnection;-><init>(Lokhttp3/Route;)V

    .line 179
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/StreamAllocation;->a(Lokhttp3/internal/io/RealConnection;)V

    .line 181
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 182
    :try_start_67
    sget-object v2, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    invoke-virtual {v2, v3, v0}, Lokhttp3/internal/Internal;->b(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)V

    .line 183
    iput-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    .line 184
    iget-boolean v2, p0, Lokhttp3/internal/http/StreamAllocation;->h:Z

    if-eqz v2, :cond_83

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :catchall_7d
    move-exception v0

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_7d

    throw v0

    .line 176
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    .line 185
    :cond_83
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_7d

    .line 187
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->a:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->f()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/io/RealConnection;->a(IIILjava/util/List;Z)V

    .line 189
    invoke-direct {p0}, Lokhttp3/internal/http/StreamAllocation;->f()Lokhttp3/internal/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/io/RealConnection;->a()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/RouteDatabase;->b(Lokhttp3/Route;)V

    goto :goto_36

    :cond_9d
    move-object v1, v0

    goto :goto_5c
.end method

.method private a(ZZZ)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 234
    .line 235
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 236
    if-eqz p3, :cond_9

    .line 237
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    .line 239
    :cond_9
    if-eqz p2, :cond_e

    .line 240
    const/4 v2, 0x1

    iput-boolean v2, p0, Lokhttp3/internal/http/StreamAllocation;->g:Z

    .line 242
    :cond_e
    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    if-eqz v2, :cond_4f

    .line 243
    if-eqz p1, :cond_19

    .line 244
    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/io/RealConnection;->i:Z

    .line 246
    :cond_19
    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lokhttp3/internal/http/StreamAllocation;->g:Z

    if-nez v2, :cond_27

    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    iget-boolean v2, v2, Lokhttp3/internal/io/RealConnection;->i:Z

    if-eqz v2, :cond_4f

    .line 247
    :cond_27
    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    invoke-direct {p0, v2}, Lokhttp3/internal/http/StreamAllocation;->b(Lokhttp3/internal/io/RealConnection;)V

    .line 248
    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    iget-object v2, v2, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 249
    iget-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v2, Lokhttp3/internal/io/RealConnection;->j:J

    .line 250
    sget-object v2, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    iget-object v4, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/Internal;->a(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 251
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    .line 254
    :cond_4c
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    .line 257
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_5a

    .line 258
    if-eqz v0, :cond_59

    .line 259
    invoke-virtual {v0}, Lokhttp3/internal/io/RealConnection;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 261
    :cond_59
    return-void

    .line 257
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method private b(IIIZZ)Lokhttp3/internal/io/RealConnection;
    .registers 9

    .prologue
    .line 123
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/http/StreamAllocation;->a(IIIZ)Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 128
    :try_start_7
    iget v2, v0, Lokhttp3/internal/io/RealConnection;->d:I

    if-nez v2, :cond_d

    .line 129
    monitor-exit v1

    .line 140
    :cond_c
    return-object v0

    .line 131
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_18

    .line 135
    invoke-virtual {v0, p5}, Lokhttp3/internal/io/RealConnection;->a(Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 136
    invoke-virtual {p0}, Lokhttp3/internal/http/StreamAllocation;->d()V

    goto :goto_0

    .line 131
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private b(Lokhttp3/internal/io/RealConnection;)V
    .registers 5

    .prologue
    .line 319
    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_22

    .line 320
    iget-object v0, p1, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 321
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 322
    iget-object v0, p1, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    return-void

    .line 319
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 326
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private f()Lokhttp3/internal/RouteDatabase;
    .registers 3

    .prologue
    .line 213
    sget-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->a(Lokhttp3/ConnectionPool;)Lokhttp3/internal/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/internal/http/HttpStream;
    .registers 3

    .prologue
    .line 207
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 208
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    monitor-exit v1

    return-object v0

    .line 209
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(IIIZZ)Lokhttp3/internal/http/HttpStream;
    .registers 11

    .prologue
    .line 93
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/http/StreamAllocation;->b(IIIZZ)Lokhttp3/internal/io/RealConnection;

    move-result-object v1

    .line 97
    iget-object v0, v1, Lokhttp3/internal/io/RealConnection;->c:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_16

    .line 98
    new-instance v0, Lokhttp3/internal/http/Http2xStream;

    iget-object v1, v1, Lokhttp3/internal/io/RealConnection;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http2xStream;-><init>(Lokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/framed/FramedConnection;)V

    .line 106
    :goto_f
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_3f

    .line 107
    :try_start_12
    iput-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    .line 108
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_46

    return-object v0

    .line 100
    :cond_16
    :try_start_16
    invoke-virtual {v1}, Lokhttp3/internal/io/RealConnection;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 101
    iget-object v0, v1, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 102
    iget-object v0, v1, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v2, p3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 103
    new-instance v0, Lokhttp3/internal/http/Http1xStream;

    iget-object v2, v1, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    iget-object v1, v1, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    invoke-direct {v0, p0, v2, v1}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/internal/http/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3e} :catch_3f

    goto :goto_f

    .line 110
    :catch_3f
    move-exception v0

    .line 111
    new-instance v1, Lokhttp3/internal/http/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 109
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_49} :catch_3f
.end method

.method public a(Ljava/io/IOException;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 279
    .line 281
    iget-object v3, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v3

    .line 282
    :try_start_5
    instance-of v0, p1, Lokhttp3/internal/framed/StreamResetException;

    if-eqz v0, :cond_2a

    .line 283
    check-cast p1, Lokhttp3/internal/framed/StreamResetException;

    .line 284
    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->a:Lokhttp3/internal/framed/ErrorCode;

    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->k:Lokhttp3/internal/framed/ErrorCode;

    if-ne v0, v4, :cond_17

    .line 285
    iget v0, p0, Lokhttp3/internal/http/StreamAllocation;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/StreamAllocation;->e:I

    .line 289
    :cond_17
    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->a:Lokhttp3/internal/framed/ErrorCode;

    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->k:Lokhttp3/internal/framed/ErrorCode;

    if-ne v0, v4, :cond_21

    iget v0, p0, Lokhttp3/internal/http/StreamAllocation;->e:I

    if-le v0, v2, :cond_50

    .line 291
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->b:Lokhttp3/Route;

    :cond_24
    :goto_24
    move v0, v2

    .line 304
    :goto_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_4d

    .line 306
    invoke-direct {p0, v0, v1, v2}, Lokhttp3/internal/http/StreamAllocation;->a(ZZZ)V

    .line 307
    return-void

    .line 293
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/io/RealConnection;->e()Z

    move-result v0

    if-nez v0, :cond_50

    .line 297
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    iget v0, v0, Lokhttp3/internal/io/RealConnection;->d:I

    if-nez v0, :cond_24

    .line 298
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->b:Lokhttp3/Route;

    if-eqz v0, :cond_49

    if-eqz p1, :cond_49

    .line 299
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->d:Lokhttp3/internal/http/RouteSelector;

    iget-object v4, p0, Lokhttp3/internal/http/StreamAllocation;->b:Lokhttp3/Route;

    invoke-virtual {v0, v4, p1}, Lokhttp3/internal/http/RouteSelector;->a(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 301
    :cond_49
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->b:Lokhttp3/Route;

    goto :goto_24

    .line 304
    :catchall_4d
    move-exception v0

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_2a .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    move v0, v1

    goto :goto_25
.end method

.method public a(Lokhttp3/internal/io/RealConnection;)V
    .registers 4

    .prologue
    .line 314
    iget-object v0, p1, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method public a(ZLokhttp3/internal/http/HttpStream;)V
    .registers 7

    .prologue
    .line 195
    iget-object v1, p0, Lokhttp3/internal/http/StreamAllocation;->c:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 196
    if-eqz p2, :cond_9

    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    if-eq p2, v0, :cond_33

    .line 197
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/http/StreamAllocation;->i:Lokhttp3/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v0

    .line 199
    :cond_33
    if-nez p1, :cond_3d

    .line 200
    :try_start_35
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;

    iget v2, v0, Lokhttp3/internal/io/RealConnection;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/internal/io/RealConnection;->d:I

    .line 202
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_30

    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/http/StreamAllocation;->a(ZZZ)V

    .line 204
    return-void
.end method

.method public declared-synchronized b()Lokhttp3/internal/io/RealConnection;
    .registers 2

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->f:Lokhttp3/internal/io/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lokhttp3/internal/http/StreamAllocation;->a(ZZZ)V

    .line 222
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lokhttp3/internal/http/StreamAllocation;->a(ZZZ)V

    .line 227
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->b:Lokhttp3/Route;

    if-nez v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->d:Lokhttp3/internal/http/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/http/RouteSelector;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lokhttp3/internal/http/StreamAllocation;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
