.class final Lokhttp3/internal/framed/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameWriter;


# instance fields
.field private final a:Lokio/BufferedSink;

.field private final b:Lokio/Buffer;

.field private final c:Lokio/BufferedSink;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .registers 6

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    .line 296
    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->d:Z

    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    sget-object v1, Lokhttp3/internal/framed/Spdy3;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->b:Lokio/Buffer;

    .line 301
    new-instance v1, Lokio/DeflaterSink;

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->b:Lokio/Buffer;

    invoke-direct {v1, v2, v0}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    .line 302
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 410
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_41

    .line 411
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->h:Lokio/ByteString;

    .line 412
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 413
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->b(Lokio/ByteString;)Lokio/BufferedSink;

    .line 414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->i:Lokio/ByteString;

    .line 415
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 416
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->b(Lokio/ByteString;)Lokio/BufferedSink;

    .line 410
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 418
    :cond_41
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 419
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 1

    .prologue
    .line 316
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 4
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
    .line 312
    return-void
.end method

.method a(IILokio/Buffer;I)V
    .registers 9

    .prologue
    .line 397
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_d
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_2f
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 402
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 403
    if-lez p4, :cond_4e

    .line 404
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lokio/BufferedSink;->a_(Lokio/Buffer;J)V

    .line 406
    :cond_4e
    return-void
.end method

.method public declared-synchronized a(IJ)V
    .registers 8

    .prologue
    .line 471
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

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

    .line 472
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_38

    .line 473
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

    .line 479
    :cond_38
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 480
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 481
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 482
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 483
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_e

    .line 484
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 5

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

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

    .line 374
    :cond_11
    :try_start_11
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 378
    :cond_1c
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 379
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 380
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 381
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->t:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 382
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_e

    .line 383
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILokhttp3/internal/framed/ErrorCode;[B)V
    .registers 6

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

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

    .line 456
    :cond_11
    :try_start_11
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1f
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 463
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 464
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 465
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->u:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 466
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_e

    .line 467
    monitor-exit p0

    return-void
.end method

.method public a(Lokhttp3/internal/framed/Settings;)V
    .registers 2

    .prologue
    .line 306
    return-void
.end method

.method public declared-synchronized a(ZII)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 441
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

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

    .line 442
    :cond_13
    :try_start_13
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_27

    move v2, v0

    :goto_1a
    if-eq v3, v2, :cond_29

    .line 443
    :goto_1c
    if-eq p1, v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move v2, v1

    .line 442
    goto :goto_1a

    :cond_29
    move v0, v1

    goto :goto_1c

    .line 447
    :cond_2b
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 448
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 449
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 450
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_10

    .line 451
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILokio/Buffer;I)V
    .registers 6

    .prologue
    .line 391
    monitor-enter p0

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 392
    :goto_4
    :try_start_4
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Spdy3$Writer;->a(IILokio/Buffer;I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 393
    monitor-exit p0

    return-void

    .line 391
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
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    const/4 v0, 0x0

    .line 326
    monitor-enter p0

    :try_start_5
    iget-boolean v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

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

    .line 327
    :cond_15
    :try_start_15
    invoke-direct {p0, p5}, Lokhttp3/internal/framed/Spdy3$Writer;->a(Ljava/util/List;)V

    .line 328
    const-wide/16 v2, 0xa

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->b:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 330
    if-eqz p1, :cond_61

    const/4 v1, 0x1

    :goto_25
    if-eqz p2, :cond_28

    const/4 v0, 0x2

    :cond_28
    or-int/2addr v0, v1

    .line 333
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v3, -0x7ffcffff

    invoke-interface {v1, v3}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 334
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 335
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    and-int v1, p3, v6

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 336
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    and-int v1, p4, v6

    invoke-interface {v0, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 337
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lokio/BufferedSink;->h(I)Lokio/BufferedSink;

    .line 338
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->b:Lokio/Buffer;

    invoke-interface {v0, v1}, Lokio/BufferedSink;->a(Lokio/Source;)J

    .line 339
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_5f
    .catchall {:try_start_15 .. :try_end_5f} :catchall_12

    .line 340
    monitor-exit p0

    return-void

    :cond_61
    move v1, v0

    .line 330
    goto :goto_25
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

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

    .line 320
    :cond_11
    :try_start_11
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 321
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lokhttp3/internal/framed/Settings;)V
    .registers 7

    .prologue
    const v4, 0xffffff

    .line 422
    monitor-enter p0

    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 425
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->b()I

    move-result v0

    .line 426
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    .line 427
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 428
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 429
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 430
    const/4 v0, 0x0

    :goto_32
    const/16 v1, 0xa

    if-gt v0, v1, :cond_59

    .line 431
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->a(I)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 430
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 432
    :cond_3f
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->c(I)I

    move-result v1

    .line 433
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    .line 434
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->g(I)Lokio/BufferedSink;

    goto :goto_3c

    .line 436
    :cond_59
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_5e
    .catchall {:try_start_14 .. :try_end_5e} :catchall_11

    .line 437
    monitor-exit p0

    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 487
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->e:Z

    .line 488
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->a:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->c:Lokio/BufferedSink;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 489
    monitor-exit p0

    return-void

    .line 487
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
