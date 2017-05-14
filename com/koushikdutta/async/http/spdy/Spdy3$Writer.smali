.class final Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameWriter;


# instance fields
.field a:Lcom/koushikdutta/async/ByteBufferList;

.field b:Lcom/koushikdutta/async/ByteBufferList;

.field private final c:Lcom/koushikdutta/async/BufferedDataSink;

.field private final d:Z

.field private e:Z

.field private f:Lcom/koushikdutta/async/ByteBufferList;

.field private final g:Ljava/util/zip/Deflater;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;Z)V
    .registers 5

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->f:Lcom/koushikdutta/async/ByteBufferList;

    .line 366
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->g:Ljava/util/zip/Deflater;

    .line 469
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->a:Lcom/koushikdutta/async/ByteBufferList;

    .line 485
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->b:Lcom/koushikdutta/async/ByteBufferList;

    .line 369
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->c:Lcom/koushikdutta/async/BufferedDataSink;

    .line 370
    iput-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->d:Z

    .line 372
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->g:Ljava/util/zip/Deflater;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/Spdy3;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 373
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)",
            "Lcom/koushikdutta/async/ByteBufferList;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 487
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 488
    :cond_f
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 489
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 490
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_27
    if-ge v2, v4, :cond_7f

    .line 491
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 492
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->d()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 493
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->e()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 494
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 495
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->d()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 496
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->e()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_c3

    .line 498
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 499
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 500
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 501
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 490
    :goto_7a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_27

    .line 506
    :cond_7f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 507
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 508
    :goto_8f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 509
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 510
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    .line 511
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 512
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_8f

    .line 514
    :cond_bd
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 516
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->b:Lcom/koushikdutta/async/ByteBufferList;

    return-object v0

    :cond_c3
    move-object v0, v1

    goto :goto_7a
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 1

    .prologue
    .line 389
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method a(IILcom/koushikdutta/async/ByteBufferList;)V
    .registers 10

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->e:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_d
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    .line 474
    int-to-long v2, v0

    const-wide/32 v4, 0xffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_33

    .line 475
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_33
    const/16 v1, 0x100

    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 478
    const v2, 0x7fffffff

    and-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 479
    and-int/lit16 v2, p2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const v3, 0xffffff

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 480
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 481
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/koushikdutta/async/ByteBufferList;->b(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;

    .line 482
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->c:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 483
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 4
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
    .line 384
    return-void
.end method

.method public declared-synchronized a(IJ)V
    .registers 10

    .prologue
    .line 579
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->e:Z

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

    .line 580
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_38

    .line 581
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_38
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 588
    const v1, -0x7ffcfff7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 589
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 591
    long-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 593
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->c:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->f:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/ByteBufferList;->a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_6a
    .catchall {:try_start_1e .. :try_end_6a} :catchall_e

    .line 594
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    .registers 8

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->e:Z

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

    .line 450
    :cond_11
    :try_start_11
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 454
    :cond_1c
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 455
    const v1, -0x7ffcfffd

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 456
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 457
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 458
    iget v1, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->s:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 459
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 460
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->c:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->f:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/ByteBufferList;->a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_53
    .catchall {:try_start_11 .. :try_end_53} :catchall_e

    .line 461
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/koushikdutta/async/http/spdy/Settings;)V
    .registers 8

    .prologue
    const v5, 0xffffff

    const/4 v0, 0x0

    .line 521
    monitor-enter p0

    :try_start_5
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->e:Z

    if-eqz v1, :cond_15

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 524
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/Settings;->b()I

    move-result v1

    .line 525
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x4

    .line 526
    const/16 v3, 0x100

    invoke-static {v3}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 527
    const v4, -0x7ffcfffc

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 528
    and-int/2addr v2, v5

    or-int/lit8 v2, v2, 0x0

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 530
    :goto_38
    const/16 v1, 0xa

    if-gt v0, v1, :cond_5b

    .line 531
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/Settings;->a(I)Z

    move-result v1

    if-nez v1, :cond_45

    .line 530
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 532
    :cond_45
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/Settings;->c(I)I

    move-result v1

    .line 533
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v2, v0, v5

    or-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 534
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/spdy/Settings;->b(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_42

    .line 536
    :cond_5b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 537
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->c:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->f:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_6f
    .catchall {:try_start_15 .. :try_end_6f} :catchall_12

    .line 538
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 543
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->e:Z

    if-eqz v2, :cond_13

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

    .line 544
    :cond_13
    :try_start_13
    iget-boolean v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_27

    move v2, v0

    :goto_1a
    if-eq v3, v2, :cond_29

    .line 545
    :goto_1c
    if-eq p1, v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move v2, v1

    .line 544
    goto :goto_1a

    :cond_29
    move v0, v1

    goto :goto_1c

    .line 549
    :cond_2b
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 550
    const v1, -0x7ffcfffa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 551
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 552
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 553
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 554
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->c:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->f:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/ByteBufferList;->a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_58
    .catchall {:try_start_13 .. :try_end_58} :catchall_10

    .line 555
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILcom/koushikdutta/async/ByteBufferList;)V
    .registers 5

    .prologue
    .line 465
    monitor-enter p0

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 466
    :goto_4
    :try_start_4
    invoke-virtual {p0, p2, v0, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->a(IILcom/koushikdutta/async/ByteBufferList;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 467
    monitor-exit p0

    return-void

    .line 465
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .registers 13
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
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 395
    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->e:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_15
    :try_start_15
    invoke-direct {p0, p5}, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->a(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v3

    .line 397
    invoke-virtual {v3}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    add-int/lit8 v4, v0, 0xa

    .line 399
    if-eqz p1, :cond_67

    const/4 v0, 0x1

    move v2, v0

    :goto_23
    if-eqz p2, :cond_69

    const/4 v0, 0x2

    :goto_26
    or-int/2addr v0, v2

    .line 402
    const/16 v2, 0x100

    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 403
    const v5, -0x7ffcffff

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 404
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 405
    and-int v0, p3, v6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 406
    and-int v0, p4, v6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 407
    int-to-short v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 409
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->c:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/ByteBufferList;->b(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_65
    .catchall {:try_start_15 .. :try_end_65} :catchall_12

    .line 410
    monitor-exit p0

    return-void

    :cond_67
    move v2, v1

    .line 399
    goto :goto_23

    :cond_69
    move v0, v1

    goto :goto_26
.end method

.method public b()V
    .registers 1

    .prologue
    .line 378
    return-void
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 598
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Writer;->e:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 599
    monitor-exit p0

    return-void

    .line 598
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
