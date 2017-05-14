.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameWriter;


# instance fields
.field private final a:Lcom/koushikdutta/async/BufferedDataSink;

.field private final b:Z

.field private final c:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

.field private d:Z

.field private final e:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;Z)V
    .registers 4

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    .line 414
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    .line 415
    iput-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->b:Z

    .line 416
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->c:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    .line 417
    return-void
.end method

.method private a(Lcom/koushikdutta/async/ByteBufferList;I)V
    .registers 6

    .prologue
    .line 500
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 501
    const/16 v0, 0x3fff

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 502
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    sub-int/2addr v0, v1

    .line 503
    const/16 v2, 0x9

    if-nez v0, :cond_2a

    const/4 v0, 0x4

    :goto_1a
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 504
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 505
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_0

    .line 503
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1a

    .line 507
    :cond_2c
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6

    .prologue
    .line 431
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 432
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->b:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_e

    if-nez v0, :cond_17

    .line 437
    :goto_15
    monitor-exit p0

    return-void

    .line 433
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 434
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a()Ljava/util/logging/Logger;

    move-result-object v0

    const-string/jumbo v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/spdy/ByteString;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 436
    :cond_3f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_e

    goto :goto_15
.end method

.method a(IBLcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 537
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0, p3}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 538
    return-void
.end method

.method a(IIBB)V
    .registers 10

    .prologue
    const/16 v2, 0x3fff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 619
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 620
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 621
    :cond_1b
    if-le p2, v2, :cond_34

    .line 622
    const-string/jumbo v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 624
    :cond_34
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_49

    .line 625
    const-string/jumbo v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 626
    :cond_49
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 627
    and-int/lit16 v1, p2, 0x3fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p4, 0xff

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 628
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 629
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 630
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 631
    return-void
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .registers 12
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
    .line 465
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 466
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->c:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    invoke-virtual {v0, p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->a(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    int-to-long v2, v0

    .line 469
    const-wide/16 v4, 0x3ffb

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 470
    const/4 v5, 0x5

    .line 471
    int-to-long v6, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_60

    const/4 v0, 0x4

    .line 472
    :goto_2a
    add-int/lit8 v6, v4, 0x4

    invoke-virtual {p0, p1, v6, v5, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 473
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 474
    const v5, 0x7fffffff

    and-int/2addr v5, p2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 476
    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v5, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 477
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0, v4}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 478
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v5}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 480
    int-to-long v4, v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_5e

    invoke-direct {p0, v1, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(Lcom/koushikdutta/async/ByteBufferList;I)V
    :try_end_5e
    .catchall {:try_start_11 .. :try_end_5e} :catchall_e

    .line 481
    :cond_5e
    monitor-exit p0

    return-void

    .line 471
    :cond_60
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public declared-synchronized a(IJ)V
    .registers 8

    .prologue
    .line 598
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 599
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_30

    .line 600
    :cond_1e
    :try_start_1e
    const-string/jumbo v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 603
    :cond_30
    const/4 v0, 0x4

    .line 604
    const/16 v1, 0x8

    .line 605
    const/4 v2, 0x0

    .line 606
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 607
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 608
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 610
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_e

    .line 611
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    .registers 6

    .prologue
    .line 512
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_11
    :try_start_11
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 515
    :cond_1c
    const/4 v0, 0x4

    .line 516
    const/4 v1, 0x3

    .line 517
    const/4 v2, 0x0

    .line 518
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 519
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 520
    iget v1, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->r:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 522
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_e

    .line 523
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/koushikdutta/async/http/spdy/Settings;)V
    .registers 8

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 542
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 543
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/Settings;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 544
    const/4 v3, 0x4

    .line 545
    const/4 v4, 0x0

    .line 546
    const/4 v5, 0x0

    .line 547
    invoke-virtual {p0, v5, v0, v3, v4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 548
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 549
    :goto_2b
    const/16 v0, 0xa

    if-ge v2, v0, :cond_4c

    .line 550
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->a(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 549
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 552
    :cond_38
    if-ne v2, v1, :cond_47

    const/4 v0, 0x3

    .line 554
    :goto_3b
    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->b(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_35

    .line 553
    :cond_47
    const/4 v0, 0x7

    if-ne v2, v0, :cond_5c

    move v0, v1

    goto :goto_3b

    .line 557
    :cond_4c
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 558
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_5a
    .catchall {:try_start_13 .. :try_end_5a} :catchall_10

    .line 559
    monitor-exit p0

    return-void

    :cond_5c
    move v0, v2

    goto :goto_3b
.end method

.method public declared-synchronized a(ZII)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 564
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 565
    :cond_12
    const/16 v1, 0x8

    .line 566
    const/4 v2, 0x6

    .line 567
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    .line 568
    :cond_18
    const/4 v3, 0x0

    .line 569
    :try_start_19
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 570
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 573
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 574
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_f

    .line 575
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 528
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 529
    :cond_11
    const/4 v0, 0x0

    .line 530
    if-eqz p1, :cond_16

    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 531
    :cond_16
    :try_start_16
    invoke-virtual {p0, p2, v0, p3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IBLcom/koushikdutta/async/ByteBufferList;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_e

    .line 532
    monitor-exit p0

    return-void
.end method

.method a(ZILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_d
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->c:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    invoke-virtual {v0, p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->a(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    int-to-long v2, v0

    .line 488
    const-wide/16 v4, 0x3fff

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 489
    const/4 v5, 0x1

    .line 490
    int-to-long v6, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_43

    const/4 v0, 0x4

    .line 491
    :goto_26
    if-eqz p1, :cond_2b

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 492
    :cond_2b
    invoke-virtual {p0, p2, v4, v5, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V

    .line 493
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0, v4}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 494
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v5}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 496
    int-to-long v4, v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_42

    invoke-direct {p0, v1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 497
    :cond_42
    return-void

    .line 490
    :cond_43
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    monitor-enter p0

    if-eqz p2, :cond_c

    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 444
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_19
    invoke-virtual {p0, p1, p3, p5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(ZILjava/util/List;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_9

    .line 446
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .registers 5

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_11
    const/4 v0, 0x0

    .line 423
    const/4 v1, 0x4

    .line 424
    const/4 v2, 0x1

    .line 425
    const/4 v3, 0x0

    .line 426
    :try_start_15
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->a(IIBB)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_e

    .line 427
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 615
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->d:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 616
    monitor-exit p0

    return-void

    .line 615
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
