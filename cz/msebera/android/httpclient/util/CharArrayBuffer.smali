.class public final Lcz/msebera/android/httpclient/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "Buffer capacity"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 57
    new-array v0, p1, [C

    iput-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    .line 58
    return-void
.end method

.method private d(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    .line 62
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    .line 64
    return-void
.end method


# virtual methods
.method public a(I)C
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public a(III)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 371
    .line 372
    if-gez p2, :cond_4

    .line 373
    const/4 p2, 0x0

    .line 376
    :cond_4
    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    if-le p3, v1, :cond_a

    .line 377
    iget p3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    .line 379
    :cond_a
    if-le p2, p3, :cond_d

    .line 387
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v1, p2

    .line 382
    :goto_e
    if-ge v1, p3, :cond_c

    .line 383
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_18

    move v0, v1

    .line 384
    goto :goto_c

    .line 382
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public a(II)Ljava/lang/String;
    .registers 6

    .prologue
    .line 419
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    .line 236
    return-void
.end method

.method public a(C)V
    .registers 5

    .prologue
    .line 155
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 156
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 157
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->d(I)V

    .line 159
    :cond_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    aput-char p1, v1, v2

    .line 160
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    .line 161
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V
    .registers 5

    .prologue
    .line 214
    if-nez p1, :cond_3

    .line 218
    :goto_2
    return-void

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->e()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a([BII)V

    goto :goto_2
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .registers 5

    .prologue
    .line 128
    if-nez p1, :cond_3

    .line 132
    :goto_2
    return-void

    .line 131
    :cond_3
    iget-object v0, p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    invoke-virtual {p0, v0, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a([CII)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 104
    if-eqz p1, :cond_1c

    .line 105
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 106
    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    add-int/2addr v1, v0

    .line 107
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_11

    .line 108
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->d(I)V

    .line 110
    :cond_11
    const/4 v2, 0x0

    iget-object v3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    iget v4, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 111
    iput v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    .line 112
    return-void

    .line 104
    :cond_1c
    const-string/jumbo p1, "null"

    goto :goto_2
.end method

.method public a([BII)V
    .registers 8

    .prologue
    .line 178
    if-nez p1, :cond_3

    .line 197
    :cond_2
    :goto_2
    return-void

    .line 181
    :cond_3
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_44

    .line 183
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_44
    if-eqz p3, :cond_2

    .line 188
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    .line 189
    add-int v1, v0, p3

    .line 190
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_52

    .line 191
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->d(I)V

    .line 193
    :cond_52
    :goto_52
    if-ge v0, v1, :cond_62

    .line 194
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 193
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 196
    :cond_62
    iput v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    goto :goto_2
.end method

.method public a([CII)V
    .registers 7

    .prologue
    .line 79
    if-nez p1, :cond_3

    .line 95
    :cond_2
    :goto_2
    return-void

    .line 82
    :cond_3
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_44

    .line 84
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_44
    if-eqz p3, :cond_2

    .line 89
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    add-int/2addr v0, p3

    .line 90
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_51

    .line 91
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->d(I)V

    .line 93
    :cond_51
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    goto :goto_2
.end method

.method public b(II)Ljava/lang/String;
    .registers 6

    .prologue
    .line 439
    .line 441
    if-gez p1, :cond_1c

    .line 442
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1c
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    if-le p2, v0, :cond_47

    .line 445
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_47
    if-le p1, p2, :cond_6e

    .line 448
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_6e
    :goto_6e
    if-ge p1, p2, :cond_7d

    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 451
    add-int/lit8 p1, p1, 0x1

    goto :goto_6e

    .line 453
    :cond_7d
    :goto_7d
    if-le p2, p1, :cond_8e

    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 454
    add-int/lit8 p2, p2, -0x1

    goto :goto_7d

    .line 456
    :cond_8e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 303
    if-gtz p1, :cond_3

    .line 310
    :cond_2
    :goto_2
    return-void

    .line 306
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    sub-int/2addr v0, v1

    .line 307
    if-le p1, v0, :cond_2

    .line 308
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->d(I)V

    goto :goto_2
.end method

.method public b()[C
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    return v0
.end method

.method public c(I)I
    .registers 4

    .prologue
    .line 401
    const/4 v0, 0x0

    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(III)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 461
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
