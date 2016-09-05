.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:[I

.field private final e:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .registers 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static a([II)F
    .registers 5

    .prologue
    .line 191
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a(IIII)Z
    .registers 12

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v1

    .line 247
    const/4 v0, 0x0

    .line 248
    :goto_5
    if-lt p1, v0, :cond_1f

    if-lt p2, v0, :cond_1f

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    sub-int v3, p2, v0

    sub-int v4, p1, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 249
    const/4 v2, 0x2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 253
    :cond_1f
    if-lt p1, v0, :cond_23

    if-ge p2, v0, :cond_25

    .line 254
    :cond_23
    const/4 v0, 0x0

    .line 319
    :goto_24
    return v0

    .line 258
    :cond_25
    :goto_25
    if-lt p1, v0, :cond_44

    if-lt p2, v0, :cond_44

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    sub-int v3, p2, v0

    sub-int v4, p1, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v2

    if-nez v2, :cond_44

    const/4 v2, 0x1

    aget v2, v1, v2

    if-gt v2, p3, :cond_44

    .line 260
    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 265
    :cond_44
    if-lt p1, v0, :cond_4d

    if-lt p2, v0, :cond_4d

    const/4 v2, 0x1

    aget v2, v1, v2

    if-le v2, p3, :cond_4f

    .line 266
    :cond_4d
    const/4 v0, 0x0

    goto :goto_24

    .line 270
    :cond_4f
    :goto_4f
    if-lt p1, v0, :cond_6e

    if-lt p2, v0, :cond_6e

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    sub-int v3, p2, v0

    sub-int v4, p1, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v2, 0x0

    aget v2, v1, v2

    if-gt v2, p3, :cond_6e

    .line 272
    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 275
    :cond_6e
    const/4 v0, 0x0

    aget v0, v1, v0

    if-le v0, p3, :cond_75

    .line 276
    const/4 v0, 0x0

    goto :goto_24

    .line 279
    :cond_75
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v2

    .line 280
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v3

    .line 283
    const/4 v0, 0x1

    .line 284
    :goto_82
    add-int v4, p1, v0

    if-ge v4, v2, :cond_a0

    add-int v4, p2, v0

    if-ge v4, v3, :cond_a0

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    add-int v5, p2, v0

    add-int v6, p1, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 285
    const/4 v4, 0x2

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 290
    :cond_a0
    add-int v4, p1, v0

    if-ge v4, v2, :cond_a8

    add-int v4, p2, v0

    if-lt v4, v3, :cond_ab

    .line 291
    :cond_a8
    const/4 v0, 0x0

    goto/16 :goto_24

    .line 294
    :cond_ab
    :goto_ab
    add-int v4, p1, v0

    if-ge v4, v2, :cond_ce

    add-int v4, p2, v0

    if-ge v4, v3, :cond_ce

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    add-int v5, p2, v0

    add-int v6, p1, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v4

    if-nez v4, :cond_ce

    const/4 v4, 0x3

    aget v4, v1, v4

    if-ge v4, p3, :cond_ce

    .line 296
    const/4 v4, 0x3

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 300
    :cond_ce
    add-int v4, p1, v0

    if-ge v4, v2, :cond_db

    add-int v4, p2, v0

    if-ge v4, v3, :cond_db

    const/4 v4, 0x3

    aget v4, v1, v4

    if-lt v4, p3, :cond_de

    .line 301
    :cond_db
    const/4 v0, 0x0

    goto/16 :goto_24

    .line 304
    :cond_de
    :goto_de
    add-int v4, p1, v0

    if-ge v4, v2, :cond_101

    add-int v4, p2, v0

    if-ge v4, v3, :cond_101

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    add-int v5, p2, v0

    add-int v6, p1, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v4

    if-eqz v4, :cond_101

    const/4 v4, 0x4

    aget v4, v1, v4

    if-ge v4, p3, :cond_101

    .line 306
    const/4 v4, 0x4

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 310
    :cond_101
    const/4 v0, 0x4

    aget v0, v1, v0

    if-lt v0, p3, :cond_109

    .line 311
    const/4 v0, 0x0

    goto/16 :goto_24

    .line 316
    :cond_109
    const/4 v0, 0x0

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x2

    aget v2, v1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x3

    aget v2, v1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x4

    aget v2, v1, v2

    add-int/2addr v0, v2

    .line 317
    sub-int/2addr v0, p4

    .line 318
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v2, p4, 0x2

    if-ge v0, v2, :cond_12e

    .line 319
    invoke-static {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v0

    if-eqz v0, :cond_12e

    const/4 v0, 0x1

    goto/16 :goto_24

    :cond_12e
    const/4 v0, 0x0

    goto/16 :goto_24
.end method

.method protected static a([I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v1, 0x0

    .line 200
    move v2, v1

    move v3, v1

    .line 201
    :goto_6
    const/4 v4, 0x5

    if-ge v2, v4, :cond_12

    .line 202
    aget v4, p0, v2

    .line 203
    if-nez v4, :cond_e

    .line 219
    :cond_d
    :goto_d
    return v1

    .line 206
    :cond_e
    add-int/2addr v3, v4

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 208
    :cond_12
    const/4 v2, 0x7

    if-lt v3, v2, :cond_d

    .line 211
    int-to-float v2, v3

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    .line 212
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 214
    aget v4, p0, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 215
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_65

    aget v4, p0, v0

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 216
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_65

    mul-float v4, v6, v2

    const/4 v5, 0x2

    aget v5, p0, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 217
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v5, v6, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_65

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 218
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_65

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 219
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_65

    :goto_63
    move v1, v0

    goto :goto_d

    :cond_65
    move v0, v1

    goto :goto_63
.end method

.method private a()[I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    aput v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    return-object v0
.end method

.method private b(IIII)F
    .registers 16

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x7fc00000    # NaNf

    .line 335
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    .line 337
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v3

    .line 338
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v4

    move v1, p1

    .line 342
    :goto_11
    if-ltz v1, :cond_23

    invoke-virtual {v2, p2, v1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 343
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 346
    :cond_23
    if-gez v1, :cond_26

    .line 397
    :cond_25
    :goto_25
    return v0

    .line 349
    :cond_26
    :goto_26
    if-ltz v1, :cond_3b

    invoke-virtual {v2, p2, v1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-nez v5, :cond_3b

    aget v5, v4, v8

    if-gt v5, p3, :cond_3b

    .line 350
    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    .line 351
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 354
    :cond_3b
    if-ltz v1, :cond_25

    aget v5, v4, v8

    if-gt v5, p3, :cond_25

    .line 357
    :goto_41
    if-ltz v1, :cond_56

    invoke-virtual {v2, p2, v1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_56

    aget v5, v4, v7

    if-gt v5, p3, :cond_56

    .line 358
    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    .line 359
    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 361
    :cond_56
    aget v1, v4, v7

    if-gt v1, p3, :cond_25

    .line 366
    add-int/lit8 v1, p1, 0x1

    .line 367
    :goto_5c
    if-ge v1, v3, :cond_6e

    invoke-virtual {v2, p2, v1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 368
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 371
    :cond_6e
    if-eq v1, v3, :cond_25

    .line 374
    :goto_70
    if-ge v1, v3, :cond_85

    invoke-virtual {v2, p2, v1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-nez v5, :cond_85

    aget v5, v4, v9

    if-ge v5, p3, :cond_85

    .line 375
    aget v5, v4, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 378
    :cond_85
    if-eq v1, v3, :cond_25

    aget v5, v4, v9

    if-ge v5, p3, :cond_25

    .line 381
    :goto_8b
    if-ge v1, v3, :cond_a0

    invoke-virtual {v2, p2, v1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_a0

    aget v5, v4, v10

    if-ge v5, p3, :cond_a0

    .line 382
    aget v5, v4, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 385
    :cond_a0
    aget v2, v4, v10

    if-ge v2, p3, :cond_25

    .line 391
    aget v2, v4, v7

    aget v3, v4, v8

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v4, v3

    add-int/2addr v2, v3

    aget v3, v4, v9

    add-int/2addr v2, v3

    aget v3, v4, v10

    add-int/2addr v2, v3

    .line 393
    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, p4, 0x2

    if-ge v2, v3, :cond_25

    .line 397
    invoke-static {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v4, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v0

    goto/16 :goto_25
.end method

.method private b()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 529
    if-gt v0, v6, :cond_c

    move v0, v2

    .line 549
    :goto_b
    return v0

    .line 532
    :cond_c
    const/4 v1, 0x0

    .line 533
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 534
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->d()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4f

    .line 535
    if-nez v1, :cond_2a

    :goto_28
    move-object v1, v0

    .line 548
    goto :goto_13

    .line 543
    :cond_2a
    iput-boolean v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    .line 544
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 545
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->b()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_b

    :cond_4d
    move v0, v2

    .line 549
    goto :goto_b

    :cond_4f
    move-object v0, v1

    goto :goto_28
.end method

.method private c(IIII)F
    .registers 16

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x7fc00000    # NaNf

    .line 407
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    .line 409
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v3

    .line 410
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v4

    move v1, p1

    .line 413
    :goto_11
    if-ltz v1, :cond_23

    invoke-virtual {v2, v1, p2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 414
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 415
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 417
    :cond_23
    if-gez v1, :cond_26

    .line 466
    :cond_25
    :goto_25
    return v0

    .line 420
    :cond_26
    :goto_26
    if-ltz v1, :cond_3b

    invoke-virtual {v2, v1, p2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-nez v5, :cond_3b

    aget v5, v4, v8

    if-gt v5, p3, :cond_3b

    .line 421
    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    .line 422
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 424
    :cond_3b
    if-ltz v1, :cond_25

    aget v5, v4, v8

    if-gt v5, p3, :cond_25

    .line 427
    :goto_41
    if-ltz v1, :cond_56

    invoke-virtual {v2, v1, p2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_56

    aget v5, v4, v7

    if-gt v5, p3, :cond_56

    .line 428
    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    .line 429
    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 431
    :cond_56
    aget v1, v4, v7

    if-gt v1, p3, :cond_25

    .line 435
    add-int/lit8 v1, p1, 0x1

    .line 436
    :goto_5c
    if-ge v1, v3, :cond_6e

    invoke-virtual {v2, v1, p2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 437
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 440
    :cond_6e
    if-eq v1, v3, :cond_25

    .line 443
    :goto_70
    if-ge v1, v3, :cond_85

    invoke-virtual {v2, v1, p2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-nez v5, :cond_85

    aget v5, v4, v9

    if-ge v5, p3, :cond_85

    .line 444
    aget v5, v4, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 447
    :cond_85
    if-eq v1, v3, :cond_25

    aget v5, v4, v9

    if-ge v5, p3, :cond_25

    .line 450
    :goto_8b
    if-ge v1, v3, :cond_a0

    invoke-virtual {v2, v1, p2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v5

    if-eqz v5, :cond_a0

    aget v5, v4, v10

    if-ge v5, p3, :cond_a0

    .line 451
    aget v5, v4, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 454
    :cond_a0
    aget v2, v4, v10

    if-ge v2, p3, :cond_25

    .line 460
    aget v2, v4, v7

    aget v3, v4, v8

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v4, v3

    add-int/2addr v2, v3

    aget v3, v4, v9

    add-int/2addr v2, v3

    aget v3, v4, v10

    add-int/2addr v2, v3

    .line 462
    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    if-ge v2, p4, :cond_25

    .line 466
    invoke-static {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v4, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v0

    goto/16 :goto_25
.end method

.method private c()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 558
    .line 560
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 561
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v4

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 562
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->d()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5c

    .line 563
    add-int/lit8 v3, v3, 0x1

    .line 564
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->c()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v3

    :goto_2b
    move v3, v1

    move v1, v0

    .line 566
    goto :goto_10

    .line 567
    :cond_2e
    const/4 v0, 0x3

    if-ge v3, v0, :cond_32

    .line 579
    :cond_31
    :goto_31
    return v4

    .line 574
    :cond_32
    int-to-float v0, v5

    div-float v3, v1, v0

    .line 576
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 577
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->c()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v2, v0

    .line 578
    goto :goto_3b

    .line 579
    :cond_52
    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_31

    const/4 v4, 0x1

    goto :goto_31

    :cond_5c
    move v0, v1

    move v1, v3

    goto :goto_2b
.end method

.method private d()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x3

    .line 590
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 591
    if-ge v5, v7, :cond_12

    .line 593
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 597
    :cond_12
    if-le v5, v7, :cond_83

    .line 601
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 602
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->c()F

    move-result v0

    .line 603
    add-float/2addr v3, v0

    .line 604
    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    move v1, v0

    .line 605
    goto :goto_1c

    .line 606
    :cond_31
    int-to-float v0, v5

    div-float/2addr v3, v0

    .line 607
    int-to-float v0, v5

    div-float v0, v1, v0

    mul-float v1, v3, v3

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 609
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v1, v4

    .line 613
    :goto_53
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_83

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_83

    .line 614
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 615
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->c()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7f

    .line 616
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v1, v1, -0x1

    .line 613
    :cond_7f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 622
    :cond_83
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_c6

    .line 626
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 627
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->c()F

    move-result v0

    add-float/2addr v2, v0

    .line 628
    goto :goto_91

    .line 630
    :cond_a3
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 632
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 637
    :cond_c6
    new-array v1, v7, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    .line 638
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    .line 639
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v8

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    .line 640
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v9

    return-object v1
.end method


# virtual methods
.method final a(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p1, :cond_68

    sget-object v0, Lcom/google/zxing/DecodeHintType;->d:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    move v2, v0

    .line 78
    :goto_c
    if-eqz p1, :cond_6b

    sget-object v0, Lcom/google/zxing/DecodeHintType;->b:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    .line 79
    :goto_17
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v6

    .line 80
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v7

    .line 88
    mul-int/lit8 v1, v6, 0x3

    div-int/lit16 v1, v1, 0xe4

    .line 89
    const/4 v3, 0x3

    if-lt v1, v3, :cond_2c

    if-eqz v2, :cond_2d

    .line 90
    :cond_2c
    const/4 v1, 0x3

    .line 93
    :cond_2d
    const/4 v4, 0x0

    .line 94
    const/4 v2, 0x5

    new-array v8, v2, [I

    .line 95
    add-int/lit8 v3, v1, -0x1

    move v5, v1

    :goto_34
    if-ge v3, v6, :cond_11d

    if-nez v4, :cond_11d

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 98
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 99
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 100
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 101
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 102
    const/4 v1, 0x0

    .line 103
    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v7, :cond_103

    .line 104
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9, v2, v3}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 106
    and-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5f

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 109
    :cond_5f
    aget v9, v8, v1

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v1

    .line 103
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 77
    :cond_68
    const/4 v0, 0x0

    move v2, v0

    goto :goto_c

    .line 78
    :cond_6b
    const/4 v0, 0x0

    goto :goto_17

    .line 111
    :cond_6d
    and-int/lit8 v9, v1, 0x1

    if-nez v9, :cond_fb

    .line 112
    const/4 v9, 0x4

    if-ne v1, v9, :cond_f1

    .line 113
    invoke-static {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 114
    invoke-virtual {p0, v8, v3, v2, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([IIIZ)Z

    move-result v1

    .line 115
    if-eqz v1, :cond_b8

    .line 118
    const/4 v5, 0x2

    .line 119
    iget-boolean v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v1, :cond_a2

    .line 120
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c()Z

    move-result v1

    .line 146
    :goto_89
    const/4 v4, 0x0

    .line 147
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 148
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 149
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 150
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 151
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput v10, v8, v9

    move v11, v4

    move v4, v1

    move v1, v11

    .line 152
    goto :goto_65

    .line 122
    :cond_a2
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()I

    move-result v1

    .line 123
    const/4 v9, 0x2

    aget v9, v8, v9

    if-le v1, v9, :cond_12a

    .line 132
    const/4 v2, 0x2

    aget v2, v8, v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    add-int v2, v3, v1

    .line 133
    add-int/lit8 v1, v7, -0x1

    :goto_b4
    move v3, v2

    move v2, v1

    move v1, v4

    .line 135
    goto :goto_89

    .line 137
    :cond_b8
    const/4 v1, 0x0

    const/4 v9, 0x2

    aget v9, v8, v9

    aput v9, v8, v1

    .line 138
    const/4 v1, 0x1

    const/4 v9, 0x3

    aget v9, v8, v9

    aput v9, v8, v1

    .line 139
    const/4 v1, 0x2

    const/4 v9, 0x4

    aget v9, v8, v9

    aput v9, v8, v1

    .line 140
    const/4 v1, 0x3

    const/4 v9, 0x1

    aput v9, v8, v1

    .line 141
    const/4 v1, 0x4

    const/4 v9, 0x0

    aput v9, v8, v1

    .line 142
    const/4 v1, 0x3

    .line 143
    goto :goto_65

    .line 153
    :cond_d4
    const/4 v1, 0x0

    const/4 v9, 0x2

    aget v9, v8, v9

    aput v9, v8, v1

    .line 154
    const/4 v1, 0x1

    const/4 v9, 0x3

    aget v9, v8, v9

    aput v9, v8, v1

    .line 155
    const/4 v1, 0x2

    const/4 v9, 0x4

    aget v9, v8, v9

    aput v9, v8, v1

    .line 156
    const/4 v1, 0x3

    const/4 v9, 0x1

    aput v9, v8, v1

    .line 157
    const/4 v1, 0x4

    const/4 v9, 0x0

    aput v9, v8, v1

    .line 158
    const/4 v1, 0x3

    goto/16 :goto_65

    .line 161
    :cond_f1
    add-int/lit8 v1, v1, 0x1

    aget v9, v8, v1

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v1

    goto/16 :goto_65

    .line 164
    :cond_fb
    aget v9, v8, v1

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v1

    goto/16 :goto_65

    .line 168
    :cond_103
    invoke-static {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([I)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 169
    invoke-virtual {p0, v8, v3, v7, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([IIIZ)Z

    move-result v1

    .line 170
    if-eqz v1, :cond_11a

    .line 171
    const/4 v1, 0x0

    aget v5, v8, v1

    .line 172
    iget-boolean v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v1, :cond_11a

    .line 174
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c()Z

    move-result v4

    .line 95
    :cond_11a
    add-int/2addr v3, v5

    goto/16 :goto_34

    .line 180
    :cond_11d
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/google/zxing/ResultPoint;->a([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v1

    :cond_12a
    move v1, v2

    move v2, v3

    goto :goto_b4
.end method

.method protected final a([IIIZ)Z
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 488
    aget v0, p1, v2

    aget v1, p1, v3

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    .line 490
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v1

    .line 491
    float-to-int v4, v1

    aget v5, p1, v7

    invoke-direct {p0, p2, v4, v5, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b(IIII)F

    move-result v4

    .line 492
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 494
    float-to-int v1, v1

    float-to-int v5, v4

    aget v6, p1, v7

    invoke-direct {p0, v1, v5, v6, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c(IIII)F

    move-result v5

    .line 495
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_7a

    if-eqz p4, :cond_3e

    float-to-int v1, v4

    float-to-int v6, v5

    aget v7, p1, v7

    .line 496
    invoke-direct {p0, v1, v6, v7, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 497
    :cond_3e
    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float v6, v0, v1

    move v1, v2

    .line 499
    :goto_44
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_64

    .line 500
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 502
    invoke-virtual {v0, v6, v4, v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->a(FFF)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 503
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->b(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 508
    :cond_64
    if-nez v2, :cond_79

    .line 509
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v0, v5, v4, v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 510
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    if-eqz v1, :cond_79

    .line 512
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v1, v0}, Lcom/google/zxing/ResultPointCallback;->a(Lcom/google/zxing/ResultPoint;)V

    :cond_79
    move v2, v3

    .line 518
    :cond_7a
    return v2

    .line 499
    :cond_7b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44
.end method
