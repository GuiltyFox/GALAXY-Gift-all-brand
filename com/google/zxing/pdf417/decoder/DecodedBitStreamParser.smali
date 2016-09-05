.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:Ljava/nio/charset/Charset;

.field private static final d:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 67
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    .line 72
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    .line 77
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:Ljava/nio/charset/Charset;

    .line 85
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d:[Ljava/math/BigInteger;

    .line 86
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    .line 87
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 88
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 89
    const/4 v0, 0x2

    :goto_34
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    .line 90
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 92
    :cond_4a
    return-void

    .line 67
    nop

    :array_4c
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    .line 72
    nop

    :array_6e
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
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private static a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 19

    .prologue
    .line 448
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 449
    const/16 v2, 0x385

    if-ne p0, v2, :cond_95

    .line 452
    const/4 v6, 0x0

    .line 453
    const-wide/16 v4, 0x0

    .line 454
    const/4 v2, 0x6

    new-array v11, v2, [I

    .line 455
    const/4 v3, 0x0

    .line 456
    add-int/lit8 v7, p3, 0x1

    aget v2, p1, p3

    move v8, v7

    .line 457
    :goto_15
    const/4 v7, 0x0

    aget v7, p1, v7

    if-ge v8, v7, :cond_68

    if-nez v3, :cond_68

    .line 458
    add-int/lit8 v7, v6, 0x1

    aput v2, v11, v6

    .line 460
    const-wide/16 v12, 0x384

    mul-long/2addr v4, v12

    int-to-long v12, v2

    add-long/2addr v4, v12

    .line 461
    add-int/lit8 v9, v8, 0x1

    aget v2, p1, v8

    .line 463
    const/16 v6, 0x384

    if-eq v2, v6, :cond_45

    const/16 v6, 0x385

    if-eq v2, v6, :cond_45

    const/16 v6, 0x386

    if-eq v2, v6, :cond_45

    const/16 v6, 0x39c

    if-eq v2, v6, :cond_45

    const/16 v6, 0x3a0

    if-eq v2, v6, :cond_45

    const/16 v6, 0x39b

    if-eq v2, v6, :cond_45

    const/16 v6, 0x39a

    if-ne v2, v6, :cond_4b

    .line 470
    :cond_45
    add-int/lit8 v6, v9, -0x1

    .line 471
    const/4 v3, 0x1

    move v8, v6

    move v6, v7

    goto :goto_15

    .line 473
    :cond_4b
    rem-int/lit8 v6, v7, 0x5

    if-nez v6, :cond_f6

    if-lez v7, :cond_f6

    .line 476
    const/4 v6, 0x0

    :goto_52
    const/4 v7, 0x6

    if-ge v6, v7, :cond_63

    .line 477
    rsub-int/lit8 v7, v6, 0x5

    mul-int/lit8 v7, v7, 0x8

    shr-long v12, v4, v7

    long-to-int v7, v12

    int-to-byte v7, v7

    invoke-virtual {v10, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 479
    :cond_63
    const-wide/16 v4, 0x0

    .line 480
    const/4 v6, 0x0

    move v8, v9

    goto :goto_15

    .line 486
    :cond_68
    const/4 v3, 0x0

    aget v3, p1, v3

    if-ne v8, v3, :cond_76

    const/16 v3, 0x384

    if-ge v2, v3, :cond_76

    .line 487
    add-int/lit8 v3, v6, 0x1

    aput v2, v11, v6

    move v6, v3

    .line 493
    :cond_76
    const/4 v2, 0x0

    :goto_77
    if-ge v2, v6, :cond_82

    .line 494
    aget v3, v11, v2

    int-to-byte v3, v3

    invoke-virtual {v10, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :cond_82
    move/from16 p3, v8

    .line 532
    :cond_84
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    return p3

    .line 497
    :cond_95
    const/16 v2, 0x39c

    if-ne p0, v2, :cond_84

    .line 500
    const/4 v3, 0x0

    .line 501
    const-wide/16 v4, 0x0

    .line 502
    const/4 v2, 0x0

    .line 503
    :cond_9d
    :goto_9d
    const/4 v6, 0x0

    aget v6, p1, v6

    move/from16 v0, p3

    if-ge v0, v6, :cond_84

    if-nez v2, :cond_84

    .line 504
    add-int/lit8 v6, p3, 0x1

    aget v7, p1, p3

    .line 505
    const/16 v8, 0x384

    if-ge v7, v8, :cond_cf

    .line 506
    add-int/lit8 v3, v3, 0x1

    .line 508
    const-wide/16 v8, 0x384

    mul-long/2addr v4, v8

    int-to-long v8, v7

    add-long/2addr v4, v8

    move/from16 p3, v6

    .line 521
    :goto_b7
    rem-int/lit8 v6, v3, 0x5

    if-nez v6, :cond_9d

    if-lez v3, :cond_9d

    .line 524
    const/4 v3, 0x0

    :goto_be
    const/4 v6, 0x6

    if-ge v3, v6, :cond_ef

    .line 525
    rsub-int/lit8 v6, v3, 0x5

    mul-int/lit8 v6, v6, 0x8

    shr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v10, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    .line 510
    :cond_cf
    const/16 v8, 0x384

    if-eq v7, v8, :cond_eb

    const/16 v8, 0x385

    if-eq v7, v8, :cond_eb

    const/16 v8, 0x386

    if-eq v7, v8, :cond_eb

    const/16 v8, 0x39c

    if-eq v7, v8, :cond_eb

    const/16 v8, 0x3a0

    if-eq v7, v8, :cond_eb

    const/16 v8, 0x39b

    if-eq v7, v8, :cond_eb

    const/16 v8, 0x39a

    if-ne v7, v8, :cond_f3

    .line 517
    :cond_eb
    add-int/lit8 p3, v6, -0x1

    .line 518
    const/4 v2, 0x1

    goto :goto_b7

    .line 527
    :cond_ef
    const-wide/16 v4, 0x0

    .line 528
    const/4 v3, 0x0

    goto :goto_9d

    :cond_f3
    move/from16 p3, v6

    goto :goto_b7

    :cond_f6
    move v6, v7

    move v8, v9

    goto/16 :goto_15
.end method

.method private static a([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 11

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 165
    add-int/lit8 v0, p1, 0x2

    aget v2, p0, v1

    if-le v0, v2, :cond_e

    .line 167
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 169
    :cond_e
    new-array v2, v5, [I

    move v0, v1

    .line 170
    :goto_11
    if-ge v0, v5, :cond_1c

    .line 171
    aget v3, p0, p1

    aput v3, v2, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 173
    :cond_1c
    invoke-static {v2, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a(I)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a(Ljava/lang/String;)V

    .line 180
    aget v0, p0, v3

    const/16 v2, 0x39b

    if-ne v0, v2, :cond_73

    .line 181
    add-int/lit8 v0, v3, 0x1

    .line 182
    aget v2, p0, v1

    sub-int/2addr v2, v0

    new-array v6, v2, [I

    move v2, v1

    move v3, v0

    move v0, v1

    .line 186
    :goto_47
    aget v5, p0, v1

    if-ge v3, v5, :cond_6b

    if-nez v0, :cond_6b

    .line 187
    add-int/lit8 v5, v3, 0x1

    aget v7, p0, v3

    .line 188
    const/16 v3, 0x384

    if-ge v7, v3, :cond_5c

    .line 189
    add-int/lit8 v3, v2, 0x1

    aput v7, v6, v2

    move v2, v3

    move v3, v5

    goto :goto_47

    .line 191
    :cond_5c
    packed-switch v7, :pswitch_data_80

    .line 198
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 193
    :pswitch_64
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a(Z)V

    .line 194
    add-int/lit8 v3, v5, 0x1

    move v0, v4

    .line 196
    goto :goto_47

    .line 203
    :cond_6b
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a([I)V

    .line 209
    :cond_72
    :goto_72
    return v3

    .line 204
    :cond_73
    aget v0, p0, v3

    const/16 v1, 0x39a

    if-ne v0, v1, :cond_72

    .line 205
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a(Z)V

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 191
    nop

    :pswitch_data_80
    .packed-switch 0x39a
        :pswitch_64
    .end packed-switch
.end method

.method private static a([IILjava/lang/StringBuilder;)I
    .registers 12

    .prologue
    const/16 v8, 0x384

    const/4 v1, 0x0

    .line 224
    aget v0, p0, v1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [I

    .line 226
    aget v0, p0, v1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 230
    :goto_13
    aget v3, p0, v1

    if-ge p1, v3, :cond_4a

    if-nez v0, :cond_4a

    .line 231
    add-int/lit8 v4, p1, 0x1

    aget v3, p0, p1

    .line 232
    if-ge v3, v8, :cond_2d

    .line 233
    div-int/lit8 v7, v3, 0x1e

    aput v7, v5, v2

    .line 234
    add-int/lit8 v7, v2, 0x1

    rem-int/lit8 v3, v3, 0x1e

    aput v3, v5, v7

    .line 235
    add-int/lit8 v2, v2, 0x2

    move p1, v4

    goto :goto_13

    .line 237
    :cond_2d
    sparse-switch v3, :sswitch_data_4e

    move p1, v4

    goto :goto_13

    .line 240
    :sswitch_32
    add-int/lit8 v3, v2, 0x1

    aput v8, v5, v2

    move v2, v3

    move p1, v4

    .line 241
    goto :goto_13

    .line 248
    :sswitch_39
    add-int/lit8 p1, v4, -0x1

    .line 249
    const/4 v0, 0x1

    .line 250
    goto :goto_13

    .line 258
    :sswitch_3d
    const/16 v3, 0x391

    aput v3, v5, v2

    .line 259
    add-int/lit8 p1, v4, 0x1

    aget v3, p0, v4

    .line 260
    aput v3, v6, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 266
    :cond_4a
    invoke-static {v5, v6, v2, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([I[IILjava/lang/StringBuilder;)V

    .line 267
    return p1

    .line 237
    :sswitch_data_4e
    .sparse-switch
        0x384 -> :sswitch_32
        0x385 -> :sswitch_39
        0x386 -> :sswitch_39
        0x391 -> :sswitch_3d
        0x39a -> :sswitch_39
        0x39b -> :sswitch_39
        0x39c -> :sswitch_39
        0x3a0 -> :sswitch_39
    .end sparse-switch
.end method

.method static a([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:Ljava/nio/charset/Charset;

    .line 103
    const/4 v0, 0x1

    .line 104
    const/4 v1, 0x2

    aget v0, p0, v0

    .line 105
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 106
    :goto_14
    const/4 v5, 0x0

    aget v5, p0, v5

    if-ge v1, v5, :cond_68

    .line 107
    sparse-switch v0, :sswitch_data_80

    .line 145
    add-int/lit8 v0, v1, -0x1

    .line 146
    invoke-static {p0, v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 149
    :goto_22
    array-length v1, p0

    if-ge v0, v1, :cond_63

    .line 150
    add-int/lit8 v1, v0, 0x1

    aget v0, p0, v0

    goto :goto_14

    .line 109
    :sswitch_2a
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_22

    .line 113
    :sswitch_2f
    invoke-static {v0, p0, v2, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_22

    .line 116
    :sswitch_34
    add-int/lit8 v0, v1, 0x1

    aget v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 119
    :sswitch_3d
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_22

    .line 122
    :sswitch_42
    add-int/lit8 v0, v1, 0x1

    aget v1, p0, v1

    .line 123
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->a(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_22

    .line 128
    :sswitch_53
    add-int/lit8 v0, v1, 0x2

    .line 129
    goto :goto_22

    .line 132
    :sswitch_56
    add-int/lit8 v0, v1, 0x1

    .line 133
    goto :goto_22

    .line 135
    :sswitch_59
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v0

    goto :goto_22

    .line 140
    :sswitch_5e
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 152
    :cond_63
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 155
    :cond_68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_73

    .line 156
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 158
    :cond_73
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v6, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v4}, Lcom/google/zxing/common/DecoderResult;->a(Ljava/lang/Object;)V

    .line 160
    return-object v0

    .line 107
    :sswitch_data_80
    .sparse-switch
        0x384 -> :sswitch_2a
        0x385 -> :sswitch_2f
        0x386 -> :sswitch_3d
        0x391 -> :sswitch_34
        0x39a -> :sswitch_5e
        0x39b -> :sswitch_5e
        0x39c -> :sswitch_2f
        0x39d -> :sswitch_56
        0x39e -> :sswitch_53
        0x39f -> :sswitch_42
        0x3a0 -> :sswitch_59
    .end sparse-switch
.end method

.method private static a([II)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 630
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v2, v0

    move v0, v1

    .line 631
    :goto_5
    if-ge v0, p1, :cond_21

    .line 632
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 634
    :cond_21
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_32

    .line 636
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 638
    :cond_32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([I[IILjava/lang/StringBuilder;)V
    .registers 12

    .prologue
    .line 294
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 295
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 296
    const/4 v0, 0x0

    move v3, v0

    .line 297
    :goto_6
    if-ge v3, p2, :cond_146

    .line 298
    aget v4, p0, v3

    .line 299
    const/4 v0, 0x0

    .line 300
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->a:[I

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_14a

    .line 423
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 425
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    :cond_1b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 428
    goto :goto_6

    .line 303
    :pswitch_1f
    const/16 v5, 0x1a

    if-ge v4, v5, :cond_27

    .line 305
    add-int/lit8 v0, v4, 0x41

    int-to-char v0, v0

    goto :goto_16

    .line 307
    :cond_27
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_2e

    .line 308
    const/16 v0, 0x20

    goto :goto_16

    .line 309
    :cond_2e
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_35

    .line 310
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->b:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_16

    .line 311
    :cond_35
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_3c

    .line 312
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->c:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_16

    .line 313
    :cond_3c
    const/16 v5, 0x1d

    if-ne v4, v5, :cond_46

    .line 316
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->f:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_16

    .line 317
    :cond_46
    const/16 v5, 0x391

    if-ne v4, v5, :cond_51

    .line 318
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 319
    :cond_51
    const/16 v5, 0x384

    if-ne v4, v5, :cond_16

    .line 320
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_16

    .line 327
    :pswitch_58
    const/16 v5, 0x1a

    if-ge v4, v5, :cond_60

    .line 328
    add-int/lit8 v0, v4, 0x61

    int-to-char v0, v0

    goto :goto_16

    .line 330
    :cond_60
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_67

    .line 331
    const/16 v0, 0x20

    goto :goto_16

    .line 332
    :cond_67
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_71

    .line 335
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->e:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_16

    .line 336
    :cond_71
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_78

    .line 337
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->c:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_16

    .line 338
    :cond_78
    const/16 v5, 0x1d

    if-ne v4, v5, :cond_82

    .line 341
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->f:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_16

    .line 342
    :cond_82
    const/16 v5, 0x391

    if-ne v4, v5, :cond_8d

    .line 344
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 345
    :cond_8d
    const/16 v5, 0x384

    if-ne v4, v5, :cond_16

    .line 346
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_16

    .line 353
    :pswitch_94
    const/16 v5, 0x19

    if-ge v4, v5, :cond_9e

    .line 354
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    aget-char v0, v0, v4

    goto/16 :goto_16

    .line 356
    :cond_9e
    const/16 v5, 0x19

    if-ne v4, v5, :cond_a6

    .line 357
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->d:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 358
    :cond_a6
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_ae

    .line 359
    const/16 v0, 0x20

    goto/16 :goto_16

    .line 360
    :cond_ae
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_b6

    .line 361
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->b:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 362
    :cond_b6
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_be

    .line 363
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 364
    :cond_be
    const/16 v5, 0x1d

    if-ne v4, v5, :cond_c9

    .line 367
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->f:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_16

    .line 368
    :cond_c9
    const/16 v5, 0x391

    if-ne v4, v5, :cond_d5

    .line 369
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    .line 370
    :cond_d5
    const/16 v5, 0x384

    if-ne v4, v5, :cond_16

    .line 371
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 378
    :pswitch_dd
    const/16 v5, 0x1d

    if-ge v4, v5, :cond_e7

    .line 379
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    aget-char v0, v0, v4

    goto/16 :goto_16

    .line 381
    :cond_e7
    const/16 v5, 0x1d

    if-ne v4, v5, :cond_ef

    .line 382
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 383
    :cond_ef
    const/16 v5, 0x391

    if-ne v4, v5, :cond_fb

    .line 384
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    .line 385
    :cond_fb
    const/16 v5, 0x384

    if-ne v4, v5, :cond_16

    .line 386
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 394
    :pswitch_103
    const/16 v2, 0x1a

    if-ge v4, v2, :cond_10d

    .line 395
    add-int/lit8 v0, v4, 0x41

    int-to-char v0, v0

    move-object v2, v1

    goto/16 :goto_16

    .line 397
    :cond_10d
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_116

    .line 398
    const/16 v0, 0x20

    move-object v2, v1

    goto/16 :goto_16

    .line 399
    :cond_116
    const/16 v2, 0x384

    if-ne v4, v2, :cond_147

    .line 400
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 408
    :pswitch_11e
    const/16 v2, 0x1d

    if-ge v4, v2, :cond_129

    .line 409
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    aget-char v0, v0, v4

    move-object v2, v1

    goto/16 :goto_16

    .line 411
    :cond_129
    const/16 v2, 0x1d

    if-ne v4, v2, :cond_131

    .line 412
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 413
    :cond_131
    const/16 v2, 0x391

    if-ne v4, v2, :cond_13e

    .line 416
    aget v2, p1, v3

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v2, v1

    goto/16 :goto_16

    .line 417
    :cond_13e
    const/16 v2, 0x384

    if-ne v4, v2, :cond_147

    .line 418
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_16

    .line 429
    :cond_146
    return-void

    :cond_147
    move-object v2, v1

    goto/16 :goto_16

    .line 300
    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_58
        :pswitch_94
        :pswitch_dd
        :pswitch_103
        :pswitch_11e
    .end packed-switch
.end method

.method private static b([IILjava/lang/StringBuilder;)I
    .registers 12

    .prologue
    const/16 v8, 0x384

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 545
    .line 548
    const/16 v0, 0xf

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    .line 550
    :cond_a
    :goto_a
    aget v4, p0, v1

    if-ge p1, v4, :cond_4f

    if-nez v0, :cond_4f

    .line 551
    add-int/lit8 v4, p1, 0x1

    aget v6, p0, p1

    .line 552
    aget v7, p0, v1

    if-ne v4, v7, :cond_19

    move v0, v3

    .line 555
    :cond_19
    if-ge v6, v8, :cond_35

    .line 556
    aput v6, v5, v2

    .line 557
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    .line 569
    :goto_20
    rem-int/lit8 v4, v2, 0xf

    if-eqz v4, :cond_2a

    const/16 v4, 0x386

    if-eq v6, v4, :cond_2a

    if-eqz v0, :cond_a

    .line 576
    :cond_2a
    if-lez v2, :cond_a

    .line 577
    invoke-static {v5, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([II)Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 579
    goto :goto_a

    .line 559
    :cond_35
    if-eq v6, v8, :cond_4b

    const/16 v7, 0x385

    if-eq v6, v7, :cond_4b

    const/16 v7, 0x39c

    if-eq v6, v7, :cond_4b

    const/16 v7, 0x3a0

    if-eq v6, v7, :cond_4b

    const/16 v7, 0x39b

    if-eq v6, v7, :cond_4b

    const/16 v7, 0x39a

    if-ne v6, v7, :cond_50

    .line 565
    :cond_4b
    add-int/lit8 p1, v4, -0x1

    move v0, v3

    .line 566
    goto :goto_20

    .line 583
    :cond_4f
    return p1

    :cond_50
    move p1, v4

    goto :goto_20
.end method
