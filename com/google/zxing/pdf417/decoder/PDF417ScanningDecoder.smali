.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private static a(I)I
    .registers 2

    .prologue
    .line 488
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 366
    if-eqz p3, :cond_20

    const/4 v0, 0x1

    .line 367
    :goto_4
    const/4 v1, 0x0

    .line 368
    sub-int v3, p1, v0

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 369
    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->c(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 371
    :cond_17
    if-eqz v1, :cond_27

    .line 372
    if-eqz p3, :cond_22

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->e()I

    move-result v0

    .line 398
    :goto_1f
    return v0

    .line 366
    :cond_20
    const/4 v0, -0x1

    goto :goto_4

    .line 372
    :cond_22
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->d()I

    move-result v0

    goto :goto_1f

    .line 374
    :cond_27
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->a(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_3d

    .line 376
    if-eqz p3, :cond_38

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->d()I

    move-result v0

    goto :goto_1f

    :cond_38
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->e()I

    move-result v0

    goto :goto_1f

    .line 378
    :cond_3d
    sub-int v3, p1, v0

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 379
    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->a(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 381
    :cond_4f
    if-eqz v1, :cond_5d

    .line 382
    if-eqz p3, :cond_58

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->e()I

    move-result v0

    goto :goto_1f

    :cond_58
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->d()I

    move-result v0

    goto :goto_1f

    :cond_5d
    move v1, v2

    .line 386
    :goto_5e
    sub-int v3, p1, v0

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 387
    sub-int/2addr p1, v0

    .line 388
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->b()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_71
    if-ge v3, v5, :cond_92

    aget-object v6, v4, v3

    .line 389
    if-eqz v6, :cond_8f

    .line 390
    if-eqz p3, :cond_8a

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->e()I

    move-result v2

    :goto_7d
    mul-int/2addr v0, v1

    .line 393
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->e()I

    move-result v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->d()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_1f

    .line 390
    :cond_8a
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->d()I

    move-result v2

    goto :goto_7d

    .line 388
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 396
    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 398
    :cond_95
    if-eqz p3, :cond_a0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->e()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->a()I

    move-result v0

    goto :goto_1f

    :cond_a0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->e()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->b()I

    move-result v0

    goto/16 :goto_1f
.end method

.method private static a([I)I
    .registers 5

    .prologue
    .line 177
    const/4 v1, -0x1

    .line 178
    array-length v2, p0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_e

    aget v3, p0, v0

    .line 179
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 181
    :cond_e
    return v1
.end method

.method private static a([I[II)I
    .registers 5

    .prologue
    .line 546
    if-eqz p1, :cond_9

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_f

    :cond_9
    if-ltz p2, :cond_f

    const/16 v0, 0x200

    if-le p2, v0, :cond_14

    .line 551
    :cond_f
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 553
    :cond_14
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a([II[I)I

    move-result v0

    return v0
.end method

.method private static a(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 299
    array-length v0, p3

    new-array v3, v0, [I

    .line 301
    const/16 v0, 0x64

    .line 302
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4d

    move v0, v1

    .line 303
    :goto_b
    array-length v4, v3

    if-ge v0, v4, :cond_1b

    .line 304
    aget v4, p3, v0

    aget-object v5, p4, v0

    aget v6, v3, v0

    aget v5, v5, v6

    aput v5, p1, v4

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 307
    :cond_1b
    :try_start_1b
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a([II[I)Lcom/google/zxing/common/DecoderResult;
    :try_end_1e
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result-object v0

    return-object v0

    .line 308
    :catch_20
    move-exception v0

    .line 311
    array-length v0, v3

    if-nez v0, :cond_29

    .line 312
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_29
    move v0, v1

    .line 314
    :goto_2a
    array-length v4, v3

    if-ge v0, v4, :cond_3c

    .line 315
    aget v4, v3, v0

    aget-object v5, p4, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3e

    .line 316
    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    :cond_3c
    move v0, v2

    .line 314
    goto :goto_6

    .line 319
    :cond_3e
    aput v1, v3, v0

    .line 320
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_4a

    .line 321
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 314
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 326
    :cond_4d
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0
.end method

.method public static a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .registers 22

    .prologue
    .line 58
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x0

    move v8, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v7

    :goto_16
    const/4 v3, 0x2

    if-ge v8, v3, :cond_76

    .line 63
    if-eqz p1, :cond_107

    .line 64
    const/4 v3, 0x1

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v7

    .line 67
    :goto_27
    if-eqz p3, :cond_104

    .line 68
    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v0

    .line 71
    :goto_35
    invoke-static {v7, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v2

    .line 72
    if-nez v2, :cond_40

    .line 73
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 75
    :cond_40
    if-nez v8, :cond_70

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->e()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 76
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->e()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->c()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->c()I

    move-result v4

    if-lt v3, v4, :cond_64

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->e()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->d()I

    move-result v4

    if-le v3, v4, :cond_70

    .line 78
    :cond_64
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->e()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 62
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v6, v0

    move-object v0, v2

    move-object v1, v3

    move-object v2, v7

    goto :goto_16

    .line 80
    :cond_70
    invoke-virtual {v2, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    move-object v6, v0

    move-object v0, v2

    move-object v2, v7

    .line 84
    :cond_76
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b()I

    move-result v3

    add-int/lit8 v14, v3, 0x1

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 86
    invoke-virtual {v0, v14, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 88
    if-eqz v2, :cond_99

    const/4 v5, 0x1

    .line 89
    :goto_86
    const/4 v11, 0x1

    move/from16 v9, p6

    move/from16 v8, p5

    :goto_8b
    if-gt v11, v14, :cond_fd

    .line 90
    if-eqz v5, :cond_9b

    move v10, v11

    .line 91
    :goto_90
    invoke-virtual {v0, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    if-eqz v2, :cond_9f

    .line 89
    :cond_96
    add-int/lit8 v11, v11, 0x1

    goto :goto_8b

    .line 88
    :cond_99
    const/4 v5, 0x0

    goto :goto_86

    .line 90
    :cond_9b
    sub-int v2, v14, v11

    move v10, v2

    goto :goto_90

    .line 96
    :cond_9f
    if-eqz v10, :cond_a3

    if-ne v10, v14, :cond_d1

    .line 97
    :cond_a3
    new-instance v3, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v10, :cond_cf

    const/4 v2, 0x1

    :goto_a8
    invoke-direct {v3, v1, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    move-object v12, v3

    .line 101
    :goto_ac
    invoke-virtual {v0, v10, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 102
    const/4 v2, -0x1

    .line 105
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->c()I

    move-result v7

    move v13, v2

    :goto_b5
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->d()I

    move-result v2

    if-gt v7, v2, :cond_96

    .line 106
    invoke-static {v0, v10, v7, v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v6

    .line 107
    if-ltz v6, :cond_c7

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->b()I

    move-result v2

    if-le v6, v2, :cond_d9

    .line 108
    :cond_c7
    const/4 v2, -0x1

    if-ne v13, v2, :cond_d8

    move v2, v13

    .line 105
    :goto_cb
    add-int/lit8 v7, v7, 0x1

    move v13, v2

    goto :goto_b5

    .line 97
    :cond_cf
    const/4 v2, 0x0

    goto :goto_a8

    .line 99
    :cond_d1
    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v2, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    move-object v12, v2

    goto :goto_ac

    :cond_d8
    move v6, v13

    .line 113
    :cond_d9
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->b()I

    move-result v4

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_102

    .line 116
    invoke-virtual {v12, v7, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->a(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 118
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->c()I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 119
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->c()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v2, v6

    goto :goto_cb

    .line 123
    :cond_fd
    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0

    :cond_102
    move v2, v13

    goto :goto_cb

    :cond_104
    move-object v0, v6

    goto/16 :goto_35

    :cond_107
    move-object v7, v2

    goto/16 :goto_27
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->b(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v3

    .line 253
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v5, v0, [I

    .line 256
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 258
    :goto_23
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->c()I

    move-result v2

    if-ge v0, v2, :cond_64

    move v2, v1

    .line 259
    :goto_2a
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b()I

    move-result v8

    if-ge v2, v8, :cond_61

    .line 260
    aget-object v8, v3, v0

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->a()[I

    move-result-object v8

    .line 261
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b()I

    move-result v9

    mul-int/2addr v9, v0

    add-int/2addr v9, v2

    .line 262
    array-length v10, v8

    if-nez v10, :cond_4d

    .line 263
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 264
    :cond_4d
    array-length v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_56

    .line 265
    aget v8, v8, v1

    aput v8, v5, v9

    goto :goto_4a

    .line 267
    :cond_56
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 258
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 272
    :cond_64
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [[I

    .line 273
    :goto_6a
    array-length v0, v2

    if-ge v1, v0, :cond_78

    .line 274
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v2, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 276
    :cond_78
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d()I

    move-result v0

    .line 277
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->a(Ljava/util/Collection;)[I

    move-result-object v3

    .line 276
    invoke-static {v0, v5, v1, v3, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static a([II[I)Lcom/google/zxing/common/DecoderResult;
    .registers 5

    .prologue
    .line 521
    array-length v0, p0

    if-nez v0, :cond_8

    .line 522
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 525
    :cond_8
    const/4 v0, 0x1

    add-int/lit8 v1, p1, 0x1

    shl-int/2addr v0, v1

    .line 526
    invoke-static {p0, p2, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a([I[II)I

    move-result v1

    .line 527
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a([II)V

    .line 530
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    .line 531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/DecoderResult;->a(Ljava/lang/Integer;)V

    .line 532
    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/DecoderResult;->b(Ljava/lang/Integer;)V

    .line 533
    return-object v0
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    if-nez p0, :cond_5

    .line 172
    :cond_4
    :goto_4
    return-object v0

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->d()[I

    move-result-object v3

    .line 147
    if-eqz v3, :cond_4

    .line 150
    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a([I)I

    move-result v4

    .line 152
    array-length v5, v3

    move v2, v1

    move v0, v1

    :goto_12
    if-ge v2, v5, :cond_1b

    aget v6, v3, v2

    .line 153
    sub-int v7, v4, v6

    add-int/2addr v0, v7

    .line 154
    if-lez v6, :cond_2c

    .line 158
    :cond_1b
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->b()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    move v2, v0

    move v0, v1

    .line 159
    :goto_21
    if-lez v2, :cond_2f

    aget-object v6, v5, v0

    if-nez v6, :cond_2f

    .line 160
    add-int/lit8 v2, v2, -0x1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 152
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 163
    :cond_2f
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_35
    if-ltz v1, :cond_40

    .line 164
    aget v6, v3, v1

    sub-int v6, v4, v6

    add-int/2addr v0, v6

    .line 165
    aget v6, v3, v1

    if-lez v6, :cond_51

    .line 169
    :cond_40
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_46
    if-lez v1, :cond_54

    aget-object v3, v5, v0

    if-nez v3, :cond_54

    .line 170
    add-int/lit8 v1, v1, -0x1

    .line 169
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    .line 163
    :cond_51
    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    .line 172
    :cond_54
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->a()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->f()Z

    move-result v3

    .line 172
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->a(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .registers 16

    .prologue
    const/4 v6, 0x0

    .line 409
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->b(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 414
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v1

    .line 415
    if-nez v1, :cond_12

    move-object v0, v6

    .line 456
    :goto_11
    return-object v0

    .line 419
    :cond_12
    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->a([I)I

    move-result v2

    .line 420
    if-eqz p3, :cond_25

    .line 421
    add-int v0, v4, v2

    move v7, v0

    move v0, v4

    move v4, v7

    .line 445
    :goto_1d
    invoke-static {v2, p6, p7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(III)Z

    move-result v2

    if-nez v2, :cond_41

    move-object v0, v6

    .line 448
    goto :goto_11

    .line 423
    :cond_25
    const/4 v0, 0x0

    :goto_26
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_3e

    .line 424
    aget v3, v1, v0

    .line 425
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget v5, v1, v5

    aput v5, v1, v0

    .line 426
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aput v3, v1, v5

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 429
    :cond_3e
    sub-int v0, v4, v2

    goto :goto_1d

    .line 451
    :cond_41
    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->a([I)I

    move-result v2

    .line 452
    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->a(I)I

    move-result v3

    .line 453
    const/4 v1, -0x1

    if-ne v3, v1, :cond_4e

    move-object v0, v6

    .line 454
    goto :goto_11

    .line 456
    :cond_4e
    new-instance v1, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->c(I)I

    move-result v2

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    move-object v0, v1

    goto :goto_11
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 138
    :cond_5
    :goto_5
    return-object v0

    .line 132
    :cond_6
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->b(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_5

    .line 136
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 136
    invoke-static {v0, v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->a(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 138
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_5
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .registers 17

    .prologue
    .line 211
    new-instance v10, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v10, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 213
    const/4 v0, 0x0

    move v9, v0

    :goto_7
    const/4 v0, 0x2

    if-ge v9, v0, :cond_4b

    .line 214
    if-nez v9, :cond_3f

    const/4 v0, 0x1

    move v8, v0

    .line 215
    :goto_e
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v0

    float-to-int v4, v0

    .line 216
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v0

    float-to-int v5, v0

    :goto_18
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->d()I

    move-result v0

    if-gt v5, v0, :cond_47

    .line 217
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->c()I

    move-result v0

    if-lt v5, v0, :cond_47

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_3d

    .line 221
    invoke-virtual {v10, v5, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->a(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 222
    if-eqz p3, :cond_42

    .line 223
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->d()I

    move-result v4

    .line 217
    :cond_3d
    :goto_3d
    add-int/2addr v5, v8

    goto :goto_18

    .line 214
    :cond_3f
    const/4 v0, -0x1

    move v8, v0

    goto :goto_e

    .line 225
    :cond_42
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->e()I

    move-result v4

    goto :goto_3d

    .line 213
    :cond_47
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_7

    .line 230
    :cond_4b
    return-object v10
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    aget-object v0, p1, v3

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->a()[I

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b()I

    move-result v1

    .line 237
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->c()I

    move-result v2

    mul-int/2addr v1, v2

    .line 238
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d()I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 239
    array-length v2, v0

    if-nez v2, :cond_32

    .line 240
    if-lt v1, v4, :cond_25

    const/16 v0, 0x3a0

    if-le v1, v0, :cond_2a

    .line 241
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 243
    :cond_2a
    aget-object v0, p1, v3

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->a(I)V

    .line 248
    :cond_31
    :goto_31
    return-void

    .line 244
    :cond_32
    aget v0, v0, v3

    if-eq v0, v1, :cond_31

    .line 246
    aget-object v0, p1, v3

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->a(I)V

    goto :goto_31
.end method

.method private static a([II)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 560
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_a

    .line 563
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 568
    :cond_a
    aget v0, p0, v2

    .line 569
    array-length v1, p0

    if-le v0, v1, :cond_14

    .line 570
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 572
    :cond_14
    if-nez v0, :cond_1d

    .line 574
    array-length v0, p0

    if-ge p1, v0, :cond_1e

    .line 575
    array-length v0, p0

    sub-int/2addr v0, p1

    aput v0, p0, v2

    .line 580
    :cond_1d
    return-void

    .line 577
    :cond_1e
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static a(III)Z
    .registers 4

    .prologue
    .line 515
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_a

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .registers 3

    .prologue
    .line 359
    if-ltz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 465
    .line 466
    const/16 v0, 0x8

    new-array v4, v0, [I

    .line 468
    if-eqz p3, :cond_24

    move v0, v1

    :goto_9
    move v2, p3

    move v5, v3

    .line 470
    :goto_b
    if-eqz p3, :cond_f

    if-lt p4, p2, :cond_13

    :cond_f
    if-nez p3, :cond_2e

    if-lt p4, p1, :cond_2e

    :cond_13
    array-length v6, v4

    if-ge v5, v6, :cond_2e

    .line 472
    invoke-virtual {p0, p4, p5}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v6

    if-ne v6, v2, :cond_26

    .line 473
    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 474
    add-int/2addr p4, v0

    goto :goto_b

    .line 468
    :cond_24
    const/4 v0, -0x1

    goto :goto_9

    .line 476
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 477
    if-nez v2, :cond_2c

    move v2, v1

    goto :goto_b

    :cond_2c
    move v2, v3

    goto :goto_b

    .line 480
    :cond_2e
    array-length v0, v4

    if-eq v5, v0, :cond_3e

    if-eqz p3, :cond_35

    if-eq p4, p2, :cond_39

    :cond_35
    if-nez p3, :cond_40

    if-ne p4, p1, :cond_40

    :cond_39
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_40

    :cond_3e
    move-object v0, v4

    .line 484
    :goto_3f
    return-object v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method private static b(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .registers 13

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    .line 498
    if-eqz p3, :cond_23

    const/4 v0, -0x1

    :goto_6
    move v4, v2

    move v5, v0

    move v0, p4

    .line 500
    :goto_9
    if-ge v4, v6, :cond_34

    move v3, v0

    .line 501
    :goto_c
    if-eqz p3, :cond_10

    if-ge v3, p1, :cond_14

    :cond_10
    if-nez p3, :cond_29

    if-ge v3, p2, :cond_29

    .line 502
    :cond_14
    invoke-virtual {p0, v3, p5}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v0

    if-ne p3, v0, :cond_29

    .line 503
    sub-int v0, p4, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_25

    .line 511
    :goto_22
    return p4

    :cond_23
    move v0, v1

    .line 498
    goto :goto_6

    .line 506
    :cond_25
    add-int v0, v3, v5

    move v3, v0

    goto :goto_c

    .line 508
    :cond_29
    neg-int v5, v5

    .line 509
    if-nez p3, :cond_32

    move v0, v1

    .line 500
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    move p3, v0

    move v0, v3

    goto :goto_9

    :cond_32
    move v0, v2

    .line 509
    goto :goto_2d

    :cond_34
    move p4, v0

    .line 511
    goto :goto_22
.end method

.method private static b([I)I
    .registers 3

    .prologue
    .line 605
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static b(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 187
    if-eqz p0, :cond_9

    .line 188
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->e()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_11

    .line 189
    :cond_9
    if-nez p1, :cond_c

    .line 202
    :cond_b
    :goto_b
    return-object v0

    .line 189
    :cond_c
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->e()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    goto :goto_b

    .line 192
    :cond_11
    if-eqz p1, :cond_19

    .line 193
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->e()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v2

    if-nez v2, :cond_1b

    :cond_19
    move-object v0, v1

    .line 194
    goto :goto_b

    .line 197
    :cond_1b
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->a()I

    move-result v4

    if-eq v3, v4, :cond_39

    .line 198
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->b()I

    move-result v4

    if-eq v3, v4, :cond_39

    .line 199
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->c()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->c()I

    move-result v2

    if-ne v3, v2, :cond_b

    :cond_39
    move-object v0, v1

    .line 202
    goto :goto_b
.end method

.method private static b(I)[I
    .registers 5

    .prologue
    .line 583
    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 584
    const/4 v1, 0x0

    .line 585
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 587
    :goto_8
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_13

    .line 588
    and-int/lit8 v1, p0, 0x1

    .line 589
    add-int/lit8 v0, v0, -0x1

    .line 590
    if-gez v0, :cond_13

    .line 597
    return-object v2

    .line 594
    :cond_13
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 595
    shr-int/lit8 p0, p0, 0x1

    goto :goto_8
.end method

.method private static b(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move v1, v2

    .line 332
    :goto_18
    array-length v3, v0

    if-ge v1, v3, :cond_30

    move v3, v2

    .line 333
    :goto_1c
    aget-object v4, v0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_2d

    .line 334
    aget-object v4, v0, v1

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v4, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 332
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 339
    :cond_30
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    move v4, v2

    :goto_37
    if-ge v3, v6, :cond_6b

    aget-object v1, v5, v3

    .line 340
    if-eqz v1, :cond_65

    .line 341
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->b()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    :goto_43
    if-ge v1, v8, :cond_65

    aget-object v9, v7, v1

    .line 342
    if-eqz v9, :cond_62

    .line 343
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->h()I

    move-result v10

    .line 344
    if-ltz v10, :cond_62

    .line 345
    array-length v11, v0

    if-lt v10, v11, :cond_57

    .line 346
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 348
    :cond_57
    aget-object v10, v0, v10

    aget-object v10, v10, v4

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->g()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->a(I)V

    .line 341
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 353
    :cond_65
    add-int/lit8 v4, v4, 0x1

    .line 339
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_37

    .line 355
    :cond_6b
    return-object v0
.end method

.method private static c(I)I
    .registers 2

    .prologue
    .line 601
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->b(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->b([I)I

    move-result v0

    return v0
.end method
