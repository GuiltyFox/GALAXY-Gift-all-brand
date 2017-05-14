.class final Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;
.super Ljava/lang/Object;
.source "HpackDraft08.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;
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

    .line 440
    new-instance v4, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v4}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 442
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 443
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_11
    if-ge v2, v5, :cond_75

    .line 444
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_79

    .line 445
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 446
    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 447
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .line 449
    :goto_30
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->c()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v6

    .line 450
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 451
    if-eqz v0, :cond_63

    .line 453
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0xf

    invoke-virtual {p0, v1, v0, v6, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->a(Ljava/nio/ByteBuffer;III)V

    .line 454
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 443
    :goto_5e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_11

    .line 456
    :cond_63
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {p0, v1, v6}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 458
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Header;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    goto :goto_5e

    .line 462
    :cond_75
    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 463
    return-object v4

    :cond_79
    move-object v1, v0

    goto :goto_30
.end method

.method a(Ljava/nio/ByteBuffer;III)V
    .registers 7

    .prologue
    .line 469
    if-ge p2, p3, :cond_9

    .line 470
    or-int v0, p4, p2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    :goto_8
    return-void

    .line 475
    :cond_9
    or-int v0, p4, p3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 476
    sub-int v0, p2, p3

    .line 479
    :goto_11
    const/16 v1, 0x80

    if-lt v0, v1, :cond_20

    .line 480
    and-int/lit8 v1, v0, 0x7f

    .line 481
    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 482
    ushr-int/lit8 v0, v0, 0x7

    .line 483
    goto :goto_11

    .line 484
    :cond_20
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_8
.end method

.method a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .registers 6

    .prologue
    .line 488
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->d()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->a(Ljava/nio/ByteBuffer;III)V

    .line 489
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ByteString;->e()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 490
    return-void
.end method
