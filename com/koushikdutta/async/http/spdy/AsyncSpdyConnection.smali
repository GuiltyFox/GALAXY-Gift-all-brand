.class public Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
.super Ljava/lang/Object;
.source "AsyncSpdyConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;


# instance fields
.field a:Lcom/koushikdutta/async/AsyncSocket;

.field b:Lcom/koushikdutta/async/BufferedDataSink;

.field c:Lcom/koushikdutta/async/http/spdy/FrameReader;

.field d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

.field e:Lcom/koushikdutta/async/http/spdy/Variant;

.field f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/koushikdutta/async/http/Protocol;

.field h:Z

.field i:I

.field final j:Lcom/koushikdutta/async/http/spdy/Settings;

.field k:J

.field l:Lcom/koushikdutta/async/http/spdy/Settings;

.field m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    .line 33
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->h:Z

    .line 266
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->j:Lcom/koushikdutta/async/http/spdy/Settings;

    .line 423
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->l:Lcom/koushikdutta/async/http/spdy/Settings;

    .line 424
    iput-boolean v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->q:Z

    .line 271
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->g:Lcom/koushikdutta/async/http/Protocol;

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 273
    new-instance v0, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->b:Lcom/koushikdutta/async/BufferedDataSink;

    .line 275
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->c:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v0, :cond_5d

    .line 276
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->e:Lcom/koushikdutta/async/http/spdy/Variant;

    .line 281
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->e:Lcom/koushikdutta/async/http/spdy/Variant;

    invoke-interface {v0, p1, p0, v2}, Lcom/koushikdutta/async/http/spdy/Variant;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->c:Lcom/koushikdutta/async/http/spdy/FrameReader;

    .line 282
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->e:Lcom/koushikdutta/async/http/spdy/Variant;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->b:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Variant;->a(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    .line 285
    iput v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->p:I

    .line 286
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->d:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v0, :cond_52

    .line 287
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->p:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->p:I

    .line 289
    :cond_52
    iput v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->n:I

    .line 295
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->j:Lcom/koushikdutta/async/http/spdy/Settings;

    const/4 v1, 0x7

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v3, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->a(III)Lcom/koushikdutta/async/http/spdy/Settings;

    .line 297
    return-void

    .line 278
    :cond_5d
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->d:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v0, :cond_34

    .line 279
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->e:Lcom/koushikdutta/async/http/spdy/Variant;

    goto :goto_34
.end method

.method private a(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 49
    if-nez p3, :cond_d

    move v3, v4

    .line 50
    :goto_5
    if-nez p4, :cond_f

    .line 54
    :goto_7
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->m:Z

    if-eqz v0, :cond_11

    .line 55
    const/4 v0, 0x0

    .line 75
    :goto_c
    return-object v0

    :cond_d
    move v3, v0

    .line 49
    goto :goto_5

    :cond_f
    move v4, v0

    .line 50
    goto :goto_7

    .line 58
    :cond_11
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->p:I

    .line 59
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->p:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->p:I

    .line 60
    new-instance v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;-><init>(Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;IZZLjava/util/List;)V

    .line 61
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->i()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 62
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2f
    if-nez p1, :cond_43

    .line 67
    :try_start_31
    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move v6, v3

    move v7, v4

    move v8, v2

    move v9, p1

    move-object v10, p2

    invoke-interface/range {v5 .. v10}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(ZZIILjava/util/List;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_c

    .line 77
    :catch_3c
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 69
    :cond_43
    :try_start_43
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->h:Z

    if-eqz v1, :cond_50

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_50
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v1, p1, v2, p2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(IILjava/util/List;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_55} :catch_3c

    goto :goto_c
.end method

.method private a(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    .registers 6

    .prologue
    .line 469
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/koushikdutta/async/http/spdy/Ping;->a()V

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(ZII)V

    .line 471
    return-void
.end method

.method private b(I)Z
    .registers 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->g:Lcom/koushikdutta/async/http/Protocol;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->d:Lcom/koushikdutta/async/http/Protocol;

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

.method private declared-synchronized c(I)Lcom/koushikdutta/async/http/spdy/Ping;
    .registers 4

    .prologue
    .line 474
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->r:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->r:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Ping;
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


# virtual methods
.method public a(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 7

    .prologue
    const/high16 v3, 0x10000

    .line 304
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a()V

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->j:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(Lcom/koushikdutta/async/http/spdy/Settings;)V

    .line 306
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->j:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/spdy/Settings;->d(I)I

    move-result v0

    .line 307
    if-eq v0, v3, :cond_1e

    .line 308
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(IJ)V

    .line 310
    :cond_1e
    return-void
.end method

.method a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 84
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->i:I

    .line 85
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->i:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->j:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->d(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1f

    .line 87
    :try_start_14
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    const/4 v1, 0x0

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->i:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(IJ)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_20

    .line 92
    iput v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->i:I

    .line 94
    :cond_1f
    return-void

    .line 89
    :catch_20
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(IIIZ)V
    .registers 5

    .prologue
    .line 525
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "pushPromise"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(IJ)V
    .registers 6

    .prologue
    .line 514
    if-nez p1, :cond_6

    .line 515
    invoke-virtual {p0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a(J)V

    .line 521
    :cond_5
    :goto_5
    return-void

    .line 518
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 519
    if-eqz v0, :cond_5

    .line 520
    invoke-virtual {v0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a(J)V

    goto :goto_5
.end method

.method public a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    .registers 6

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 412
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 416
    :cond_f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 417
    if-eqz v0, :cond_29

    .line 418
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 420
    :cond_29
    return-void
.end method

.method public a(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .registers 8

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->m:Z

    .line 501
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 502
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 505
    if-le v1, p1, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->e()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/DataEmitter;

    new-instance v1, Ljava/io/IOException;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;->k:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 507
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 510
    :cond_49
    return-void
.end method

.method a(J)V
    .registers 6

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->k:J

    .line 452
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 453
    invoke-static {v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;)V

    goto :goto_f

    .line 455
    :cond_1f
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 539
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/DataEmitter;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 542
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 544
    :cond_28
    return-void
.end method

.method public a(ZII)V
    .registers 6

    .prologue
    .line 479
    if-eqz p1, :cond_c

    .line 480
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->c(I)Lcom/koushikdutta/async/http/spdy/Ping;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_b

    .line 482
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/Ping;->b()V

    .line 493
    :cond_b
    :goto_b
    return-void

    .line 487
    :cond_c
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_e
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_b

    .line 489
    :catch_12
    move-exception v0

    .line 490
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(ZILcom/koushikdutta/async/ByteBufferList;)V
    .registers 7

    .prologue
    .line 319
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 320
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 324
    :cond_f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 325
    if-nez v0, :cond_2f

    .line 327
    :try_start_1d
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->c:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v0, p2, v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_28

    .line 332
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 344
    :cond_27
    :goto_27
    return-void

    .line 329
    :catch_28
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 335
    :cond_2f
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    .line 336
    iget-object v2, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p3, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 337
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a(I)V

    .line 338
    iget-object v1, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 339
    if-eqz p1, :cond_27

    .line 340
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->d()V

    .line 342
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method public a(ZLcom/koushikdutta/async/http/spdy/Settings;)V
    .registers 8

    .prologue
    const/high16 v4, 0x10000

    .line 427
    const-wide/16 v0, 0x0

    .line 428
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->l:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v2, v4}, Lcom/koushikdutta/async/http/spdy/Settings;->d(I)I

    move-result v2

    .line 429
    if-eqz p1, :cond_11

    .line 430
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->l:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/Settings;->a()V

    .line 431
    :cond_11
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->l:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v3, p2}, Lcom/koushikdutta/async/http/spdy/Settings;->a(Lcom/koushikdutta/async/http/spdy/Settings;)V

    .line 433
    :try_start_16
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->b()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_4e

    .line 437
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->l:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/spdy/Settings;->d(I)I

    move-result v3

    .line 438
    const/4 v4, -0x1

    if-eq v3, v4, :cond_33

    if-eq v3, v2, :cond_33

    .line 439
    sub-int v0, v3, v2

    int-to-long v0, v0

    .line 440
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->q:Z

    if-nez v2, :cond_33

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a(J)V

    .line 442
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->q:Z

    :cond_33
    move-wide v2, v0

    .line 445
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 446
    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a(J)V

    goto :goto_3e

    .line 434
    :catch_4e
    move-exception v0

    .line 435
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 448
    :cond_55
    return-void
.end method

.method public a(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "push"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 357
    :cond_f
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->m:Z

    if-eqz v0, :cond_14

    .line 407
    :cond_13
    :goto_13
    return-void

    .line 359
    :cond_14
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 361
    if-nez v0, :cond_4c

    .line 363
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 365
    :try_start_28
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->c:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v0, p3, v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_13

    .line 368
    :catch_30
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 374
    :cond_37
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->o:I

    if-le p3, v0, :cond_13

    .line 377
    rem-int/lit8 v0, p3, 0x2

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->p:I

    rem-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_13

    .line 379
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "unexpected receive stream"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 390
    :cond_4c
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->b()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 392
    :try_start_52
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->c:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v0, p3, v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_59} :catch_63

    .line 397
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 394
    :catch_63
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 402
    :cond_6a
    invoke-virtual {v0, p5, p6}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 403
    if-eqz p2, :cond_13

    .line 404
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->f:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    goto :goto_13
.end method

.method public b()V
    .registers 3

    .prologue
    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 465
    return-void

    .line 462
    :catch_6
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
