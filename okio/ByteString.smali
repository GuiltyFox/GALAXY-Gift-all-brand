.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[C

.field public static final b:Lokio/ByteString;


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lokio/ByteString;->a:[C

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/ByteString;->b:Lokio/ByteString;

    return-void

    .line 48
    nop

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lokio/ByteString;->c:[B

    .line 61
    return-void
.end method

.method static a(Ljava/lang/String;I)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v0, v2, :cond_2c

    .line 456
    if-ne v1, p1, :cond_b

    .line 466
    :goto_a
    return v0

    .line 459
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 460
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1d

    const/16 v4, 0xd

    if-ne v3, v4, :cond_22

    :cond_1d
    const v4, 0xfffd

    if-ne v3, v4, :cond_24

    .line 462
    :cond_22
    const/4 v0, -0x1

    goto :goto_a

    .line 464
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 455
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_6

    .line 466
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    .prologue
    .line 86
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_b
    new-instance v0, Lokio/ByteString;

    sget-object v1, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 88
    iput-object p0, v0, Lokio/ByteString;->e:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public static varargs a([B)Lokio/ByteString;
    .registers 3

    .prologue
    .line 67
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_b
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public a(I)B
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lokio/ByteString;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a(Lokio/ByteString;)I
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 415
    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result v4

    .line 416
    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v5

    .line 417
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_28

    .line 418
    invoke-virtual {p0, v3}, Lokio/ByteString;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 419
    invoke-virtual {p1, v3}, Lokio/ByteString;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 420
    if-ne v7, v8, :cond_23

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 421
    :cond_23
    if-ge v7, v8, :cond_26

    .line 424
    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    .line 421
    goto :goto_25

    .line 423
    :cond_28
    if-ne v4, v5, :cond_2c

    move v0, v2

    goto :goto_25

    .line 424
    :cond_2c
    if-lt v4, v5, :cond_25

    move v0, v1

    goto :goto_25
.end method

.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lokio/ByteString;->e:Ljava/lang/String;

    .line 96
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokio/ByteString;->c:[B

    sget-object v2, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lokio/ByteString;->e:Ljava/lang/String;

    goto :goto_4
.end method

.method public a(II)Lokio/ByteString;
    .registers 7

    .prologue
    .line 263
    if-gez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_b
    iget-object v0, p0, Lokio/ByteString;->c:[B

    array-length v0, v0

    if-le p2, v0, :cond_34

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokio/ByteString;->c:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_34
    sub-int v0, p2, p1

    .line 269
    if-gez v0, :cond_41

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endIndex < beginIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_41
    if-nez p1, :cond_49

    iget-object v1, p0, Lokio/ByteString;->c:[B

    array-length v1, v1

    if-ne p2, v1, :cond_49

    .line 277
    :goto_48
    return-object p0

    .line 275
    :cond_49
    new-array v1, v0, [B

    .line 276
    iget-object v2, p0, Lokio/ByteString;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v1}, Lokio/ByteString;-><init>([B)V

    goto :goto_48
.end method

.method a(Lokio/Buffer;)V
    .registers 5

    .prologue
    .line 319
    iget-object v0, p0, Lokio/ByteString;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lokio/ByteString;->c:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    .line 320
    return-void
.end method

.method public a(ILokio/ByteString;II)Z
    .registers 6

    .prologue
    .line 328
    iget-object v0, p0, Lokio/ByteString;->c:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lokio/ByteString;->a(I[BII)Z

    move-result v0

    return v0
.end method

.method public a(I[BII)Z
    .registers 6

    .prologue
    .line 337
    if-ltz p1, :cond_18

    iget-object v0, p0, Lokio/ByteString;->c:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_18

    if-ltz p3, :cond_18

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_18

    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 339
    invoke-static {v0, p1, p2, p3, p4}, Lokio/Util;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lokio/ByteString;->c:[B

    invoke-static {v0}, Lokio/Base64;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lokio/ByteString;->c:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    .line 153
    iget-object v3, p0, Lokio/ByteString;->c:[B

    array-length v4, v3

    move v1, v0

    :goto_c
    if-ge v0, v4, :cond_29

    aget-byte v5, v3, v0

    .line 154
    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lokio/ByteString;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    .line 155
    add-int/lit8 v1, v6, 0x1

    sget-object v7, Lokio/ByteString;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 157
    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 47
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->a(Lokio/ByteString;)I

    move-result v0

    return v0
.end method

.method public d()Lokio/ByteString;
    .registers 7

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x41

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lokio/ByteString;->c:[B

    array-length v0, v0

    if-ge v1, v0, :cond_3e

    .line 207
    iget-object v0, p0, Lokio/ByteString;->c:[B

    aget-byte v3, v0, v1

    .line 208
    if-lt v3, v4, :cond_13

    if-le v3, v5, :cond_17

    .line 206
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 212
    :cond_17
    iget-object v0, p0, Lokio/ByteString;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 213
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    .line 214
    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 215
    aget-byte v2, v0, v1

    .line 216
    if-lt v2, v4, :cond_30

    if-le v2, v5, :cond_33

    .line 214
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 217
    :cond_33
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_30

    .line 219
    :cond_39
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 221
    :cond_3e
    return-object p0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lokio/ByteString;->c:[B

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    if-ne p1, p0, :cond_5

    .line 406
    :goto_4
    return v1

    .line 404
    :cond_5
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    .line 405
    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v0

    iget-object v3, p0, Lokio/ByteString;->c:[B

    array-length v3, v3

    if-ne v0, v3, :cond_25

    check-cast p1, Lokio/ByteString;

    iget-object v0, p0, Lokio/ByteString;->c:[B

    iget-object v3, p0, Lokio/ByteString;->c:[B

    array-length v3, v3

    .line 406
    invoke-virtual {p1, v2, v0, v2, v3}, Lokio/ByteString;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_4

    :cond_25
    move v0, v2

    goto :goto_23
.end method

.method public f()[B
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lokio/ByteString;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lokio/ByteString;->d:I

    .line 411
    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lokio/ByteString;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->d:I

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x40

    .line 432
    iget-object v0, p0, Lokio/ByteString;->c:[B

    array-length v0, v0

    if-nez v0, :cond_c

    .line 433
    const-string/jumbo v0, "[size=0]"

    .line 449
    :goto_b
    return-object v0

    .line 436
    :cond_c
    invoke-virtual {p0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0, v3}, Lokio/ByteString;->a(Ljava/lang/String;I)I

    move-result v1

    .line 439
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6e

    .line 440
    iget-object v0, p0, Lokio/ByteString;->c:[B

    array-length v0, v0

    if-gt v0, v3, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/ByteString;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v4, v3}, Lokio/ByteString;->a(II)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 445
    :cond_6e
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\"

    const-string/jumbo v4, "\\\\"

    .line 446
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, "\\n"

    .line 447
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\r"

    const-string/jumbo v4, "\\r"

    .line 448
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_c1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/ByteString;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b
.end method
