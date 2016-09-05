.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final g:[I


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->g:[I

    return-void

    nop

    :array_a
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    .line 49
    return-void
.end method

.method private static a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 6

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->a(FFFF)F

    move-result v0

    return v0
.end method

.method private static a(JZ)I
    .registers 11

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 198
    if-eqz p2, :cond_17

    .line 199
    const/4 v2, 0x7

    .line 200
    const/4 v0, 0x2

    .line 206
    :goto_6
    sub-int v4, v2, v0

    .line 207
    new-array v5, v2, [I

    .line 208
    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_1c

    .line 209
    long-to-int v6, p0

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v2

    .line 210
    shr-long/2addr p0, v1

    .line 208
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 202
    :cond_17
    const/16 v0, 0xa

    move v2, v0

    move v0, v1

    .line 203
    goto :goto_6

    .line 213
    :cond_1c
    :try_start_1c
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->d:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 214
    invoke-virtual {v1, v5, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a([II)V
    :try_end_26
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_1c .. :try_end_26} :catch_31

    move v1, v3

    .line 220
    :goto_27
    if-ge v1, v0, :cond_37

    .line 221
    shl-int/lit8 v2, v3, 0x4

    aget v3, v5, v1

    add-int/2addr v3, v2

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 215
    :catch_31
    move-exception v0

    .line 216
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 223
    :cond_37
    return v3
.end method

.method private a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 401
    .line 403
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    .line 404
    int-to-float v2, p3

    div-float v2, v1, v2

    .line 405
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v3

    .line 406
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v4

    .line 407
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    .line 408
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v6

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    div-float/2addr v2, v1

    move v1, v0

    .line 409
    :goto_27
    if-ge v1, p3, :cond_49

    .line 410
    iget-object v6, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    int-to-float v7, v1

    mul-float/2addr v7, v5

    add-float/2addr v7, v3

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 411
    const/4 v6, 0x1

    sub-int v7, p3, v1

    add-int/lit8 v7, v7, -0x1

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    .line 409
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 414
    :cond_49
    return v0
.end method

.method private a(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .registers 15

    .prologue
    .line 463
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v4

    .line 464
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v5, v0, v4

    .line 465
    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v6, v0, v4

    .line 466
    const/4 v3, 0x0

    .line 468
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v0

    int-to-float v2, v0

    .line 469
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v0

    int-to-float v1, v0

    .line 471
    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v7

    .line 473
    const/4 v0, 0x0

    move v11, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_3b
    int-to-float v8, v1

    cmpg-float v8, v8, v4

    if-gez v8, :cond_57

    .line 474
    add-float/2addr v3, v5

    .line 475
    add-float/2addr v2, v6

    .line 476
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v9

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v8

    if-eq v8, v7, :cond_54

    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 473
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 481
    :cond_57
    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 483
    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_69

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_69

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_68
    return v0

    :cond_69
    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_75

    const/4 v0, 0x1

    :goto_71
    if-ne v0, v7, :cond_77

    const/4 v0, 0x1

    goto :goto_68

    :cond_75
    const/4 v0, 0x0

    goto :goto_71

    :cond_77
    const/4 v0, -0x1

    goto :goto_68
.end method

.method private static a([II)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 166
    .line 167
    array-length v3, p0

    move v1, v0

    move v2, v0

    :goto_4
    if-ge v1, v3, :cond_17

    aget v4, p0, v1

    .line 169
    add-int/lit8 v5, p1, -0x2

    shr-int v5, v4, v5

    shl-int/lit8 v5, v5, 0x1

    and-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    .line 170
    shl-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v4

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 175
    :cond_17
    and-int/lit8 v1, v2, 0x1

    shl-int/lit8 v1, v1, 0xb

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 179
    :goto_1e
    const/4 v2, 0x4

    if-ge v0, v2, :cond_31

    .line 180
    sget-object v2, Lcom/google/zxing/aztec/detector/Detector;->g:[I

    aget v2, v2, v0

    xor-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2e

    .line 181
    return v0

    .line 179
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 184
    :cond_31
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private a()Lcom/google/zxing/aztec/detector/Detector$Point;
    .registers 12

    .prologue
    const/high16 v10, 0x40800000    # 4.0f

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 304
    :try_start_5
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 305
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 306
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 307
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 308
    const/4 v4, 0x3

    aget-object v0, v0, v4
    :try_end_1c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_5 .. :try_end_1c} :catch_9b

    .line 324
    :goto_1c
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v4

    .line 325
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v0

    .line 331
    :try_start_4c
    new-instance v1, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 332
    const/4 v1, 0x0

    aget-object v3, v5, v1

    .line 333
    const/4 v1, 0x1

    aget-object v2, v5, v1

    .line 334
    const/4 v1, 0x2

    aget-object v1, v5, v1

    .line 335
    const/4 v6, 0x3

    aget-object v0, v5, v6
    :try_end_65
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4c .. :try_end_65} :catch_f2

    .line 346
    :goto_65
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v4

    .line 347
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v0

    .line 349
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v1, v4, v0}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v1

    .line 310
    :catch_9b
    move-exception v0

    .line 314
    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 315
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    .line 316
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v3, v4, -0x7

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 317
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v5, v4, 0x7

    invoke-direct {v1, v2, v5}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 318
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v5, v0, -0x7

    add-int/lit8 v6, v4, 0x7

    invoke-direct {v1, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 319
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v4, v4, -0x7

    invoke-direct {v5, v0, v4}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    goto/16 :goto_1c

    .line 336
    :catch_f2
    move-exception v1

    .line 339
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v3, v0, -0x7

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 340
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v5, v0, 0x7

    invoke-direct {v1, v2, v5}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 341
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v5, v4, -0x7

    add-int/lit8 v6, v0, 0x7

    invoke-direct {v1, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 342
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v0, v0, -0x7

    invoke-direct {v5, v4, v0}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->a()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    goto/16 :goto_65
.end method

.method private a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .registers 8

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v0

    add-int v1, v0, p3

    .line 495
    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v0

    add-int/2addr v0, p4

    .line 497
    :goto_b
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/aztec/detector/Detector;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_1c

    .line 498
    add-int/2addr v1, p3

    .line 499
    add-int/2addr v0, p4

    goto :goto_b

    .line 502
    :cond_1c
    sub-int/2addr v1, p3

    .line 503
    sub-int v2, v0, p4

    move v0, v1

    .line 505
    :goto_20
    invoke-direct {p0, v0, v2}, Lcom/google/zxing/aztec/detector/Detector;->a(II)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_30

    .line 506
    add-int/2addr v0, p3

    goto :goto_20

    .line 508
    :cond_30
    sub-int v1, v0, p3

    move v0, v2

    .line 510
    :goto_33
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/aztec/detector/Detector;->a(II)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_43

    .line 511
    add-int/2addr v0, p4

    goto :goto_33

    .line 513
    :cond_43
    sub-int/2addr v0, p4

    .line 515
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .registers 27

    .prologue
    .line 373
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->a()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->b()I

    move-result v3

    .line 376
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    int-to-float v4, v4

    sub-float v5, v2, v4

    .line 377
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    int-to-float v4, v4

    add-float v7, v2, v4

    .line 386
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v14

    .line 387
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v16

    .line 388
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v18

    .line 389
    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    move v6, v5

    move v8, v5

    move v9, v7

    move v10, v7

    move v11, v5

    move v12, v7

    .line 379
    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->a(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private a([Lcom/google/zxing/ResultPoint;)V
    .registers 12

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 100
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_25

    aget-object v1, p1, v5

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_25

    aget-object v1, p1, v6

    .line 101
    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_25

    aget-object v1, p1, v7

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 102
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 104
    :cond_2a
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v1, v1, 0x2

    .line 106
    new-array v4, v8, [I

    aget-object v2, p1, v0

    aget-object v3, p1, v5

    .line 107
    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v0

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    .line 108
    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v5

    aget-object v2, p1, v6

    aget-object v3, p1, v7

    .line 109
    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v6

    aget-object v2, p1, v7

    aget-object v3, p1, v0

    .line 110
    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v7

    .line 117
    invoke-static {v4, v1}, Lcom/google/zxing/aztec/detector/Detector;->a([II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    .line 120
    const-wide/16 v2, 0x0

    move v9, v0

    move-wide v0, v2

    move v2, v9

    .line 121
    :goto_63
    if-ge v2, v8, :cond_8a

    .line 122
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x4

    aget v3, v4, v3

    .line 123
    iget-boolean v5, p0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    if-eqz v5, :cond_7b

    .line 125
    const/4 v5, 0x7

    shl-long/2addr v0, v5

    .line 126
    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-long v6, v3

    add-long/2addr v0, v6

    .line 121
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 129
    :cond_7b
    const/16 v5, 0xa

    shl-long/2addr v0, v5

    .line 130
    shr-int/lit8 v5, v3, 0x2

    and-int/lit16 v5, v5, 0x3e0

    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v5

    int-to-long v6, v3

    add-long/2addr v0, v6

    goto :goto_78

    .line 136
    :cond_8a
    iget-boolean v2, p0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->a(JZ)I

    move-result v0

    .line 138
    iget-boolean v1, p0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    if-eqz v1, :cond_a1

    .line 140
    shr-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    .line 141
    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    .line 147
    :goto_a0
    return-void

    .line 144
    :cond_a1
    shr-int/lit8 v1, v0, 0xb

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    .line 145
    and-int/lit16 v0, v0, 0x7ff

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    goto :goto_a0
.end method

.method private a(II)Z
    .registers 4

    .prologue
    .line 547
    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v0

    if-ge p1, v0, :cond_16

    if-lez p2, :cond_16

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v0

    if-ge p2, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private a(Lcom/google/zxing/ResultPoint;)Z
    .registers 4

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v0

    .line 552
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v1

    .line 553
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(II)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 426
    const/4 v1, 0x3

    .line 428
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 429
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 430
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 431
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v7

    add-int/2addr v1, v7

    invoke-direct {v5, v6, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 433
    invoke-direct {p0, v5, v2}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    .line 435
    if-nez v1, :cond_45

    .line 453
    :cond_44
    :goto_44
    return v0

    .line 439
    :cond_45
    invoke-direct {p0, v2, v3}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v2

    .line 441
    if-ne v2, v1, :cond_44

    .line 445
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v2

    .line 447
    if-ne v2, v1, :cond_44

    .line 451
    invoke-direct {p0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v2

    .line 453
    if-ne v2, v1, :cond_44

    const/4 v0, 0x1

    goto :goto_44
.end method

.method private a(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .registers 16

    .prologue
    .line 237
    .line 242
    const/4 v0, 0x1

    .line 244
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    move-object v2, p1

    move-object v4, p1

    move-object v6, p1

    :goto_7
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    const/16 v3, 0x9

    if-ge v1, v3, :cond_51

    .line 245
    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, v6, v0, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    .line 246
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v5

    .line 247
    const/4 v1, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v3

    .line 248
    const/4 v1, -0x1

    const/4 v8, -0x1

    invoke-direct {p0, p1, v0, v1, v8}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    .line 254
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_60

    .line 255
    invoke-static {v1, v7}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v8

    iget v9, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {p1, v6}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v9

    iget v10, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    add-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    .line 256
    float-to-double v10, v8

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    cmpg-double v9, v10, v12

    if-ltz v9, :cond_51

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_51

    invoke-direct {p0, v7, v5, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v8

    if-nez v8, :cond_60

    .line 269
    :cond_51
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_70

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_70

    .line 270
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 266
    :cond_60
    if-nez v0, :cond_6e

    const/4 v0, 0x1

    .line 244
    :goto_63
    iget v2, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    move-object p1, v1

    move-object v2, v3

    move-object v4, v5

    move-object v6, v7

    goto :goto_7

    .line 266
    :cond_6e
    const/4 v0, 0x0

    goto :goto_63

    .line 273
    :cond_70
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_ec

    const/4 v0, 0x1

    :goto_76
    iput-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    .line 277
    new-instance v0, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v3, v5

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 278
    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 279
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 280
    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 284
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x3

    int-to-float v0, v0

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v4, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->a([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    .line 273
    :cond_ec
    const/4 v0, 0x0

    goto :goto_76
.end method

.method private static a([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .registers 13

    .prologue
    .line 527
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    div-float v0, p2, v0

    .line 528
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 529
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 530
    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 531
    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v4

    const/4 v5, 0x2

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 533
    new-instance v5, Lcom/google/zxing/ResultPoint;

    mul-float v6, v0, v1

    add-float/2addr v6, v3

    mul-float v7, v0, v2

    add-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 534
    new-instance v6, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v2, v0

    sub-float v2, v4, v2

    invoke-direct {v6, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 536
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 537
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 538
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 539
    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v4

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v7

    add-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    .line 540
    new-instance v7, Lcom/google/zxing/ResultPoint;

    mul-float v8, v0, v1

    add-float/2addr v8, v3

    mul-float v9, v0, v2

    add-float/2addr v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 541
    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v0, v2

    sub-float v0, v4, v0

    invoke-direct {v8, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 543
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    return-object v0
.end method

.method private static b(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .registers 6

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->c()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->a(IIII)F

    move-result v0

    return v0
.end method

.method private b()I
    .registers 3

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    if-eqz v0, :cond_b

    .line 566
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    .line 571
    :goto_a
    return v0

    .line 568
    :cond_b
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_17

    .line 569
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    goto :goto_a

    .line 571
    :cond_17
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_a
.end method

.method private b([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .registers 4

    .prologue
    .line 359
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->a([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->a()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 71
    if-eqz p1, :cond_14

    .line 72
    aget-object v0, v6, v2

    .line 73
    aget-object v1, v6, v3

    aput-object v1, v6, v2

    .line 74
    aput-object v0, v6, v3

    .line 78
    :cond_14
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->a([Lcom/google/zxing/ResultPoint;)V

    .line 81
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 88
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->b([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 90
    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v0
.end method
