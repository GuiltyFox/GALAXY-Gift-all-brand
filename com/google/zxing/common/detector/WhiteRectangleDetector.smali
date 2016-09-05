.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5

    .prologue
    .line 47
    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .registers 7

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    .line 63
    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    .line 64
    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    .line 65
    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    .line 66
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    if-ltz v0, :cond_36

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    if-ltz v0, :cond_36

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    if-ge v0, v1, :cond_36

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    if-lt v0, v1, :cond_3b

    .line 67
    :cond_36
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 69
    :cond_3b
    return-void
.end method

.method private a(FFFF)Lcom/google/zxing/ResultPoint;
    .registers 12

    .prologue
    .line 253
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->a(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v1

    .line 254
    sub-float v0, p3, p1

    int-to-float v2, v1

    div-float v2, v0, v2

    .line 255
    sub-float v0, p4, p2

    int-to-float v3, v1

    div-float v3, v0, v3

    .line 257
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_36

    .line 258
    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v4

    .line 259
    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v5, p2

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->a(F)I

    move-result v5

    .line 260
    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 261
    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 264
    :goto_32
    return-object v0

    .line 257
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 264
    :cond_36
    const/4 v0, 0x0

    goto :goto_32
.end method

.method private a(IIIZ)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 325
    if-eqz p4, :cond_13

    .line 326
    :goto_3
    if-gt p1, p2, :cond_1e

    .line 327
    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p1, p3}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 339
    :goto_d
    return v0

    .line 326
    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 332
    :cond_11
    add-int/lit8 p1, p1, 0x1

    :cond_13
    if-gt p1, p2, :cond_1e

    .line 333
    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p3, p1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_d

    .line 339
    :cond_1e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .registers 17

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v1

    .line 291
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v2

    .line 292
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v3

    .line 293
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v4

    .line 294
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v5

    .line 295
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v6

    .line 296
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v7

    .line 297
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->b()F

    move-result v8

    .line 299
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    int-to-float v0, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    cmpg-float v0, v1, v0

    if-gez v0, :cond_66

    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v7, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    .line 306
    :goto_65
    return-object v0

    :cond_66
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v7, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    goto :goto_65
.end method


# virtual methods
.method public a()[Lcom/google/zxing/ResultPoint;
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 87
    iget v7, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    .line 88
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    .line 89
    iget v5, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    .line 90
    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    move v0, v3

    move v12, v1

    .line 100
    :goto_11
    if-eqz v12, :cond_134

    move v12, v1

    move v13, v11

    move v11, v3

    .line 108
    :cond_16
    :goto_16
    if-nez v12, :cond_1a

    if-nez v13, :cond_2e

    :cond_1a
    iget v12, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    if-ge v6, v12, :cond_2e

    .line 109
    invoke-direct {p0, v5, v4, v6, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v12

    .line 110
    if-eqz v12, :cond_29

    .line 111
    add-int/lit8 v6, v6, 0x1

    move v13, v1

    move v11, v1

    .line 113
    goto :goto_16

    .line 114
    :cond_29
    if-nez v13, :cond_16

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 119
    :cond_2e
    iget v12, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    if-lt v6, v12, :cond_57

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 190
    :goto_37
    if-nez v3, :cond_128

    if-eqz v0, :cond_128

    .line 192
    sub-int v9, v8, v4

    move v3, v1

    move-object v0, v2

    .line 195
    :goto_3f
    if-ge v3, v9, :cond_131

    .line 196
    int-to-float v0, v4

    sub-int v5, v6, v3

    int-to-float v5, v5

    add-int v10, v4, v3

    int-to-float v10, v10

    int-to-float v11, v6

    invoke-direct {p0, v0, v5, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_ca

    move-object v5, v0

    .line 202
    :goto_50
    if-nez v5, :cond_ce

    .line 203
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_57
    move v12, v10

    move v10, v11

    move v11, v1

    .line 128
    :cond_5a
    :goto_5a
    if-nez v11, :cond_5e

    if-nez v12, :cond_72

    :cond_5e
    iget v11, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    if-ge v4, v11, :cond_72

    .line 129
    invoke-direct {p0, v7, v6, v4, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v11

    .line 130
    if-eqz v11, :cond_6d

    .line 131
    add-int/lit8 v4, v4, 0x1

    move v12, v1

    move v10, v1

    .line 133
    goto :goto_5a

    .line 134
    :cond_6d
    if-nez v12, :cond_5a

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 139
    :cond_72
    iget v11, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    if-lt v4, v11, :cond_7c

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 141
    goto :goto_37

    :cond_7c
    move v11, v9

    move v9, v10

    move v10, v1

    .line 148
    :cond_7f
    :goto_7f
    if-nez v10, :cond_83

    if-nez v11, :cond_95

    :cond_83
    if-ltz v7, :cond_95

    .line 149
    invoke-direct {p0, v5, v4, v7, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v10

    .line 150
    if-eqz v10, :cond_90

    .line 151
    add-int/lit8 v7, v7, -0x1

    move v11, v1

    move v9, v1

    .line 153
    goto :goto_7f

    .line 154
    :cond_90
    if-nez v11, :cond_7f

    .line 155
    add-int/lit8 v7, v7, -0x1

    goto :goto_7f

    .line 159
    :cond_95
    if-gez v7, :cond_9d

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 161
    goto :goto_37

    :cond_9d
    move v10, v9

    move v9, v8

    move v8, v1

    .line 168
    :cond_a0
    :goto_a0
    if-nez v8, :cond_a4

    if-nez v9, :cond_b6

    :cond_a4
    if-ltz v5, :cond_b6

    .line 169
    invoke-direct {p0, v7, v6, v5, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v8

    .line 170
    if-eqz v8, :cond_b1

    .line 171
    add-int/lit8 v5, v5, -0x1

    move v9, v1

    move v10, v1

    .line 173
    goto :goto_a0

    .line 174
    :cond_b1
    if-nez v9, :cond_a0

    .line 175
    add-int/lit8 v5, v5, -0x1

    goto :goto_a0

    .line 179
    :cond_b6
    if-gez v5, :cond_bf

    move v3, v1

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    .line 181
    goto/16 :goto_37

    .line 184
    :cond_bf
    if-eqz v10, :cond_c2

    move v0, v1

    :cond_c2
    move v8, v9

    move v9, v11

    move v11, v13

    move v14, v12

    move v12, v10

    move v10, v14

    .line 188
    goto/16 :goto_11

    .line 195
    :cond_ca
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f

    :cond_ce
    move v3, v1

    move-object v0, v2

    .line 208
    :goto_d0
    if-ge v3, v9, :cond_12f

    .line 209
    int-to-float v0, v4

    add-int v10, v7, v3

    int-to-float v10, v10

    add-int v11, v4, v3

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v0, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_e8

    move-object v4, v0

    .line 215
    :goto_e1
    if-nez v4, :cond_eb

    .line 216
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 208
    :cond_e8
    add-int/lit8 v3, v3, 0x1

    goto :goto_d0

    :cond_eb
    move v3, v1

    move-object v0, v2

    .line 221
    :goto_ed
    if-ge v3, v9, :cond_12d

    .line 222
    int-to-float v0, v8

    add-int v10, v7, v3

    int-to-float v10, v10

    sub-int v11, v8, v3

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v0, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_105

    move-object v3, v0

    .line 228
    :goto_fe
    if-nez v3, :cond_108

    .line 229
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 221
    :cond_105
    add-int/lit8 v3, v3, 0x1

    goto :goto_ed

    :cond_108
    move-object v0, v2

    .line 234
    :goto_109
    if-ge v1, v9, :cond_119

    .line 235
    int-to-float v0, v8

    sub-int v2, v6, v1

    int-to-float v2, v2

    sub-int v7, v8, v1

    int-to-float v7, v7

    int-to-float v10, v6

    invoke-direct {p0, v0, v2, v7, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_120

    .line 241
    :cond_119
    if-nez v0, :cond_123

    .line 242
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 234
    :cond_120
    add-int/lit8 v1, v1, 0x1

    goto :goto_109

    .line 245
    :cond_123
    invoke-direct {p0, v0, v5, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    .line 248
    :cond_128
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12d
    move-object v3, v0

    goto :goto_fe

    :cond_12f
    move-object v4, v0

    goto :goto_e1

    :cond_131
    move-object v5, v0

    goto/16 :goto_50

    :cond_134
    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    goto/16 :goto_37
.end method
