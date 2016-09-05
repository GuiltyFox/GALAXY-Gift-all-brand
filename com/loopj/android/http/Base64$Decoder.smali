.class Lcom/loopj/android/http/Base64$Decoder;
.super Lcom/loopj/android/http/Base64$Coder;
.source "Base64.java"


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x100

    .line 265
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/loopj/android/http/Base64$Decoder;->DECODE:[I

    .line 288
    new-array v0, v1, [I

    fill-array-data v0, :array_216

    sput-object v0, Lcom/loopj/android/http/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 265
    nop

    :array_12
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
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
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
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
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
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
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
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 288
    :array_216
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
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
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
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
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
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
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
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-direct {p0}, Lcom/loopj/android/http/Base64$Coder;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    .line 325
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_13

    sget-object v0, Lcom/loopj/android/http/Base64$Decoder;->DECODE:[I

    :goto_c
    iput-object v0, p0, Lcom/loopj/android/http/Base64$Decoder;->alphabet:[I

    .line 326
    iput v1, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 327
    iput v1, p0, Lcom/loopj/android/http/Base64$Decoder;->value:I

    .line 328
    return-void

    .line 325
    :cond_13
    sget-object v0, Lcom/loopj/android/http/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_c
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    .prologue
    .line 334
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 15

    .prologue
    .line 344
    iget v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 517
    :goto_6
    return v0

    .line 347
    :cond_7
    add-int v4, p3, p2

    .line 354
    iget v3, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 355
    iget v1, p0, Lcom/loopj/android/http/Base64$Decoder;->value:I

    .line 356
    const/4 v0, 0x0

    .line 357
    iget-object v5, p0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    .line 358
    iget-object v6, p0, Lcom/loopj/android/http/Base64$Decoder;->alphabet:[I

    move v2, p2

    .line 360
    :goto_13
    if-ge v2, v4, :cond_133

    .line 375
    if-nez v3, :cond_67

    .line 376
    :goto_17
    add-int/lit8 v7, v2, 0x4

    if-gt v7, v4, :cond_5a

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v6, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    or-int/2addr v1, v7

    if-ltz v1, :cond_5a

    .line 381
    add-int/lit8 v7, v0, 0x2

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 382
    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 383
    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 384
    add-int/lit8 v0, v0, 0x3

    .line 385
    add-int/lit8 v2, v2, 0x4

    goto :goto_17

    .line 387
    :cond_5a
    if-lt v2, v4, :cond_67

    move v2, v1

    .line 473
    :goto_5d
    if-nez p4, :cond_105

    .line 476
    iput v3, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 477
    iput v2, p0, Lcom/loopj/android/http/Base64$Decoder;->value:I

    .line 478
    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    .line 479
    const/4 v0, 0x1

    goto :goto_6

    .line 395
    :cond_67
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    .line 397
    packed-switch v3, :pswitch_data_136

    :cond_72
    move v2, v3

    :goto_73
    move v3, v2

    move v2, p2

    .line 471
    goto :goto_13

    .line 399
    :pswitch_76
    if-ltz v2, :cond_7e

    .line 401
    add-int/lit8 v1, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_73

    .line 402
    :cond_7e
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 403
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 404
    const/4 v0, 0x0

    goto :goto_6

    .line 409
    :pswitch_86
    if-ltz v2, :cond_8e

    .line 410
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 411
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 412
    :cond_8e
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 413
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 414
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 419
    :pswitch_97
    if-ltz v2, :cond_9f

    .line 420
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 421
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 422
    :cond_9f
    const/4 v7, -0x2

    if-ne v2, v7, :cond_ae

    .line 425
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 426
    const/4 v0, 0x4

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_73

    .line 427
    :cond_ae
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 428
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 429
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 434
    :pswitch_b7
    if-ltz v2, :cond_d1

    .line 436
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 437
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    .line 438
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 439
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 440
    add-int/lit8 v0, v0, 0x3

    .line 441
    const/4 v2, 0x0

    goto :goto_73

    .line 442
    :cond_d1
    const/4 v7, -0x2

    if-ne v2, v7, :cond_e4

    .line 445
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 446
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 447
    add-int/lit8 v0, v0, 0x2

    .line 448
    const/4 v2, 0x5

    goto :goto_73

    .line 449
    :cond_e4
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 450
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 451
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 456
    :pswitch_ed
    const/4 v7, -0x2

    if-ne v2, v7, :cond_f3

    .line 457
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 458
    :cond_f3
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 459
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 460
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 465
    :pswitch_fc
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 466
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 467
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 485
    :cond_105
    packed-switch v3, :pswitch_data_146

    .line 515
    :goto_108
    :pswitch_108
    iput v3, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 516
    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    .line 517
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 492
    :pswitch_10f
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 493
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 497
    :pswitch_115
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    move v0, v1

    .line 498
    goto :goto_108

    .line 502
    :pswitch_11e
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 503
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_108

    .line 507
    :pswitch_12d
    const/4 v0, 0x6

    iput v0, p0, Lcom/loopj/android/http/Base64$Decoder;->state:I

    .line 508
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_133
    move v2, v1

    goto/16 :goto_5d

    .line 397
    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_76
        :pswitch_86
        :pswitch_97
        :pswitch_b7
        :pswitch_ed
        :pswitch_fc
    .end packed-switch

    .line 485
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_108
        :pswitch_10f
        :pswitch_115
        :pswitch_11e
        :pswitch_12d
    .end packed-switch
.end method
