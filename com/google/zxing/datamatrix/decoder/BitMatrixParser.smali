.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:Lcom/google/zxing/common/BitMatrix;

.field private final c:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v0

    .line 37
    const/16 v1, 0x8

    if-lt v0, v1, :cond_13

    const/16 v1, 0x90

    if-gt v0, v1, :cond_13

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 38
    :cond_13
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 41
    :cond_18
    invoke-static {p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a:Lcom/google/zxing/common/BitMatrix;

    .line 43
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b:Lcom/google/zxing/common/BitMatrix;

    .line 44
    return-void
.end method

.method private static b(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v1

    .line 64
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/Version;->a(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(II)I
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    .line 226
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    .line 229
    :goto_c
    shl-int/lit8 v0, v0, 0x1

    .line 230
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 231
    or-int/lit8 v0, v0, 0x1

    .line 233
    :cond_18
    shl-int/lit8 v0, v0, 0x1

    .line 234
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 235
    or-int/lit8 v0, v0, 0x1

    .line 237
    :cond_24
    shl-int/lit8 v0, v0, 0x1

    .line 238
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 239
    or-int/lit8 v0, v0, 0x1

    .line 241
    :cond_30
    shl-int/lit8 v0, v0, 0x1

    .line 242
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 243
    or-int/lit8 v0, v0, 0x1

    .line 245
    :cond_3c
    shl-int/lit8 v0, v0, 0x1

    .line 246
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 247
    or-int/lit8 v0, v0, 0x1

    .line 249
    :cond_48
    shl-int/lit8 v0, v0, 0x1

    .line 250
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 251
    or-int/lit8 v0, v0, 0x1

    .line 253
    :cond_54
    shl-int/lit8 v0, v0, 0x1

    .line 254
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 255
    or-int/lit8 v0, v0, 0x1

    .line 257
    :cond_61
    return v0

    :cond_62
    move v0, v2

    goto :goto_c
.end method

.method a(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 16

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->b()I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->c()I

    move-result v1

    .line 406
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v2

    if-eq v2, v0, :cond_1b

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Dimension of bitMarix must match the version size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1b
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version;->d()I

    move-result v4

    .line 411
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version;->e()I

    move-result v5

    .line 413
    div-int v6, v0, v4

    .line 414
    div-int v7, v1, v5

    .line 416
    mul-int v0, v6, v4

    .line 417
    mul-int v1, v7, v5

    .line 419
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 420
    const/4 v0, 0x0

    move v3, v0

    :goto_36
    if-ge v3, v6, :cond_70

    .line 421
    mul-int v9, v3, v4

    .line 422
    const/4 v0, 0x0

    move v2, v0

    :goto_3c
    if-ge v2, v7, :cond_6c

    .line 423
    mul-int v10, v2, v5

    .line 424
    const/4 v0, 0x0

    move v1, v0

    :goto_42
    if-ge v1, v4, :cond_68

    .line 425
    add-int/lit8 v0, v4, 0x2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int v11, v0, v1

    .line 426
    add-int v12, v9, v1

    .line 427
    const/4 v0, 0x0

    :goto_4e
    if-ge v0, v5, :cond_64

    .line 428
    add-int/lit8 v13, v5, 0x2

    mul-int/2addr v13, v2

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v0

    .line 429
    invoke-virtual {p1, v13, v11}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v13

    if-eqz v13, :cond_61

    .line 430
    add-int v13, v10, v0

    .line 431
    invoke-virtual {v8, v13, v12}, Lcom/google/zxing/common/BitMatrix;->b(II)V

    .line 427
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 424
    :cond_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    .line 422
    :cond_68
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3c

    .line 420
    :cond_6c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_36

    .line 437
    :cond_70
    return-object v8
.end method

.method a()Lcom/google/zxing/datamatrix/decoder/Version;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object v0
.end method

.method a(IIII)Z
    .registers 8

    .prologue
    .line 156
    if-gez p1, :cond_21

    .line 157
    add-int v1, p1, p3

    .line 158
    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    .line 160
    :goto_b
    if-gez v0, :cond_15

    .line 161
    add-int/2addr v0, p4

    .line 162
    add-int/lit8 v2, p4, 0x4

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 164
    :cond_15
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->b(II)V

    .line 165
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v0

    return v0

    :cond_21
    move v0, p2

    move v1, p1

    goto :goto_b
.end method

.method b(II)I
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    .line 271
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_60

    move v0, v1

    .line 274
    :goto_b
    shl-int/lit8 v0, v0, 0x1

    .line 275
    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 276
    or-int/lit8 v0, v0, 0x1

    .line 278
    :cond_17
    shl-int/lit8 v0, v0, 0x1

    .line 279
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 280
    or-int/lit8 v0, v0, 0x1

    .line 282
    :cond_23
    shl-int/lit8 v0, v0, 0x1

    .line 283
    add-int/lit8 v3, p2, -0x4

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 284
    or-int/lit8 v0, v0, 0x1

    .line 286
    :cond_2f
    shl-int/lit8 v0, v0, 0x1

    .line 287
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 288
    or-int/lit8 v0, v0, 0x1

    .line 290
    :cond_3b
    shl-int/lit8 v0, v0, 0x1

    .line 291
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 292
    or-int/lit8 v0, v0, 0x1

    .line 294
    :cond_47
    shl-int/lit8 v0, v0, 0x1

    .line 295
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 296
    or-int/lit8 v0, v0, 0x1

    .line 298
    :cond_53
    shl-int/lit8 v0, v0, 0x1

    .line 299
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 300
    or-int/lit8 v0, v0, 0x1

    .line 302
    :cond_5f
    return v0

    :cond_60
    move v0, v2

    goto :goto_b
.end method

.method b(IIII)I
    .registers 8

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 182
    const/4 v0, 0x1

    .line 184
    :cond_c
    shl-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 186
    or-int/lit8 v0, v0, 0x1

    .line 188
    :cond_1a
    shl-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 190
    or-int/lit8 v0, v0, 0x1

    .line 192
    :cond_28
    shl-int/lit8 v0, v0, 0x1

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 194
    or-int/lit8 v0, v0, 0x1

    .line 196
    :cond_36
    shl-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 198
    or-int/lit8 v0, v0, 0x1

    .line 200
    :cond_42
    shl-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_4e
    shl-int/lit8 v0, v0, 0x1

    .line 205
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 206
    or-int/lit8 v0, v0, 0x1

    .line 208
    :cond_5a
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 212
    :cond_64
    return v0
.end method

.method b()[B
    .registers 16

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version;->f()I

    move-result v2

    new-array v10, v2, [B

    .line 83
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v11

    .line 84
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v12

    move v2, v0

    move v3, v0

    move v4, v0

    move v7, v0

    move v5, v9

    move v8, v0

    .line 94
    :goto_1d
    if-ne v5, v11, :cond_45

    if-nez v7, :cond_45

    if-nez v4, :cond_45

    .line 95
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v10, v8

    .line 96
    add-int/lit8 v5, v5, -0x2

    .line 97
    add-int/lit8 v4, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v1

    .line 137
    :goto_34
    if-lt v6, v11, :cond_ea

    if-lt v5, v12, :cond_ea

    .line 139
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->f()I

    move-result v0

    if-eq v7, v0, :cond_e9

    .line 140
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 99
    :cond_45
    add-int/lit8 v6, v11, -0x2

    if-ne v5, v6, :cond_63

    if-nez v7, :cond_63

    and-int/lit8 v6, v12, 0x3

    if-eqz v6, :cond_63

    if-nez v3, :cond_63

    .line 100
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v10, v8

    .line 101
    add-int/lit8 v5, v5, -0x2

    .line 102
    add-int/lit8 v3, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v3

    move v3, v1

    .line 103
    goto :goto_34

    .line 104
    :cond_63
    add-int/lit8 v6, v11, 0x4

    if-ne v5, v6, :cond_82

    const/4 v6, 0x2

    if-ne v7, v6, :cond_82

    and-int/lit8 v6, v12, 0x7

    if-nez v6, :cond_82

    if-nez v2, :cond_82

    .line 105
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->c(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v10, v8

    .line 106
    add-int/lit8 v5, v5, -0x2

    .line 107
    add-int/lit8 v2, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v2

    move v2, v1

    .line 108
    goto :goto_34

    .line 109
    :cond_82
    add-int/lit8 v6, v11, -0x2

    if-ne v5, v6, :cond_f6

    if-nez v7, :cond_f6

    and-int/lit8 v6, v12, 0x7

    if-ne v6, v9, :cond_f6

    if-nez v0, :cond_f6

    .line 110
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->d(II)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v10, v8

    .line 111
    add-int/lit8 v5, v5, -0x2

    .line 112
    add-int/lit8 v0, v7, 0x2

    move v7, v6

    move v6, v5

    move v5, v0

    move v0, v1

    .line 113
    goto :goto_34

    :cond_a0
    move v6, v5

    move v5, v7

    .line 117
    :goto_a2
    if-ge v8, v11, :cond_f4

    if-ltz v6, :cond_f4

    iget-object v7, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7, v6, v8}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v7

    if-nez v7, :cond_f4

    .line 118
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v8, v6, v11, v12}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v10, v5

    .line 120
    :goto_b7
    add-int/lit8 v8, v8, -0x2

    .line 121
    add-int/lit8 v5, v6, 0x2

    .line 122
    if-ltz v8, :cond_bf

    if-lt v5, v12, :cond_a0

    .line 123
    :cond_bf
    add-int/lit8 v6, v8, 0x1

    .line 124
    add-int/lit8 v5, v5, 0x3

    move v8, v6

    move v6, v5

    move v5, v7

    .line 128
    :goto_c6
    if-ltz v8, :cond_f2

    if-ge v6, v12, :cond_f2

    iget-object v7, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7, v6, v8}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v7

    if-nez v7, :cond_f2

    .line 129
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v8, v6, v11, v12}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v10, v5

    .line 131
    :goto_db
    add-int/lit8 v8, v8, 0x2

    .line 132
    add-int/lit8 v5, v6, -0x2

    .line 133
    if-ge v8, v11, :cond_e3

    if-gez v5, :cond_ef

    .line 134
    :cond_e3
    add-int/lit8 v6, v8, 0x3

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_34

    .line 142
    :cond_e9
    return-object v10

    :cond_ea
    move v8, v7

    move v7, v5

    move v5, v6

    goto/16 :goto_1d

    :cond_ef
    move v6, v5

    move v5, v7

    goto :goto_c6

    :cond_f2
    move v7, v5

    goto :goto_db

    :cond_f4
    move v7, v5

    goto :goto_b7

    :cond_f6
    move v6, v7

    move v14, v5

    move v5, v8

    move v8, v14

    goto :goto_a2
.end method

.method c(II)I
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    .line 316
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    .line 319
    :goto_b
    shl-int/lit8 v0, v0, 0x1

    .line 320
    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 321
    or-int/lit8 v0, v0, 0x1

    .line 323
    :cond_19
    shl-int/lit8 v0, v0, 0x1

    .line 324
    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 325
    or-int/lit8 v0, v0, 0x1

    .line 327
    :cond_25
    shl-int/lit8 v0, v0, 0x1

    .line 328
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 329
    or-int/lit8 v0, v0, 0x1

    .line 331
    :cond_31
    shl-int/lit8 v0, v0, 0x1

    .line 332
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 333
    or-int/lit8 v0, v0, 0x1

    .line 335
    :cond_3d
    shl-int/lit8 v0, v0, 0x1

    .line 336
    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 337
    or-int/lit8 v0, v0, 0x1

    .line 339
    :cond_49
    shl-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 341
    or-int/lit8 v0, v0, 0x1

    .line 343
    :cond_55
    shl-int/lit8 v0, v0, 0x1

    .line 344
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 345
    or-int/lit8 v0, v0, 0x1

    .line 347
    :cond_61
    return v0

    :cond_62
    move v0, v2

    goto :goto_b
.end method

.method d(II)I
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 360
    .line 361
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    .line 364
    :goto_b
    shl-int/lit8 v0, v0, 0x1

    .line 365
    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 366
    or-int/lit8 v0, v0, 0x1

    .line 368
    :cond_17
    shl-int/lit8 v0, v0, 0x1

    .line 369
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 370
    or-int/lit8 v0, v0, 0x1

    .line 372
    :cond_23
    shl-int/lit8 v0, v0, 0x1

    .line 373
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 374
    or-int/lit8 v0, v0, 0x1

    .line 376
    :cond_2f
    shl-int/lit8 v0, v0, 0x1

    .line 377
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 378
    or-int/lit8 v0, v0, 0x1

    .line 380
    :cond_3b
    shl-int/lit8 v0, v0, 0x1

    .line 381
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 382
    or-int/lit8 v0, v0, 0x1

    .line 384
    :cond_47
    shl-int/lit8 v0, v0, 0x1

    .line 385
    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 386
    or-int/lit8 v0, v0, 0x1

    .line 388
    :cond_54
    shl-int/lit8 v0, v0, 0x1

    .line 389
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 390
    or-int/lit8 v0, v0, 0x1

    .line 392
    :cond_61
    return v0

    :cond_62
    move v0, v2

    goto :goto_b
.end method
