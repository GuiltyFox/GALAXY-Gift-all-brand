.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# instance fields
.field protected a:I

.field protected b:[B

.field protected c:I

.field protected d:I

.field protected e:[[I

.field protected f:[I

.field protected g:[I

.field protected h:[I

.field protected i:[I


# direct methods
.method public constructor <init>([BII)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x100

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->f:[I

    .line 127
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->g:[I

    .line 130
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->h:[I

    .line 132
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->i:[I

    .line 145
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->b:[B

    .line 146
    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    .line 147
    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->d:I

    .line 149
    new-array v0, v6, [[I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    move v0, v1

    .line 150
    :goto_23
    if-ge v0, v6, :cond_47

    .line 151
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 152
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v0

    .line 153
    const/4 v3, 0x1

    const/4 v4, 0x2

    shl-int/lit8 v5, v0, 0xc

    div-int/lit16 v5, v5, 0x100

    aput v5, v2, v4

    aput v5, v2, v3

    aput v5, v2, v1

    .line 154
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->h:[I

    aput v6, v2, v0

    .line 155
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->g:[I

    aput v1, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 157
    :cond_47
    return-void
.end method


# virtual methods
.method public a(III)I
    .registers 16

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x100

    .line 317
    const/16 v3, 0x3e8

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->f:[I

    aget v4, v0, p2

    .line 320
    add-int/lit8 v0, v4, -0x1

    move v1, v6

    move v2, v3

    move v7, v0

    move v3, v4

    .line 322
    :goto_12
    if-lt v3, v5, :cond_16

    if-ltz v7, :cond_6f

    .line 323
    :cond_16
    if-ge v3, v5, :cond_77

    .line 324
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v8, v0, v3

    .line 325
    aget v0, v8, v10

    sub-int/2addr v0, p2

    .line 326
    if-lt v0, v2, :cond_35

    move v3, v2

    move v4, v5

    move v2, v1

    .line 348
    :goto_24
    if-ltz v7, :cond_70

    .line 349
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v8, v0, v7

    .line 350
    aget v0, v8, v10

    sub-int v0, p2, v0

    .line 351
    if-lt v0, v3, :cond_51

    move v1, v2

    move v7, v6

    move v2, v3

    move v3, v4

    .line 352
    goto :goto_12

    .line 329
    :cond_35
    add-int/lit8 v4, v3, 0x1

    .line 330
    if-gez v0, :cond_3a

    .line 331
    neg-int v0, v0

    .line 332
    :cond_3a
    aget v3, v8, v9

    sub-int/2addr v3, p1

    .line 333
    if-gez v3, :cond_40

    .line 334
    neg-int v3, v3

    .line 335
    :cond_40
    add-int/2addr v3, v0

    .line 336
    if-ge v3, v2, :cond_74

    .line 337
    aget v0, v8, v11

    sub-int/2addr v0, p3

    .line 338
    if-gez v0, :cond_49

    .line 339
    neg-int v0, v0

    .line 340
    :cond_49
    add-int/2addr v3, v0

    .line 341
    if-ge v3, v2, :cond_74

    .line 343
    const/4 v0, 0x3

    aget v0, v8, v0

    move v2, v0

    goto :goto_24

    .line 354
    :cond_51
    add-int/lit8 v7, v7, -0x1

    .line 355
    if-gez v0, :cond_56

    .line 356
    neg-int v0, v0

    .line 357
    :cond_56
    aget v1, v8, v9

    sub-int/2addr v1, p1

    .line 358
    if-gez v1, :cond_5c

    .line 359
    neg-int v1, v1

    .line 360
    :cond_5c
    add-int/2addr v1, v0

    .line 361
    if-ge v1, v3, :cond_70

    .line 362
    aget v0, v8, v11

    sub-int/2addr v0, p3

    .line 363
    if-gez v0, :cond_65

    .line 364
    neg-int v0, v0

    .line 365
    :cond_65
    add-int/2addr v0, v1

    .line 366
    if-ge v0, v3, :cond_70

    .line 368
    const/4 v1, 0x3

    aget v2, v8, v1

    move v1, v2

    move v3, v4

    move v2, v0

    goto :goto_12

    .line 374
    :cond_6f
    return v1

    :cond_70
    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_12

    :cond_74
    move v3, v2

    move v2, v1

    goto :goto_24

    :cond_77
    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_24
.end method

.method protected a(IIIII)V
    .registers 17

    .prologue
    .line 411
    sub-int v0, p2, p1

    .line 412
    const/4 v1, -0x1

    if-ge v0, v1, :cond_98

    .line 413
    const/4 v0, -0x1

    move v5, v0

    .line 414
    :goto_7
    add-int v0, p2, p1

    .line 415
    const/16 v1, 0x100

    if-le v0, v1, :cond_f

    .line 416
    const/16 v0, 0x100

    .line 418
    :cond_f
    add-int/lit8 v3, p2, 0x1

    .line 419
    add-int/lit8 v2, p2, -0x1

    .line 420
    const/4 v1, 0x1

    move v4, v2

    move v2, v3

    .line 421
    :goto_16
    if-lt v2, v0, :cond_1a

    if-le v4, v5, :cond_90

    .line 422
    :cond_1a
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->i:[I

    add-int/lit8 v3, v1, 0x1

    aget v6, v6, v1

    .line 423
    if-ge v2, v0, :cond_96

    .line 424
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    add-int/lit8 v1, v2, 0x1

    aget-object v2, v7, v2

    .line 426
    const/4 v7, 0x0

    :try_start_29
    aget v8, v2, v7

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    .line 427
    const/4 v7, 0x1

    aget v8, v2, v7

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    .line 428
    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_53} :catch_91

    .line 432
    :goto_53
    if-le v4, v5, :cond_93

    .line 433
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    add-int/lit8 v2, v4, -0x1

    aget-object v4, v7, v4

    .line 435
    const/4 v7, 0x0

    :try_start_5c
    aget v8, v4, v7

    const/4 v9, 0x0

    aget v9, v4, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v4, v7

    .line 436
    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x1

    aget v9, v4, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v4, v7

    .line 437
    const/4 v7, 0x2

    aget v8, v4, v7

    const/4 v9, 0x2

    aget v9, v4, v9

    sub-int v9, v9, p5

    mul-int/2addr v6, v9

    const/high16 v9, 0x40000

    div-int/2addr v6, v9

    sub-int v6, v8, v6

    aput v6, v4, v7
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_87} :catch_8b

    move v4, v2

    move v2, v1

    move v1, v3

    .line 439
    goto :goto_16

    .line 438
    :catch_8b
    move-exception v4

    move v4, v2

    move v2, v1

    move v1, v3

    .line 439
    goto :goto_16

    .line 442
    :cond_90
    return-void

    .line 429
    :catch_91
    move-exception v2

    goto :goto_53

    :cond_93
    move v2, v1

    move v1, v3

    goto :goto_16

    :cond_96
    move v1, v2

    goto :goto_53

    :cond_98
    move v5, v0

    goto/16 :goto_7
.end method

.method public a()[B
    .registers 11

    .prologue
    const/16 v9, 0x100

    const/4 v1, 0x0

    .line 160
    const/16 v0, 0x300

    new-array v3, v0, [B

    .line 161
    new-array v4, v9, [I

    move v0, v1

    .line 162
    :goto_a
    if-ge v0, v9, :cond_18

    .line 163
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v0, v4, v2

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    move v0, v1

    move v2, v1

    .line 165
    :goto_1a
    if-ge v0, v9, :cond_44

    .line 166
    aget v5, v4, v0

    .line 167
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v7, v7, v5

    aget v7, v7, v1

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 168
    add-int/lit8 v7, v6, 0x1

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v5

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 169
    add-int/lit8 v2, v7, 0x1

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v5, v6, v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 171
    :cond_44
    return-object v3
.end method

.method protected b(III)I
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 471
    const v5, 0x7fffffff

    .line 473
    const/4 v6, -0x1

    move v2, v5

    move v4, v6

    move v3, v7

    .line 476
    :goto_8
    const/16 v0, 0x100

    if-ge v3, v0, :cond_51

    .line 477
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v8, v0, v3

    .line 478
    aget v0, v8, v7

    sub-int/2addr v0, p1

    .line 479
    if-gez v0, :cond_16

    .line 480
    neg-int v0, v0

    .line 481
    :cond_16
    const/4 v1, 0x1

    aget v1, v8, v1

    sub-int/2addr v1, p2

    .line 482
    if-gez v1, :cond_1d

    .line 483
    neg-int v1, v1

    .line 484
    :cond_1d
    add-int/2addr v1, v0

    .line 485
    const/4 v0, 0x2

    aget v0, v8, v0

    sub-int/2addr v0, p3

    .line 486
    if-gez v0, :cond_25

    .line 487
    neg-int v0, v0

    .line 488
    :cond_25
    add-int/2addr v1, v0

    .line 489
    if-ge v1, v2, :cond_66

    move v0, v1

    move v2, v3

    .line 493
    :goto_2a
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->g:[I

    aget v4, v4, v3

    shr-int/lit8 v4, v4, 0xc

    sub-int/2addr v1, v4

    .line 494
    if-ge v1, v5, :cond_63

    move v4, v3

    .line 498
    :goto_34
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->h:[I

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0xa

    .line 499
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->h:[I

    aget v8, v6, v3

    sub-int/2addr v8, v5

    aput v8, v6, v3

    .line 500
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->g:[I

    aget v8, v6, v3

    shl-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    aput v5, v6, v3

    .line 476
    add-int/lit8 v3, v3, 0x1

    move v5, v1

    move v6, v4

    move v4, v2

    move v2, v0

    goto :goto_8

    .line 502
    :cond_51
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->h:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x40

    aput v1, v0, v4

    .line 503
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->g:[I

    aget v1, v0, v4

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 504
    return v6

    :cond_63
    move v1, v5

    move v4, v6

    goto :goto_34

    :cond_66
    move v0, v2

    move v2, v4

    goto :goto_2a
.end method

.method public b()V
    .registers 15

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 186
    move v4, v6

    move v5, v6

    move v3, v6

    .line 188
    :goto_9
    if-ge v3, v13, :cond_66

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v7, v0, v3

    .line 191
    aget v0, v7, v10

    .line 193
    add-int/lit8 v2, v3, 0x1

    move v1, v3

    :goto_14
    if-ge v2, v13, :cond_24

    .line 194
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v8, v8, v2

    .line 195
    aget v9, v8, v10

    if-ge v9, v0, :cond_21

    .line 197
    aget v0, v8, v10

    move v1, v2

    .line 193
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 200
    :cond_24
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v1

    .line 202
    if-eq v3, v1, :cond_4a

    .line 203
    aget v1, v2, v6

    .line 204
    aget v8, v7, v6

    aput v8, v2, v6

    .line 205
    aput v1, v7, v6

    .line 206
    aget v1, v2, v10

    .line 207
    aget v8, v7, v10

    aput v8, v2, v10

    .line 208
    aput v1, v7, v10

    .line 209
    aget v1, v2, v11

    .line 210
    aget v8, v7, v11

    aput v8, v2, v11

    .line 211
    aput v1, v7, v11

    .line 212
    aget v1, v2, v12

    .line 213
    aget v8, v7, v12

    aput v8, v2, v12

    .line 214
    aput v1, v7, v12

    .line 217
    :cond_4a
    if-eq v0, v5, :cond_7c

    .line 218
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->f:[I

    add-int v2, v4, v3

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 219
    add-int/lit8 v1, v5, 0x1

    :goto_56
    if-ge v1, v0, :cond_5f

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->f:[I

    aput v3, v2, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_5f
    move v1, v0

    move v0, v3

    .line 188
    :goto_61
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    move v5, v1

    goto :goto_9

    .line 225
    :cond_66
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->f:[I

    add-int/lit16 v1, v4, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    .line 226
    add-int/lit8 v0, v5, 0x1

    :goto_70
    if-ge v0, v13, :cond_7b

    .line 227
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->f:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 228
    :cond_7b
    return-void

    :cond_7c
    move v0, v4

    move v1, v5

    goto :goto_61
.end method

.method protected b(IIIII)V
    .registers 12

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v0, v0, p2

    .line 452
    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 453
    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 454
    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 455
    return-void
.end method

.method public c()V
    .registers 23

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    const/16 v3, 0x5e5

    if-ge v2, v3, :cond_d

    .line 241
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->d:I

    .line 242
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->d:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->a:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->b:[B

    move-object/from16 v19, v0

    .line 244
    const/4 v5, 0x0

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    move/from16 v20, v0

    .line 246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->d:I

    mul-int/lit8 v3, v3, 0x3

    div-int v21, v2, v3

    .line 247
    div-int/lit8 v15, v21, 0x64

    .line 248
    const/16 v4, 0x400

    .line 249
    const/16 v6, 0x800

    .line 251
    const/16 v2, 0x20

    .line 254
    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v2, :cond_52

    .line 255
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->i:[I

    mul-int v8, v3, v3

    rsub-int v8, v8, 0x400

    mul-int/lit16 v8, v8, 0x100

    const/16 v9, 0x400

    div-int/2addr v8, v9

    mul-int/2addr v8, v4

    aput v8, v7, v3

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 259
    :cond_52
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    const/16 v7, 0x5e5

    if-ge v3, v7, :cond_d7

    .line 260
    const/4 v3, 0x3

    move v14, v3

    .line 274
    :goto_5c
    const/4 v3, 0x0

    move/from16 v16, v5

    move v9, v2

    move/from16 v17, v6

    move/from16 v18, v3

    move v3, v4

    .line 275
    :goto_65
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_103

    .line 276
    add-int/lit8 v2, v16, 0x0

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v5, v2, 0x4

    .line 277
    add-int/lit8 v2, v16, 0x1

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v6, v2, 0x4

    .line 278
    add-int/lit8 v2, v16, 0x2

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v7, v2, 0x4

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->b(III)I

    move-result v4

    move-object/from16 v2, p0

    .line 281
    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->b(IIIII)V

    .line 282
    if-eqz v9, :cond_99

    move-object/from16 v8, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    .line 283
    invoke-virtual/range {v8 .. v13}, Lcom/bumptech/glide/gifencoder/NeuQuant;->a(IIIII)V

    .line 285
    :cond_99
    add-int v2, v16, v14

    .line 286
    move/from16 v0, v20

    if-lt v2, v0, :cond_118

    .line 287
    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    sub-int/2addr v2, v4

    move v5, v2

    .line 289
    :goto_a5
    add-int/lit8 v8, v18, 0x1

    .line 290
    if-nez v15, :cond_116

    .line 291
    const/4 v2, 0x1

    .line 292
    :goto_aa
    rem-int v4, v8, v2

    if-nez v4, :cond_10f

    .line 293
    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->a:I

    div-int v4, v3, v4

    sub-int v6, v3, v4

    .line 294
    div-int/lit8 v3, v17, 0x1e

    sub-int v7, v17, v3

    .line 295
    shr-int/lit8 v3, v7, 0x6

    .line 296
    const/4 v4, 0x1

    if-gt v3, v4, :cond_c0

    .line 297
    const/4 v3, 0x0

    .line 298
    :cond_c0
    const/4 v4, 0x0

    :goto_c1
    if-ge v4, v3, :cond_104

    .line 299
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->i:[I

    mul-int v10, v3, v3

    mul-int v11, v4, v4

    sub-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x100

    mul-int v11, v3, v3

    div-int/2addr v10, v11

    mul-int/2addr v10, v6

    aput v10, v9, v4

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    .line 261
    :cond_d7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    rem-int/lit16 v3, v3, 0x1f3

    if-eqz v3, :cond_e4

    .line 262
    const/16 v3, 0x5d9

    move v14, v3

    goto/16 :goto_5c

    .line 264
    :cond_e4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    rem-int/lit16 v3, v3, 0x1eb

    if-eqz v3, :cond_f1

    .line 265
    const/16 v3, 0x5c1

    move v14, v3

    goto/16 :goto_5c

    .line 267
    :cond_f1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->c:I

    rem-int/lit16 v3, v3, 0x1e7

    if-eqz v3, :cond_fe

    .line 268
    const/16 v3, 0x5b5

    move v14, v3

    goto/16 :goto_5c

    .line 270
    :cond_fe
    const/16 v3, 0x5e5

    move v14, v3

    goto/16 :goto_5c

    .line 304
    :cond_103
    return-void

    :cond_104
    move/from16 v16, v5

    move v15, v2

    move v9, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move v3, v6

    goto/16 :goto_65

    :cond_10f
    move/from16 v16, v5

    move v15, v2

    move/from16 v18, v8

    goto/16 :goto_65

    :cond_116
    move v2, v15

    goto :goto_aa

    :cond_118
    move v5, v2

    goto :goto_a5
.end method

.method public d()[B
    .registers 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->c()V

    .line 379
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->e()V

    .line 380
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->b()V

    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 393
    move v0, v1

    :goto_2
    const/16 v2, 0x100

    if-ge v0, v2, :cond_30

    .line 394
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v0

    aget v3, v2, v1

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v1

    .line 395
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 396
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 397
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 399
    :cond_30
    return-void
.end method
