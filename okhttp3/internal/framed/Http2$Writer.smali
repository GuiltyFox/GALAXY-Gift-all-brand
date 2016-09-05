.class final Lokhttp3/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameWriter;


# instance fields
.field private final a:Lokio/BufferedSink;

.field private final b:Z

.field private final c:Lokio/Buffer;

.field private final d:Lokhttp3/internal/framed/Hpack$Writer;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .registers 5

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    .line 371
    iput-boolean p2, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Z

    .line 372
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Lokio/Buffer;

    .line 373
    new-instance v0, Lokhttp3/internal/framed/Hpack$Writer;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Lokio/Buffer;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokhttp3/internal/framed/Hpack$Writer;

    .line 374
    const/16 v0, 0x4000

    iput v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    .line 375
    return-void
.end method

.method private b(IJ)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 455
    :goto_2
    cmp-long v0, p2, v6

    if-lez v0, :cond_25

    .line 456
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 457
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 458
    const/16 v2, 0x9

    cmp-long v0, p2, v6

    if-nez v0, :cond_23

    const/4 v0, 0x4

    :goto_17
    invoke-virtual {p0, p1, v1, v2, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 459
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Lokio/Buffer;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    goto :goto_2

    .line 458
    :cond_23
    const/4 v0, 0x0

    goto :goto_17

    .line 461
    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 395
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->b:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_e

    if-nez v0, :cond_17

    .line 401
    :goto_15
    monitor-exit p0

    return-void

    .line 396
    :cond_17
    :try_start_17
    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 397
    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v0

    const-string/jumbo v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lokhttp3/internal/framed/Http2;->a()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 399
    :cond_3f
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-static {}, Lokhttp3/internal/framed/Http2;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->f()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 400
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_e

    goto :goto_15
.end method

.method a(IBLokio/Buffer;I)V
    .registers 9

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 491
    if-lez p4, :cond_c

    .line 492
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 494
    :cond_c
    return-void
.end method

.method a(IIBB)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lokhttp3/internal/framed/Http2$FrameLogger;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 569
    :cond_19
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    if-le p2, v0, :cond_36

    .line 570
    const-string/jumbo v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 572
    :cond_36
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 573
    :cond_4b
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/Http2;->a(Lokio/BufferedSink;I)V

    .line 574
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 575
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 576
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 577
    return-void
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 426
    :cond_11
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/Hpack$Writer;->a(Ljava/util/List;)V

    .line 428
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v2

    .line 429
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 430
    const/4 v4, 0x5

    .line 431
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_50

    const/4 v0, 0x4

    .line 432
    :goto_2d
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, p1, v5, v4, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 433
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v0, v4}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 434
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Lokio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 436
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_4e

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/framed/Http2$Writer;->b(IJ)V
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_e

    .line 437
    :cond_4e
    monitor-exit p0

    return-void

    .line 431
    :cond_50
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public declared-synchronized a(IJ)V
    .registers 8

    .prologue
    .line 549
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 550
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_30

    .line 551
    :cond_1e
    :try_start_1e
    const-string/jumbo v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 552
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 551
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 554
    :cond_30
    const/4 v0, 0x4

    .line 555
    const/16 v1, 0x8

    .line 556
    const/4 v2, 0x0

    .line 557
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 558
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 559
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_e

    .line 560
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 6

    .prologue
    .line 465
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 468
    :cond_1c
    const/4 v0, 0x4

    .line 469
    const/4 v1, 0x3

    .line 470
    const/4 v2, 0x0

    .line 471
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 472
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->s:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 473
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_e

    .line 474
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILokhttp3/internal/framed/ErrorCode;[B)V
    .registers 8

    .prologue
    .line 532
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 533
    :cond_11
    :try_start_11
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    const-string/jumbo v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 534
    :cond_21
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 535
    const/4 v1, 0x7

    .line 536
    const/4 v2, 0x0

    .line 537
    const/4 v3, 0x0

    .line 538
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 539
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 540
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->s:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 541
    array-length v0, p3

    if-lez v0, :cond_3e

    .line 542
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->c([B)Lokio/BufferedSink;

    .line 544
    :cond_3e
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_e

    .line 545
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lokhttp3/internal/framed/Settings;)V
    .registers 6

    .prologue
    .line 383
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 384
    :cond_11
    :try_start_11
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->e(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    .line 385
    const/4 v0, 0x0

    .line 386
    const/4 v1, 0x4

    .line 387
    const/4 v2, 0x1

    .line 388
    const/4 v3, 0x0

    .line 389
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 390
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_e

    .line 391
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 519
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 520
    :cond_12
    const/16 v1, 0x8

    .line 521
    const/4 v2, 0x6

    .line 522
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    .line 523
    :cond_18
    const/4 v3, 0x0

    .line 524
    :try_start_19
    invoke-virtual {p0, v3, v1, v2, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 525
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 526
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 527
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_f

    .line 528
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
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_d
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->d:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/Hpack$Writer;->a(Ljava/util/List;)V

    .line 443
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v2

    .line 444
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 445
    const/4 v4, 0x1

    .line 446
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_43

    const/4 v0, 0x4

    .line 447
    :goto_27
    if-eqz p1, :cond_2c

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 448
    :cond_2c
    invoke-virtual {p0, p2, v1, v4, v0}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 449
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->c:Lokio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 451
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_42

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, Lokhttp3/internal/framed/Http2$Writer;->b(IJ)V

    .line 452
    :cond_42
    return-void

    .line 446
    :cond_43
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public declared-synchronized a(ZILokio/Buffer;I)V
    .registers 7

    .prologue
    .line 482
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 483
    :cond_11
    const/4 v0, 0x0

    .line 484
    if-eqz p1, :cond_16

    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 485
    :cond_16
    :try_start_16
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Writer;->a(IBLokio/Buffer;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_e

    .line 486
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
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

    .line 407
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_19
    invoke-virtual {p0, p1, p3, p5}, Lokhttp3/internal/framed/Http2$Writer;->a(ZILjava/util/List;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_9

    .line 409
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 379
    :cond_11
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 380
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lokhttp3/internal/framed/Settings;)V
    .registers 8

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 497
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

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

    .line 498
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 499
    const/4 v3, 0x4

    .line 500
    const/4 v4, 0x0

    .line 501
    const/4 v5, 0x0

    .line 502
    invoke-virtual {p0, v5, v0, v3, v4}, Lokhttp3/internal/framed/Http2$Writer;->a(IIBB)V

    .line 503
    :goto_1f
    const/16 v0, 0xa

    if-ge v2, v0, :cond_43

    .line 504
    invoke-virtual {p1, v2}, Lokhttp3/internal/framed/Settings;->a(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 503
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 506
    :cond_2c
    if-ne v2, v1, :cond_3e

    .line 507
    const/4 v0, 0x3

    .line 511
    :goto_2f
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->h(I)Lokio/BufferedSink;

    .line 512
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-virtual {p1, v2}, Lokhttp3/internal/framed/Settings;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    goto :goto_29

    .line 508
    :cond_3e
    const/4 v0, 0x7

    if-ne v2, v0, :cond_4a

    move v0, v1

    .line 509
    goto :goto_2f

    .line 514
    :cond_43
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_10

    .line 515
    monitor-exit p0

    return-void

    :cond_4a
    move v0, v2

    goto :goto_2f
.end method

.method public c()I
    .registers 2

    .prologue
    .line 477
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->e:I

    return v0
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 563
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->f:Z

    .line 564
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 565
    monitor-exit p0

    return-void

    .line 563
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
