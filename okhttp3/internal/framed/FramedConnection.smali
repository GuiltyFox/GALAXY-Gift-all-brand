.class public final Lokhttp3/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lokhttp3/Protocol;

.field final b:Z

.field c:J

.field d:J

.field e:Lokhttp3/internal/framed/Settings;

.field final f:Lokhttp3/internal/framed/Settings;

.field final g:Lokhttp3/internal/framed/Variant;

.field final h:Ljava/net/Socket;

.field final i:Lokhttp3/internal/framed/FrameWriter;

.field final j:Lokhttp3/internal/framed/FramedConnection$Reader;

.field private final m:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lokhttp3/internal/framed/PushObserver;

.field private w:I

.field private x:Z

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
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

    .line 55
    const-class v0, Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v8

    :goto_b
    sput-boolean v0, Lokhttp3/internal/framed/FramedConnection;->k:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp FramedConnection"

    .line 71
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/framed/FramedConnection;->l:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void

    :cond_28
    move v0, v2

    .line 55
    goto :goto_b
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V
    .registers 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->s:J

    .line 105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->c:J

    .line 114
    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    .line 120
    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    .line 122
    iput-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->x:Z

    .line 839
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->y:Ljava/util/Set;

    .line 131
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->a:Lokhttp3/Protocol;

    .line 132
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->b(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->v:Lokhttp3/internal/framed/PushObserver;

    .line 133
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->c(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->b:Z

    .line 134
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->d(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->m:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 136
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->c(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_f0

    move v0, v3

    :goto_4f
    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->q:I

    .line 137
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->c(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->a:Lokhttp3/Protocol;

    sget-object v4, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v4, :cond_63

    .line 138
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->q:I

    .line 141
    :cond_63
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->c(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v1, v3

    :cond_6a
    iput v1, p0, Lokhttp3/internal/framed/FramedConnection;->w:I

    .line 147
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->c(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 148
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    .line 151
    :cond_79
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->e(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->a:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_f3

    .line 154
    new-instance v0, Lokhttp3/internal/framed/Http2;

    invoke-direct {v0}, Lokhttp3/internal/framed/Http2;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->g:Lokhttp3/internal/framed/Variant;

    .line 156
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 158
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lokhttp3/internal/Util;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->t:Ljava/util/concurrent/ExecutorService;

    .line 160
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    .line 161
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    .line 168
    :goto_bd
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->f(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    .line 169
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->f(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->h:Ljava/net/Socket;

    .line 170
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->g:Lokhttp3/internal/framed/Variant;

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->g(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->b:Z

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/Variant;->a(Lokio/BufferedSink;Z)Lokhttp3/internal/framed/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    .line 172
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->g:Lokhttp3/internal/framed/Variant;

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->h(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;

    move-result-object v2

    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedConnection;->b:Z

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/Variant;->a(Lokio/BufferedSource;Z)Lokhttp3/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v0, p0, v1, v11}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->j:Lokhttp3/internal/framed/FramedConnection$Reader;

    .line 173
    return-void

    :cond_f0
    move v0, v1

    .line 136
    goto/16 :goto_4f

    .line 162
    :cond_f3
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->a:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_103

    .line 163
    new-instance v0, Lokhttp3/internal/framed/Spdy3;

    invoke-direct {v0}, Lokhttp3/internal/framed/Spdy3;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->g:Lokhttp3/internal/framed/Variant;

    .line 164
    iput-object v11, p0, Lokhttp3/internal/framed/FramedConnection;->t:Ljava/util/concurrent/ExecutorService;

    goto :goto_bd

    .line 166
    :cond_103
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->a:Lokhttp3/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .prologue
    .line 250
    if-nez p3, :cond_1d

    const/4 v3, 0x1

    .line 251
    :goto_3
    if-nez p4, :cond_1f

    const/4 v4, 0x1

    .line 256
    :goto_6
    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v9

    .line 257
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    .line 258
    :try_start_a
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->r:Z

    if-eqz v0, :cond_21

    .line 259
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    :try_start_19
    throw v0

    .line 278
    :catchall_1a
    move-exception v0

    monitor-exit v9
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1a

    throw v0

    .line 250
    :cond_1d
    const/4 v3, 0x0

    goto :goto_3

    .line 251
    :cond_1f
    const/4 v4, 0x0

    goto :goto_6

    .line 261
    :cond_21
    :try_start_21
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->q:I

    .line 262
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->q:I

    .line 263
    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 264
    if-eqz p3, :cond_42

    iget-wide v6, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-eqz v2, :cond_42

    iget-wide v6, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-nez v2, :cond_6b

    :cond_42
    const/4 v2, 0x1

    move v8, v2

    .line 265
    :goto_44
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->b()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 266
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/FramedConnection;->b(Z)V

    .line 269
    :cond_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_17

    .line 270
    if-nez p1, :cond_6e

    .line 271
    :try_start_5a
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lokhttp3/internal/framed/FrameWriter;->a(ZZIILjava/util/List;)V

    .line 278
    :goto_62
    monitor-exit v9
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_1a

    .line 280
    if-eqz v8, :cond_6a

    .line 281
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v1}, Lokhttp3/internal/framed/FrameWriter;->b()V

    .line 284
    :cond_6a
    return-object v0

    .line 264
    :cond_6b
    const/4 v2, 0x0

    move v8, v2

    goto :goto_44

    .line 273
    :cond_6e
    :try_start_6e
    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->b:Z

    if-eqz v2, :cond_7b

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_7b
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2, p1, v1, p2}, Lokhttp3/internal/framed/FrameWriter;->a(IILjava/util/List;)V
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_1a

    goto :goto_62
.end method

.method private a(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    monitor-enter p0

    .line 843
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 844
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->b:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 845
    monitor-exit p0

    .line 863
    :goto_13
    return-void

    .line 847
    :cond_14
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 848
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3e

    .line 849
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$4;

    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$4;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 848
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method private a(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 867
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$5;

    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/framed/FramedConnection$5;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method private a(ILokio/BufferedSource;IZ)V
    .registers 14

    .prologue
    .line 889
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 890
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->a(J)V

    .line 891
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    .line 892
    invoke-virtual {v5}, Lokio/Buffer;->b()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_38
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$6;

    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/FramedConnection$6;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method private a(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 449
    sget-boolean v0, Lokhttp3/internal/framed/FramedConnection;->k:Z

    if-nez v0, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 452
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_6a

    move-object v1, v2

    .line 459
    :goto_16
    monitor-enter p0

    .line 460
    :try_start_17
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 461
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    .line 462
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 463
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lokhttp3/internal/framed/FramedConnection;->b(Z)V

    move-object v5, v0

    .line 465
    :goto_3d
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->u:Ljava/util/Map;

    if-eqz v0, :cond_9a

    .line 466
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/Ping;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/Ping;

    .line 467
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->u:Ljava/util/Map;

    move-object v4, v0

    .line 469
    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_17 .. :try_end_5a} :catchall_6d

    .line 471
    if-eqz v5, :cond_76

    .line 472
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_5f
    if-ge v2, v6, :cond_75

    aget-object v1, v5, v2

    .line 474
    :try_start_63
    invoke-virtual {v1, p2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_70

    .line 472
    :cond_66
    :goto_66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5f

    .line 453
    :catch_6a
    move-exception v0

    move-object v1, v0

    .line 454
    goto :goto_16

    .line 469
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    .line 475
    :catch_70
    move-exception v1

    .line 476
    if-eqz v0, :cond_66

    move-object v0, v1

    goto :goto_66

    :cond_75
    move-object v1, v0

    .line 481
    :cond_76
    if-eqz v4, :cond_84

    .line 482
    array-length v2, v4

    move v0, v3

    :goto_7a
    if-ge v0, v2, :cond_84

    aget-object v3, v4, v0

    .line 483
    invoke-virtual {v3}, Lokhttp3/internal/framed/Ping;->c()V

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 489
    :cond_84
    :try_start_84
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_92

    move-object v0, v1

    .line 496
    :cond_8a
    :goto_8a
    :try_start_8a
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8f} :catch_98

    .line 501
    :goto_8f
    if-eqz v0, :cond_97

    throw v0

    .line 490
    :catch_92
    move-exception v0

    .line 491
    if-eqz v1, :cond_8a

    move-object v0, v1

    goto :goto_8a

    .line 502
    :cond_97
    return-void

    .line 497
    :catch_98
    move-exception v0

    goto :goto_8f

    :cond_9a
    move-object v4, v2

    goto :goto_59

    :cond_9c
    move-object v5, v2

    goto :goto_3d
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->a(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->c(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .registers 5

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->a(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->b(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method private a(ZIILokhttp3/internal/framed/Ping;)V
    .registers 14

    .prologue
    .line 393
    sget-object v8, Lokhttp3/internal/framed/FramedConnection;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$3;

    const-string/jumbo v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 394
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/FramedConnection$3;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/Ping;)V

    .line 393
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;I)Z
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->x:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedConnection;I)I
    .registers 2

    .prologue
    .line 55
    iput p1, p0, Lokhttp3/internal/framed/FramedConnection;->p:I

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->a(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .registers 4

    .prologue
    .line 201
    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_7
    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->s:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(ZIILokhttp3/internal/framed/Ping;)V
    .registers 7

    .prologue
    .line 405
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v1

    .line 407
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lokhttp3/internal/framed/Ping;->a()V

    .line 408
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lokhttp3/internal/framed/FrameWriter;->a(ZII)V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->r:Z

    return v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->r:Z

    return p1
.end method

.method static synthetic c(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lokhttp3/internal/framed/Ping;
    .registers 4

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->u:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Ping;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->c(I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method private c(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 10

    .prologue
    .line 910
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$7;

    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$7;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method static synthetic d(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->q:I

    return v0
.end method

.method private d(I)Z
    .registers 4

    .prologue
    .line 835
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->a:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->m:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->x:Z

    return v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->v:Lokhttp3/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->y:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->a:Lokhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized a(I)Lokhttp3/internal/framed/FramedStream;
    .registers 4

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->a(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .registers 12

    .prologue
    .line 361
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/internal/framed/FramedConnection$2;

    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/FramedConnection$2;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method a(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 10

    .prologue
    .line 346
    sget-object v6, Lokhttp3/internal/framed/FramedConnection;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$1;

    const-string/jumbo v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$1;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 354
    return-void
.end method

.method public a(IZLokio/Buffer;J)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 306
    cmp-long v0, p4, v8

    if-nez v0, :cond_33

    .line 307
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3, v1}, Lokhttp3/internal/framed/FrameWriter;->a(ZILokio/Buffer;I)V

    .line 335
    :cond_c
    return-void

    .line 327
    :cond_d
    :try_start_d
    iget-wide v2, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 328
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2}, Lokhttp3/internal/framed/FrameWriter;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 329
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    .line 330
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_5a

    .line 332
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 333
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    if-eqz p2, :cond_61

    cmp-long v0, p4, v8

    if-nez v0, :cond_61

    const/4 v0, 0x1

    :goto_30
    invoke-interface {v3, v0, p1, p3, v2}, Lokhttp3/internal/framed/FrameWriter;->a(ZILokio/Buffer;I)V

    .line 311
    :cond_33
    cmp-long v0, p4, v8

    if-lez v0, :cond_c

    .line 313
    monitor-enter p0

    .line 315
    :goto_38
    :try_start_38
    iget-wide v2, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_d

    .line 318
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 319
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_53} :catch_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_5a

    .line 323
    :catch_53
    move-exception v0

    .line 324
    :try_start_54
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 330
    :catchall_5a
    move-exception v0

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5a

    throw v0

    .line 321
    :cond_5d
    :try_start_5d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_53
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    goto :goto_38

    :cond_61
    move v0, v1

    .line 333
    goto :goto_30
.end method

.method a(J)V
    .registers 6

    .prologue
    .line 341
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->d:J

    .line 342
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 343
    :cond_e
    return-void
.end method

.method public a(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 6

    .prologue
    .line 426
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v1

    .line 428
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    .line 429
    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->r:Z

    if-eqz v0, :cond_b

    .line 430
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    .line 438
    :goto_a
    return-void

    .line 432
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->r:Z

    .line 433
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->p:I

    .line 434
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    .line 436
    :try_start_11
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    sget-object v3, Lokhttp3/internal/Util;->a:[B

    invoke-interface {v2, v0, p1, v3}, Lokhttp3/internal/framed/FrameWriter;->a(ILokhttp3/internal/framed/ErrorCode;[B)V

    .line 437
    monitor-exit v1

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0

    .line 434
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a
.end method

.method a(Z)V
    .registers 8

    .prologue
    const/high16 v3, 0x10000

    .line 517
    if-eqz p1, :cond_20

    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->a()V

    .line 519
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/FrameWriter;->b(Lokhttp3/internal/framed/Settings;)V

    .line 520
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v0, v3}, Lokhttp3/internal/framed/Settings;->f(I)I

    move-result v0

    .line 521
    if-eq v0, v3, :cond_20

    .line 522
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lokhttp3/internal/framed/FrameWriter;->a(IJ)V

    .line 525
    :cond_20
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->j:Lokhttp3/internal/framed/FramedConnection$Reader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 526
    return-void
.end method

.method public declared-synchronized b()I
    .registers 3

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->d(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(I)Lokhttp3/internal/framed/FramedStream;
    .registers 4

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;

    .line 193
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 194
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/FramedConnection;->b(Z)V

    .line 196
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 197
    monitor-exit p0

    return-object v0

    .line 192
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 4

    .prologue
    .line 357
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lokhttp3/internal/framed/FrameWriter;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 358
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->b()V

    .line 418
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 445
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->a:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    .line 446
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedConnection;->a(Z)V

    .line 510
    return-void
.end method
