.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(I)I
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 170
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    aget v0, v0, p0

    .line 172
    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private static a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 8

    .prologue
    .line 234
    const v3, 0x7fffffff

    .line 235
    const/4 v0, -0x1

    .line 237
    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_17

    .line 238
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 239
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v2

    .line 240
    if-ge v2, v3, :cond_18

    move v0, v1

    .line 237
    :goto_13
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_5

    .line 245
    :cond_17
    return v0

    :cond_18
    move v2, v3

    goto :goto_13
.end method

.method private static a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->b(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->c(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->d(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .registers 15

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v0

    if-eq v0, p2, :cond_f

    .line 365
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_f
    const/4 v2, 0x0

    .line 371
    const/4 v1, 0x0

    .line 372
    const/4 v0, 0x0

    .line 375
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    const/4 v3, 0x0

    move v6, v0

    move v7, v1

    move v8, v2

    :goto_1b
    if-ge v3, p3, :cond_56

    .line 378
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 379
    const/4 v0, 0x1

    new-array v5, v0, [I

    move v0, p1

    move v1, p2

    move v2, p3

    .line 380
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(IIII[I[I)V

    .line 384
    const/4 v0, 0x0

    aget v0, v4, v0

    .line 385
    new-array v1, v0, [B

    .line 386
    mul-int/lit8 v2, v8, 0x8

    const/4 v10, 0x0

    invoke-virtual {p0, v2, v1, v10, v0}, Lcom/google/zxing/common/BitArray;->a(I[BII)V

    .line 387
    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a([BI)[B

    move-result-object v2

    .line 388
    new-instance v5, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v5, v1, v2}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 391
    array-length v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 392
    const/4 v2, 0x0

    aget v2, v4, v2

    add-int/2addr v2, v8

    .line 377
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_1b

    .line 394
    :cond_56
    if-eq p2, v8, :cond_61

    .line 395
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_61
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 401
    const/4 v0, 0x0

    move v1, v0

    :goto_68
    if-ge v1, v7, :cond_8d

    .line 402
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6e
    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 403
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/BlockPair;->a()[B

    move-result-object v0

    .line 404
    array-length v4, v0

    if-ge v1, v4, :cond_6e

    .line 405
    aget-byte v0, v0, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v4}, Lcom/google/zxing/common/BitArray;->b(II)V

    goto :goto_6e

    .line 401
    :cond_89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_68

    .line 410
    :cond_8d
    const/4 v0, 0x0

    move v1, v0

    :goto_8f
    if-ge v1, v6, :cond_b4

    .line 411
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_95
    :goto_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 412
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/BlockPair;->b()[B

    move-result-object v0

    .line 413
    array-length v4, v0

    if-ge v1, v4, :cond_95

    .line 414
    aget-byte v0, v0, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v4}, Lcom/google/zxing/common/BitArray;->b(II)V

    goto :goto_95

    .line 410
    :cond_b0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8f

    .line 418
    :cond_b4
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v0

    if-eq p1, v0, :cond_ea

    .line 419
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Interleaving error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 420
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " differ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_ea
    return-object v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 184
    const-string/jumbo v1, "Shift_JIS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 186
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->g:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 206
    :goto_13
    return-object v0

    .line 186
    :cond_14
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_13

    :cond_17
    move v1, v0

    move v2, v0

    .line 190
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3b

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 192
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2f

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2f

    move v2, v3

    .line 190
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 194
    :cond_2f
    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_38

    move v1, v3

    .line 195
    goto :goto_2c

    .line 197
    :cond_38
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_13

    .line 200
    :cond_3b
    if-eqz v1, :cond_40

    .line 201
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->c:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_13

    .line 203
    :cond_40
    if-eqz v2, :cond_45

    .line 204
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->b:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_13

    .line 206
    :cond_45
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_13
.end method

.method private static a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 6

    .prologue
    .line 250
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_20

    .line 251
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->b(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version;->c()I

    move-result v2

    .line 255
    invoke-virtual {v1, p1}, Lcom/google/zxing/qrcode/decoder/Version;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->c()I

    move-result v3

    .line 258
    sub-int/2addr v2, v3

    .line 259
    add-int/lit8 v3, p0, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 260
    if-lt v2, v3, :cond_1d

    .line 261
    return-object v1

    .line 250
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_20
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .prologue
    .line 80
    if-nez p2, :cond_b2

    const/4 v0, 0x0

    .line 81
    :goto_3
    if-nez v0, :cond_8

    .line 82
    const-string/jumbo v0, "ISO-8859-1"

    .line 87
    :cond_8
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 94
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v1, v3, :cond_27

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 95
    invoke-static {v0}, Lcom/google/zxing/common/CharacterSetECI;->a(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_27

    .line 97
    invoke-static {v3, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 102
    :cond_27
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 106
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 107
    invoke-static {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v0

    const/4 v4, 0x1

    .line 114
    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Version;->b(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    add-int/2addr v0, v4

    .line 115
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v4

    add-int/2addr v0, v4

    .line 116
    invoke-static {v0, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 120
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v4

    .line 121
    invoke-virtual {v1, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    add-int/2addr v0, v4

    .line 122
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v4

    add-int/2addr v0, v4

    .line 123
    invoke-static {v0, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    .line 125
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 126
    invoke-virtual {v5, v2}, Lcom/google/zxing/common/BitArray;->a(Lcom/google/zxing/common/BitArray;)V

    .line 128
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v1, v0, :cond_bc

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v0

    .line 129
    :goto_6b
    invoke-static {v0, v4, v1, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 131
    invoke-virtual {v5, v3}, Lcom/google/zxing/common/BitArray;->a(Lcom/google/zxing/common/BitArray;)V

    .line 133
    invoke-virtual {v4, p1}, Lcom/google/zxing/qrcode/decoder/Version;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 134
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->c()I

    move-result v3

    sub-int/2addr v2, v3

    .line 137
    invoke-static {v2, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/common/BitArray;)V

    .line 141
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->c()I

    move-result v3

    .line 143
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b()I

    move-result v0

    .line 140
    invoke-static {v5, v3, v2, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 145
    new-instance v2, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 147
    invoke-virtual {v2, p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 148
    invoke-virtual {v2, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 149
    invoke-virtual {v2, v4}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 152
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->d()I

    move-result v1

    .line 153
    new-instance v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v3, v1, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 154
    invoke-static {v0, p1, v4, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    .line 155
    invoke-virtual {v2, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(I)V

    .line 158
    invoke-static {v0, p1, v4, v1, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 159
    invoke-virtual {v2, v3}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 161
    return-object v2

    .line 80
    :cond_b2
    sget-object v0, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_3

    .line 128
    :cond_bc
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_6b
.end method

.method static a(IIII[I[I)V
    .registers 15

    .prologue
    const/4 v8, 0x0

    .line 308
    if-lt p3, p2, :cond_c

    .line 309
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_c
    rem-int v0, p0, p2

    .line 314
    sub-int v1, p2, v0

    .line 316
    div-int v2, p0, p2

    .line 318
    add-int/lit8 v3, v2, 0x1

    .line 320
    div-int v4, p1, p2

    .line 322
    add-int/lit8 v5, v4, 0x1

    .line 324
    sub-int/2addr v2, v4

    .line 326
    sub-int/2addr v3, v5

    .line 329
    if-eq v2, v3, :cond_25

    .line 330
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_25
    add-int v6, v1, v0

    if-eq p2, v6, :cond_32

    .line 334
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_32
    add-int v6, v4, v2

    mul-int/2addr v6, v1

    add-int v7, v5, v3

    mul-int/2addr v0, v7

    add-int/2addr v0, v6

    if-eq p0, v0, :cond_44

    .line 342
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_44
    if-ge p3, v1, :cond_4b

    .line 346
    aput v4, p4, v8

    .line 347
    aput v2, p5, v8

    .line 352
    :goto_4a
    return-void

    .line 349
    :cond_4b
    aput v5, p4, v8

    .line 350
    aput v3, p5, v8

    goto :goto_4a
.end method

.method static a(ILcom/google/zxing/common/BitArray;)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 271
    mul-int/lit8 v2, p0, 0x8

    .line 272
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v1

    if-le v1, v2, :cond_34

    .line 273
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data bits cannot fit in the QR Code"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    move v1, v0

    .line 276
    :goto_35
    const/4 v3, 0x4

    if-ge v1, v3, :cond_44

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v3

    if-ge v3, v2, :cond_44

    .line 277
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->a(Z)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 281
    :cond_44
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 282
    if-lez v1, :cond_54

    .line 283
    :goto_4c
    if-ge v1, v4, :cond_54

    .line 284
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->a(Z)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 288
    :cond_54
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v1

    sub-int v3, p0, v1

    move v1, v0

    .line 289
    :goto_5b
    if-ge v1, v3, :cond_6d

    .line 290
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_6a

    const/16 v0, 0xec

    :goto_63
    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    .line 290
    :cond_6a
    const/16 v0, 0x11

    goto :goto_63

    .line 292
    :cond_6d
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v0

    if-eq v0, v2, :cond_7c

    .line 293
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_7c
    return-void
.end method

.method static a(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 453
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 454
    shl-int v1, v4, v0

    if-lt p0, v1, :cond_2b

    .line 455
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_2b
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 458
    return-void
.end method

.method private static a(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .registers 4

    .prologue
    .line 573
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 575
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->a()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 576
    return-void
.end method

.method static a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 4

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 446
    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 7

    .prologue
    .line 486
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 487
    const/4 v0, 0x0

    .line 488
    :goto_5
    if-ge v0, v1, :cond_4c

    .line 489
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 490
    add-int/lit8 v3, v0, 0x2

    if-ge v3, v1, :cond_2f

    .line 492
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 493
    add-int/lit8 v4, v0, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 494
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 495
    add-int/lit8 v0, v0, 0x3

    .line 496
    goto :goto_5

    :cond_2f
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_45

    .line 498
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 499
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 500
    add-int/lit8 v0, v0, 0x2

    .line 501
    goto :goto_5

    .line 503
    :cond_45
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 507
    :cond_4c
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .registers 9

    .prologue
    const v6, 0x8140

    const/4 v1, -0x1

    .line 549
    :try_start_4
    const-string/jumbo v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_a} :catch_30

    move-result-object v3

    .line 553
    array-length v4, v3

    .line 554
    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-ge v2, v4, :cond_56

    .line 555
    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    .line 556
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    .line 557
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v5

    .line 559
    if-lt v0, v6, :cond_37

    const v5, 0x9ffc

    if-gt v0, v5, :cond_37

    .line 560
    sub-int/2addr v0, v6

    .line 564
    :goto_25
    if-ne v0, v1, :cond_46

    .line 565
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string/jumbo v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :catch_30
    move-exception v0

    .line 551
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 561
    :cond_37
    const v5, 0xe040

    if-lt v0, v5, :cond_57

    const v5, 0xebbf

    if-gt v0, v5, :cond_57

    .line 562
    const v5, 0xc140

    sub-int/2addr v0, v5

    goto :goto_25

    .line 567
    :cond_46
    shr-int/lit8 v5, v0, 0x8

    mul-int/lit16 v5, v5, 0xc0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v5

    .line 568
    const/16 v5, 0xd

    invoke-virtual {p1, v0, v5}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 554
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_e

    .line 570
    :cond_56
    return-void

    :cond_57
    move v0, v1

    goto :goto_25
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 537
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_12

    move-result-object v1

    .line 541
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_19

    aget-byte v3, v1, v0

    .line 542
    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 538
    :catch_12
    move-exception v0

    .line 539
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 544
    :cond_19
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 467
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->a:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 481
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_25
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 483
    :goto_28
    return-void

    .line 472
    :pswitch_29
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->b(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_28

    .line 475
    :pswitch_2d
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_28

    .line 478
    :pswitch_31
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_28

    .line 467
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 212
    :try_start_1
    const-string/jumbo v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_2a

    move-result-object v2

    .line 216
    array-length v3, v2

    .line 217
    rem-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_e

    .line 226
    :cond_d
    :goto_d
    return v0

    :cond_e
    move v1, v0

    .line 220
    :goto_f
    if-ge v1, v3, :cond_28

    .line 221
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    .line 222
    const/16 v5, 0x81

    if-lt v4, v5, :cond_1d

    const/16 v5, 0x9f

    if-le v4, v5, :cond_25

    :cond_1d
    const/16 v5, 0xe0

    if-lt v4, v5, :cond_d

    const/16 v5, 0xeb

    if-gt v4, v5, :cond_d

    .line 220
    :cond_25
    add-int/lit8 v1, v1, 0x2

    goto :goto_f

    .line 226
    :cond_28
    const/4 v0, 0x1

    goto :goto_d

    .line 213
    :catch_2a
    move-exception v1

    goto :goto_d
.end method

.method static a([BI)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 427
    array-length v2, p0

    .line 428
    add-int v1, v2, p1

    new-array v3, v1, [I

    move v1, v0

    .line 429
    :goto_7
    if-ge v1, v2, :cond_12

    .line 430
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 432
    :cond_12
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v1, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v1, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a([II)V

    .line 434
    new-array v1, p1, [B

    .line 435
    :goto_1e
    if-ge v0, p1, :cond_2a

    .line 436
    add-int v4, v2, v0

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 438
    :cond_2a
    return-object v1
.end method

.method static b(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 510
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 511
    const/4 v0, 0x0

    .line 512
    :goto_6
    if-ge v0, v1, :cond_40

    .line 513
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v2

    .line 514
    if-ne v2, v4, :cond_18

    .line 515
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 517
    :cond_18
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_39

    .line 518
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v3

    .line 519
    if-ne v3, v4, :cond_2e

    .line 520
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 523
    :cond_2e
    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v3

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 524
    add-int/lit8 v0, v0, 0x2

    .line 525
    goto :goto_6

    .line 527
    :cond_39
    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->b(II)V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 531
    :cond_40
    return-void
.end method
