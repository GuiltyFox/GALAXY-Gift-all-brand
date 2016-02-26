.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;,
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 61
    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_42

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 66
    const/16 v2, 0x19

    new-array v2, v2, [C

    fill-array-data v2, :array_64

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 77
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 78
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 79
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 80
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 81
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_2b
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_41

    .line 82
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 84
    :cond_41
    return-void

    .line 61
    :array_42
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
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

    .line 66
    nop

    :array_64
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

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .registers 22
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "codeIndex"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 433
    const/16 v14, 0x385

    move/from16 v0, p0

    if-ne v0, v14, :cond_93

    .line 436
    const/4 v5, 0x0

    .line 437
    .local v5, "count":I
    const-wide/16 v12, 0x0

    .line 438
    .local v12, "value":J
    const/4 v14, 0x6

    new-array v7, v14, [C

    .line 439
    .local v7, "decodedData":[C
    const/4 v14, 0x6

    new-array v2, v14, [I

    .line 440
    .local v2, "byteCompactedCodewords":[I
    const/4 v8, 0x0

    .line 441
    .local v8, "end":Z
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v11, p1, p2

    .local v11, "nextCode":I
    move/from16 p2, v4

    .line 442
    .end local v4    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    :goto_16
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p2

    if-ge v0, v14, :cond_75

    if-nez v8, :cond_75

    .line 443
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .local v6, "count":I
    aput v11, v2, v5

    .line 445
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 446
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v11, p1, p2

    .line 448
    const/16 v14, 0x384

    if-eq v11, v14, :cond_4b

    const/16 v14, 0x385

    if-eq v11, v14, :cond_4b

    const/16 v14, 0x386

    if-eq v11, v14, :cond_4b

    const/16 v14, 0x39c

    if-eq v11, v14, :cond_4b

    const/16 v14, 0x3a0

    if-eq v11, v14, :cond_4b

    const/16 v14, 0x39b

    if-eq v11, v14, :cond_4b

    const/16 v14, 0x39a

    if-ne v11, v14, :cond_50

    .line 455
    :cond_4b
    add-int/lit8 p2, v4, -0x1

    .line 456
    .end local v4    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    const/4 v8, 0x1

    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_16

    .line 458
    .end local v5    # "count":I
    .end local p2    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    :cond_50
    rem-int/lit8 v14, v6, 0x5

    if-nez v14, :cond_104

    if-lez v6, :cond_104

    .line 461
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_57
    const/4 v14, 0x6

    if-ge v10, v14, :cond_6c

    .line 462
    rsub-int/lit8 v14, v10, 0x5

    const-wide/16 v16, 0x100

    rem-long v16, v12, v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    int-to-char v15, v15

    aput-char v15, v7, v14

    .line 463
    const/16 v14, 0x8

    shr-long/2addr v12, v14

    .line 461
    add-int/lit8 v10, v10, 0x1

    goto :goto_57

    .line 465
    :cond_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 466
    const/4 v5, 0x0

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p2, v4

    .end local v4    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto :goto_16

    .line 472
    .end local v10    # "j":I
    :cond_75
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_85

    const/16 v14, 0x384

    if-ge v11, v14, :cond_85

    .line 473
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .restart local v6    # "count":I
    aput v11, v2, v5

    move v5, v6

    .line 479
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :cond_85
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_86
    if-ge v9, v5, :cond_100

    .line 480
    aget v14, v2, v9

    int-to-char v14, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v9, v9, 0x1

    goto :goto_86

    .line 483
    .end local v2    # "byteCompactedCodewords":[I
    .end local v5    # "count":I
    .end local v7    # "decodedData":[C
    .end local v8    # "end":Z
    .end local v9    # "i":I
    .end local v11    # "nextCode":I
    .end local v12    # "value":J
    :cond_93
    const/16 v14, 0x39c

    move/from16 v0, p0

    if-ne v0, v14, :cond_100

    .line 486
    const/4 v5, 0x0

    .line 487
    .restart local v5    # "count":I
    const-wide/16 v12, 0x0

    .line 488
    .restart local v12    # "value":J
    const/4 v8, 0x0

    .line 489
    .restart local v8    # "end":Z
    :cond_9d
    :goto_9d
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p2

    if-ge v0, v14, :cond_100

    if-nez v8, :cond_100

    .line 490
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v3, p1, p2

    .line 491
    .local v3, "code":I
    const/16 v14, 0x384

    if-ge v3, v14, :cond_d9

    .line 492
    add-int/lit8 v5, v5, 0x1

    .line 494
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    move/from16 p2, v4

    .line 507
    .end local v4    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    :goto_ba
    rem-int/lit8 v14, v5, 0x5

    if-nez v14, :cond_9d

    if-lez v5, :cond_9d

    .line 510
    const/4 v14, 0x6

    new-array v7, v14, [C

    .line 511
    .restart local v7    # "decodedData":[C
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_c4
    const/4 v14, 0x6

    if-ge v10, v14, :cond_f9

    .line 512
    rsub-int/lit8 v14, v10, 0x5

    const-wide/16 v16, 0xff

    and-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v15, v0

    int-to-char v15, v15

    aput-char v15, v7, v14

    .line 513
    const/16 v14, 0x8

    shr-long/2addr v12, v14

    .line 511
    add-int/lit8 v10, v10, 0x1

    goto :goto_c4

    .line 496
    .end local v7    # "decodedData":[C
    .end local v10    # "j":I
    .end local p2    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_d9
    const/16 v14, 0x384

    if-eq v3, v14, :cond_f5

    const/16 v14, 0x385

    if-eq v3, v14, :cond_f5

    const/16 v14, 0x386

    if-eq v3, v14, :cond_f5

    const/16 v14, 0x39c

    if-eq v3, v14, :cond_f5

    const/16 v14, 0x3a0

    if-eq v3, v14, :cond_f5

    const/16 v14, 0x39b

    if-eq v3, v14, :cond_f5

    const/16 v14, 0x39a

    if-ne v3, v14, :cond_101

    .line 503
    :cond_f5
    add-int/lit8 p2, v4, -0x1

    .line 504
    .end local v4    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    const/4 v8, 0x1

    goto :goto_ba

    .line 515
    .restart local v7    # "decodedData":[C
    .restart local v10    # "j":I
    :cond_f9
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 516
    const/4 v5, 0x0

    goto :goto_9d

    .line 520
    .end local v3    # "code":I
    .end local v5    # "count":I
    .end local v7    # "decodedData":[C
    .end local v8    # "end":Z
    .end local v10    # "j":I
    .end local v12    # "value":J
    :cond_100
    return p2

    .end local p2    # "codeIndex":I
    .restart local v3    # "code":I
    .restart local v4    # "codeIndex":I
    .restart local v5    # "count":I
    .restart local v8    # "end":Z
    .restart local v12    # "value":J
    :cond_101
    move/from16 p2, v4

    .end local v4    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto :goto_ba

    .end local v3    # "code":I
    .end local v5    # "count":I
    .end local p2    # "codeIndex":I
    .restart local v2    # "byteCompactedCodewords":[I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v7    # "decodedData":[C
    .restart local v11    # "nextCode":I
    :cond_104
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p2, v4

    .end local v4    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto/16 :goto_16
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 10
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 95
    .local v1, "codeIndex":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v0, p0, v1

    .line 96
    .local v0, "code":I
    new-instance v5, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .local v5, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    move v1, v2

    .line 97
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :goto_14
    const/4 v6, 0x0

    aget v6, p0, v6

    if-ge v1, v6, :cond_4e

    .line 98
    sparse-switch v0, :sswitch_data_66

    .line 121
    add-int/lit8 v1, v1, -0x1

    .line 122
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 125
    :goto_22
    array-length v6, p0

    if-ge v1, v6, :cond_49

    .line 126
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v0, p0, v1

    move v1, v2

    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_14

    .line 100
    :sswitch_2b
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 101
    goto :goto_22

    .line 103
    :sswitch_30
    invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 104
    goto :goto_22

    .line 106
    :sswitch_35
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 107
    goto :goto_22

    .line 109
    :sswitch_3a
    invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 110
    goto :goto_22

    .line 112
    :sswitch_3f
    invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 113
    goto :goto_22

    .line 115
    :sswitch_44
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    .line 116
    goto :goto_22

    .line 128
    :cond_49
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 131
    :cond_4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_59

    .line 132
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 134
    :cond_59
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v6, v7, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 135
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 136
    return-object v3

    .line 98
    :sswitch_data_66
    .sparse-switch
        0x384 -> :sswitch_2b
        0x385 -> :sswitch_30
        0x386 -> :sswitch_35
        0x391 -> :sswitch_3a
        0x39c -> :sswitch_3f
        0x3a0 -> :sswitch_44
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 615
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 616
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p1, :cond_1f

    .line 617
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 619
    :cond_1f
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_31

    .line 621
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 623
    :cond_31
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 14
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 141
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-le v9, v10, :cond_c

    .line 143
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 145
    :cond_c
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 146
    .local v8, "segmentIndexArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    const/4 v9, 0x2

    if-ge v7, v9, :cond_1c

    .line 147
    aget v9, p0, p1

    aput v9, v8, v7

    .line 146
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 149
    :cond_1c
    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v6, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 156
    aget v9, p0, p1

    const/16 v10, 0x39b

    if-ne v9, v10, :cond_76

    .line 157
    add-int/lit8 p1, p1, 0x1

    .line 158
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    .line 159
    .local v0, "additionalOptionCodeWords":[I
    const/4 v1, 0x0

    .line 161
    .local v1, "additionalOptionCodeWordsIndex":I
    const/4 v5, 0x0

    .line 162
    .local v5, "end":Z
    :goto_48
    const/4 v9, 0x0

    aget v9, p0, v9

    if-ge p1, v9, :cond_6e

    if-nez v5, :cond_6e

    .line 163
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v3, p0, p1

    .line 164
    .local v3, "code":I
    const/16 v9, 0x384

    if-ge v3, v9, :cond_5e

    .line 165
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "additionalOptionCodeWordsIndex":I
    .local v2, "additionalOptionCodeWordsIndex":I
    aput v3, v0, v1

    move v1, v2

    .end local v2    # "additionalOptionCodeWordsIndex":I
    .restart local v1    # "additionalOptionCodeWordsIndex":I
    move p1, v4

    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_48

    .line 167
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_5e
    packed-switch v3, :pswitch_data_84

    .line 174
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 169
    :pswitch_66
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 170
    add-int/lit8 p1, v4, 0x1

    .line 171
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v5, 0x1

    .line 172
    goto :goto_48

    .line 179
    .end local v3    # "code":I
    :cond_6e
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 185
    .end local v0    # "additionalOptionCodeWords":[I
    .end local v1    # "additionalOptionCodeWordsIndex":I
    .end local v5    # "end":Z
    :cond_75
    :goto_75
    return p1

    .line 180
    :cond_76
    aget v9, p0, p1

    const/16 v10, 0x39a

    if-ne v9, v10, :cond_75

    .line 181
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 182
    add-int/lit8 p1, p1, 0x1

    goto :goto_75

    .line 167
    nop

    :pswitch_data_84
    .packed-switch 0x39a
        :pswitch_66
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 16
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v11, 0x1b

    const/16 v10, 0x391

    const/16 v9, 0x384

    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 285
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 286
    .local v3, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 287
    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 288
    .local v1, "i":I
    :goto_f
    if-ge v1, p2, :cond_107

    .line 289
    aget v4, p0, v1

    .line 290
    .local v4, "subModeCh":I
    const/4 v0, 0x0

    .line 291
    .local v0, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_108

    .line 413
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_24

    .line 415
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 418
    goto :goto_f

    .line 294
    :pswitch_27
    if-ge v4, v7, :cond_2d

    .line 296
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto :goto_1f

    .line 298
    :cond_2d
    if-ne v4, v7, :cond_32

    .line 299
    const/16 v0, 0x20

    goto :goto_1f

    .line 300
    :cond_32
    if-ne v4, v11, :cond_37

    .line 301
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 302
    :cond_37
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_3e

    .line 303
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 304
    :cond_3e
    if-ne v4, v8, :cond_44

    .line 306
    move-object v2, v3

    .line 307
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 308
    :cond_44
    if-ne v4, v10, :cond_4d

    .line 309
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 310
    :cond_4d
    if-ne v4, v9, :cond_1f

    .line 311
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 318
    :pswitch_52
    if-ge v4, v7, :cond_58

    .line 319
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    goto :goto_1f

    .line 321
    :cond_58
    if-ne v4, v7, :cond_5d

    .line 322
    const/16 v0, 0x20

    goto :goto_1f

    .line 323
    :cond_5d
    if-ne v4, v11, :cond_63

    .line 325
    move-object v2, v3

    .line 326
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 327
    :cond_63
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_6a

    .line 328
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 329
    :cond_6a
    if-ne v4, v8, :cond_70

    .line 331
    move-object v2, v3

    .line 332
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 333
    :cond_70
    if-ne v4, v10, :cond_79

    .line 334
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 335
    :cond_79
    if-ne v4, v9, :cond_1f

    .line 336
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 343
    :pswitch_7e
    const/16 v5, 0x19

    if-ge v4, v5, :cond_87

    .line 344
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1f

    .line 346
    :cond_87
    const/16 v5, 0x19

    if-ne v4, v5, :cond_8e

    .line 347
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 348
    :cond_8e
    if-ne v4, v7, :cond_93

    .line 349
    const/16 v0, 0x20

    goto :goto_1f

    .line 350
    :cond_93
    if-ne v4, v11, :cond_98

    .line 351
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 352
    :cond_98
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_9f

    .line 353
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    .line 354
    :cond_9f
    if-ne v4, v8, :cond_a6

    .line 356
    move-object v2, v3

    .line 357
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1f

    .line 358
    :cond_a6
    if-ne v4, v10, :cond_b0

    .line 359
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 360
    :cond_b0
    if-ne v4, v9, :cond_1f

    .line 361
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1f

    .line 368
    :pswitch_b6
    if-ge v4, v8, :cond_be

    .line 369
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1f

    .line 371
    :cond_be
    if-ne v4, v8, :cond_c4

    .line 372
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1f

    .line 373
    :cond_c4
    if-ne v4, v10, :cond_ce

    .line 374
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 375
    :cond_ce
    if-ne v4, v9, :cond_1f

    .line 376
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1f

    .line 383
    :pswitch_d4
    move-object v3, v2

    .line 384
    if-ge v4, v7, :cond_dc

    .line 385
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto/16 :goto_1f

    .line 387
    :cond_dc
    if-ne v4, v7, :cond_e2

    .line 388
    const/16 v0, 0x20

    goto/16 :goto_1f

    .line 389
    :cond_e2
    if-ne v4, v9, :cond_1f

    .line 390
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1f

    .line 397
    :pswitch_e8
    move-object v3, v2

    .line 398
    if-ge v4, v8, :cond_f1

    .line 399
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1f

    .line 401
    :cond_f1
    if-ne v4, v8, :cond_f7

    .line 402
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1f

    .line 403
    :cond_f7
    if-ne v4, v10, :cond_101

    .line 406
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 407
    :cond_101
    if-ne v4, v9, :cond_1f

    .line 408
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1f

    .line 419
    .end local v0    # "ch":C
    .end local v4    # "subModeCh":I
    :cond_107
    return-void

    .line 291
    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_27
        :pswitch_52
        :pswitch_7e
        :pswitch_b6
        :pswitch_d4
        :pswitch_e8
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 12
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x384

    const/4 v7, 0x0

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "count":I
    const/4 v3, 0x0

    .line 535
    .local v3, "end":Z
    const/16 v6, 0xf

    new-array v4, v6, [I

    .line 537
    .local v4, "numericCodewords":[I
    :cond_9
    :goto_9
    aget v6, p0, v7

    if-ge p1, v6, :cond_4c

    if-nez v3, :cond_4c

    .line 538
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v0, p0, p1

    .line 539
    .local v0, "code":I
    aget v6, p0, v7

    if-ne v1, v6, :cond_18

    .line 540
    const/4 v3, 0x1

    .line 542
    :cond_18
    if-ge v0, v8, :cond_32

    .line 543
    aput v0, v4, v2

    .line 544
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 556
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :goto_1f
    rem-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_29

    const/16 v6, 0x386

    if-eq v0, v6, :cond_29

    if-eqz v3, :cond_9

    .line 563
    :cond_29
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const/4 v2, 0x0

    goto :goto_9

    .line 546
    .end local v5    # "s":Ljava/lang/String;
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_32
    if-eq v0, v8, :cond_48

    const/16 v6, 0x385

    if-eq v0, v6, :cond_48

    const/16 v6, 0x39c

    if-eq v0, v6, :cond_48

    const/16 v6, 0x3a0

    if-eq v0, v6, :cond_48

    const/16 v6, 0x39b

    if-eq v0, v6, :cond_48

    const/16 v6, 0x39a

    if-ne v0, v6, :cond_4d

    .line 552
    :cond_48
    add-int/lit8 p1, v1, -0x1

    .line 553
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_1f

    .line 568
    .end local v0    # "code":I
    :cond_4c
    return p1

    .end local p1    # "codeIndex":I
    .restart local v0    # "code":I
    .restart local v1    # "codeIndex":I
    :cond_4d
    move p1, v1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1f
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 14
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 200
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v6, v7, [I

    .line 202
    .local v6, "textCompactionData":[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v0, v7, [I

    .line 204
    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 205
    .local v4, "index":I
    const/4 v3, 0x0

    .line 206
    .local v3, "end":Z
    :goto_13
    aget v7, p0, v9

    if-ge p1, v7, :cond_5e

    if-nez v3, :cond_5e

    .line 207
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v1, p0, p1

    .line 208
    .local v1, "code":I
    if-ge v1, v10, :cond_2d

    .line 209
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    .line 210
    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 211
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_13

    .line 213
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_2d
    sparse-switch v1, :sswitch_data_62

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_13

    .line 216
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_32
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v10, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move p1, v2

    .line 217
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_13

    .line 219
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_39
    add-int/lit8 p1, v2, -0x1

    .line 220
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 221
    goto :goto_13

    .line 223
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_3d
    add-int/lit8 p1, v2, -0x1

    .line 224
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 225
    goto :goto_13

    .line 227
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_41
    add-int/lit8 p1, v2, -0x1

    .line 228
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 229
    goto :goto_13

    .line 231
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_45
    add-int/lit8 p1, v2, -0x1

    .line 232
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 233
    goto :goto_13

    .line 235
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_49
    add-int/lit8 p1, v2, -0x1

    .line 236
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 237
    goto :goto_13

    .line 245
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_4d
    const/16 v7, 0x391

    aput v7, v6, v4

    .line 246
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 247
    aput v1, v0, v4

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    goto :goto_13

    .line 251
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_5a
    add-int/lit8 p1, v2, -0x1

    .line 252
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_13

    .line 257
    .end local v1    # "code":I
    :cond_5e
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 258
    return p1

    .line 213
    :sswitch_data_62
    .sparse-switch
        0x384 -> :sswitch_32
        0x385 -> :sswitch_39
        0x386 -> :sswitch_3d
        0x391 -> :sswitch_4d
        0x39a -> :sswitch_49
        0x39b -> :sswitch_45
        0x39c -> :sswitch_5a
        0x3a0 -> :sswitch_41
    .end sparse-switch
.end method
