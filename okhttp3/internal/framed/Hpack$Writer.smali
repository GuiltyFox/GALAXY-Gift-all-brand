.class final Lokhttp3/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field private final a:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .registers 2

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->a:Lokio/Buffer;

    .line 374
    return-void
.end method


# virtual methods
.method a(III)V
    .registers 7

    .prologue
    .line 398
    if-ge p1, p2, :cond_a

    .line 399
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->a:Lokio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 414
    :goto_9
    return-void

    .line 404
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->a:Lokio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 405
    sub-int v0, p1, p2

    .line 408
    :goto_13
    const/16 v1, 0x80

    if-lt v0, v1, :cond_23

    .line 409
    and-int/lit8 v1, v0, 0x7f

    .line 410
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->a:Lokio/Buffer;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 411
    ushr-int/lit8 v0, v0, 0x7

    .line 412
    goto :goto_13

    .line 413
    :cond_23
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->a:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_9
.end method

.method a(Ljava/util/List;)V
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
    const/4 v2, 0x0

    .line 380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_4e

    .line 381
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->h:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->d()Lokio/ByteString;

    move-result-object v4

    .line 382
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 383
    if-eqz v0, :cond_3a

    .line 385
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v0, v4, v2}, Lokhttp3/internal/framed/Hpack$Writer;->a(III)V

    .line 386
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->i:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->a(Lokio/ByteString;)V

    .line 380
    :goto_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 388
    :cond_3a
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->a:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 389
    invoke-virtual {p0, v4}, Lokhttp3/internal/framed/Hpack$Writer;->a(Lokio/ByteString;)V

    .line 390
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->i:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->a(Lokio/ByteString;)V

    goto :goto_36

    .line 393
    :cond_4e
    return-void
.end method

.method a(Lokio/ByteString;)V
    .registers 5

    .prologue
    .line 417
    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Hpack$Writer;->a(III)V

    .line 418
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->a(Lokio/ByteString;)Lokio/Buffer;

    .line 419
    return-void
.end method
