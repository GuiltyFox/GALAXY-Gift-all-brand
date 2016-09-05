.class public abstract Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/BufferInfo;
.implements Lcz/msebera/android/httpclient/io/SessionInputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private d:Ljava/nio/charset/Charset;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private i:Ljava/nio/charset/CodingErrorAction;

.field private j:Ljava/nio/charset/CodingErrorAction;

.field private k:I

.field private l:I

.field private m:Ljava/nio/charset/CharsetDecoder;

.field private n:Ljava/nio/CharBuffer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method private a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I
    .registers 6

    .prologue
    .line 329
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    .line 331
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    .line 332
    if-le p2, v1, :cond_14

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v0, v0, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_14

    .line 334
    add-int/lit8 p2, p2, -0x1

    .line 336
    :cond_14
    sub-int v0, p2, v1

    .line 337
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->e:Z

    if-eqz v2, :cond_20

    .line 338
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    invoke-virtual {p1, v2, v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a([BII)V

    .line 343
    :goto_1f
    return v0

    .line 340
    :cond_20
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    invoke-static {v2, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 341
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1f
.end method

.method private a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_8

    .line 368
    :goto_7
    return v0

    .line 351
    :cond_8
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_22

    .line 352
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    .line 353
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->i:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 354
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->j:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 356
    :cond_22
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    if-nez v1, :cond_2e

    .line 357
    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    .line 359
    :cond_2e
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 361
    :goto_33
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 362
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 363
    invoke-direct {p0, v1, p1, p2}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    goto :goto_33

    .line 365
    :cond_48
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 366
    invoke-direct {p0, v1, p1, p2}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_7
.end method

.method private a(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .registers 6

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 376
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 378
    :cond_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 379
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 380
    :goto_14
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 381
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p2, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    goto :goto_14

    .line 383
    :cond_26
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 384
    return v0
.end method

.method private b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->d()I

    move-result v0

    .line 306
    if-lez v0, :cond_27

    .line 307
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    .line 308
    add-int/lit8 v0, v0, -0x1

    .line 311
    :cond_17
    if-lez v0, :cond_27

    .line 312
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_27

    .line 313
    add-int/lit8 v0, v0, -0x1

    .line 317
    :cond_27
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->e:Z

    if-eqz v1, :cond_36

    .line 318
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v3, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V

    .line 323
    :goto_30
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a()V

    .line 324
    return v0

    .line 320
    :cond_36
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->e()[B

    move-result-object v1

    invoke-static {v1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 321
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_30
.end method

.method private c()I
    .registers 4

    .prologue
    .line 226
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    :goto_2
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    if-ge v0, v1, :cond_12

    .line 227
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 231
    :goto_e
    return v0

    .line 226
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 231
    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->g()Z

    move-result v1

    if-nez v1, :cond_e

    .line 177
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->f()I

    move-result v1

    .line 178
    if-ne v1, v0, :cond_1

    .line 182
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_d
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 250
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    const/4 v0, 0x1

    move v2, v1

    .line 253
    :cond_a
    if-eqz v0, :cond_69

    .line 255
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c()I

    move-result v4

    .line 256
    if-eq v4, v3, :cond_49

    .line 258
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->f()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 260
    invoke-direct {p0, p1, v4}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I

    move-result v0

    .line 286
    :goto_1e
    return v0

    .line 263
    :cond_1f
    add-int/lit8 v0, v4, 0x1

    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    sub-int/2addr v0, v5

    .line 264
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v7, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    invoke-virtual {v5, v6, v7, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a([BII)V

    .line 265
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    move v0, v1

    .line 278
    :cond_32
    :goto_32
    iget v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->f:I

    if-lez v4, :cond_a

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->d()I

    move-result v4

    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->f:I

    if-lt v4, v5, :cond_a

    .line 279
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_49
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->g()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 269
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    iget v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    sub-int/2addr v2, v4

    .line 270
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    invoke-virtual {v4, v5, v6, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a([BII)V

    .line 271
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    .line 273
    :cond_61
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->f()I

    move-result v2

    .line 274
    if-ne v2, v3, :cond_32

    move v0, v1

    .line 275
    goto :goto_32

    .line 282
    :cond_69
    if-ne v2, v3, :cond_75

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->f()Z

    move-result v0

    if-eqz v0, :cond_75

    move v0, v3

    .line 284
    goto :goto_1e

    .line 286
    :cond_75
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v0

    goto :goto_1e
.end method

.method public a([BII)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 186
    if-nez p1, :cond_5

    .line 187
    const/4 v0, 0x0

    .line 214
    :cond_4
    :goto_4
    return v0

    .line 189
    :cond_5
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->g()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 190
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    goto :goto_4

    .line 197
    :cond_21
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->g:I

    if-le p3, v1, :cond_34

    .line 198
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 199
    if-lez v0, :cond_4

    .line 200
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->h:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->a(J)V

    goto :goto_4

    .line 205
    :cond_34
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->g()Z

    move-result v1

    if-nez v1, :cond_41

    .line 206
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->f()I

    move-result v1

    .line 207
    if-ne v1, v0, :cond_34

    goto :goto_4

    .line 211
    :cond_41
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 212
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    goto :goto_4
.end method

.method protected a(Ljava/io/InputStream;ILcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string/jumbo v0, "Input stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 98
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a:Ljava/io/InputStream;

    .line 100
    new-array v0, p2, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    .line 101
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    .line 102
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    .line 103
    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    .line 104
    const-string/jumbo v0, "http.protocol.element-charset"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_78

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_33
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->d:Ljava/nio/charset/Charset;

    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->d:Ljava/nio/charset/Charset;

    sget-object v1, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->e:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->m:Ljava/nio/charset/CharsetDecoder;

    .line 108
    const-string/jumbo v0, "http.connection.max-line-length"

    const/4 v1, -0x1

    invoke-interface {p3, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->f:I

    .line 109
    const-string/jumbo v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->g:I

    .line 110
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->d()Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->h:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    .line 111
    const-string/jumbo v0, "http.malformed.input.action"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CodingErrorAction;

    .line 113
    if-eqz v0, :cond_7b

    :goto_68
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->i:Ljava/nio/charset/CodingErrorAction;

    .line 114
    const-string/jumbo v0, "http.unmappable.input.action"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CodingErrorAction;

    .line 116
    if-eqz v0, :cond_7e

    :goto_75
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->j:Ljava/nio/charset/CodingErrorAction;

    .line 117
    return-void

    .line 105
    :cond_78
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    goto :goto_33

    .line 113
    :cond_7b
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_68

    .line 116
    :cond_7e
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_75
.end method

.method public b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->h:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected d()Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;
    .registers 2

    .prologue
    .line 123
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 137
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected f()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 149
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    if-lez v1, :cond_1a

    .line 150
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    sub-int/2addr v1, v2

    .line 151
    if-lez v1, :cond_16

    .line 152
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_16
    iput v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    .line 155
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    .line 158
    :cond_1a
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    .line 159
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    .line 160
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->b:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 161
    if-ne v1, v0, :cond_2b

    .line 166
    :goto_2a
    return v0

    .line 164
    :cond_2b
    add-int v0, v2, v1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->h:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->a(J)V

    move v0, v1

    .line 166
    goto :goto_2a
.end method

.method protected g()Z
    .registers 3

    .prologue
    .line 171
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->k:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->l:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
