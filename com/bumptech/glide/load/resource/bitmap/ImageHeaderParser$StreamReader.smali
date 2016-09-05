.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    .line 331
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public a([B)I
    .registers 5

    .prologue
    .line 368
    array-length v0, p1

    .line 370
    :goto_1
    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 371
    sub-int/2addr v0, v1

    goto :goto_1

    .line 373
    :cond_10
    array-length v1, p1

    sub-int v0, v1, v0

    return v0
.end method

.method public a(J)J
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 342
    cmp-long v0, p1, v2

    if-gez v0, :cond_8

    move-wide v0, v2

    .line 364
    :goto_7
    return-wide v0

    :cond_8
    move-wide v0, p1

    .line 347
    :goto_9
    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    .line 348
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v4, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 349
    cmp-long v6, v4, v2

    if-lez v6, :cond_19

    .line 350
    sub-long/2addr v0, v4

    goto :goto_9

    .line 356
    :cond_19
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 357
    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    .line 364
    :cond_22
    sub-long v0, p1, v0

    goto :goto_7

    .line 360
    :cond_25
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_9
.end method

.method public b()S
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
