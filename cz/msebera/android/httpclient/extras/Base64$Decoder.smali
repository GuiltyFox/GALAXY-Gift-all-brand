.class Lcz/msebera/android/httpclient/extras/Base64$Decoder;
.super Lcz/msebera/android/httpclient/extras/Base64$Coder;
.source "Base64.java"


# static fields
.field private static final c:[I

.field private static final d:[I


# instance fields
.field private e:I

.field private f:I

.field private final g:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x100

    .line 181
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->c:[I

    .line 204
    new-array v0, v1, [I

    fill-array-data v0, :array_216

    sput-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->d:[I

    return-void

    .line 181
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

    .line 204
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

    .line 241
    invoke-direct {p0}, Lcz/msebera/android/httpclient/extras/Base64$Coder;-><init>()V

    .line 242
    iput-object p2, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->a:[B

    .line 244
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_13

    sget-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->c:[I

    :goto_c
    iput-object v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->g:[I

    .line 245
    iput v1, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 246
    iput v1, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->f:I

    .line 247
    return-void

    .line 244
    :cond_13
    sget-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->d:[I

    goto :goto_c
.end method


# virtual methods
.method public a([BIIZ)Z
    .registers 15

    .prologue
    .line 264
    iget v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 437
    :goto_6
    return v0

    .line 267
    :cond_7
    add-int v4, p3, p2

    .line 274
    iget v3, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 275
    iget v1, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->f:I

    .line 276
    const/4 v0, 0x0

    .line 277
    iget-object v5, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->a:[B

    .line 278
    iget-object v6, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->g:[I

    move v2, p2

    .line 280
    :goto_13
    if-ge v2, v4, :cond_133

    .line 295
    if-nez v3, :cond_67

    .line 296
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

    .line 301
    add-int/lit8 v7, v0, 0x2

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 302
    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 303
    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 304
    add-int/lit8 v0, v0, 0x3

    .line 305
    add-int/lit8 v2, v2, 0x4

    goto :goto_17

    .line 307
    :cond_5a
    if-lt v2, v4, :cond_67

    move v2, v1

    .line 393
    :goto_5d
    if-nez p4, :cond_105

    .line 396
    iput v3, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 397
    iput v2, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->f:I

    .line 398
    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->b:I

    .line 399
    const/4 v0, 0x1

    goto :goto_6

    .line 315
    :cond_67
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    .line 317
    packed-switch v3, :pswitch_data_136

    :cond_72
    move v2, v3

    :goto_73
    move v3, v2

    move v2, p2

    .line 391
    goto :goto_13

    .line 319
    :pswitch_76
    if-ltz v2, :cond_7e

    .line 321
    add-int/lit8 v1, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_73

    .line 322
    :cond_7e
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 323
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 324
    const/4 v0, 0x0

    goto :goto_6

    .line 329
    :pswitch_86
    if-ltz v2, :cond_8e

    .line 330
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 331
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 332
    :cond_8e
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 333
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 334
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 339
    :pswitch_97
    if-ltz v2, :cond_9f

    .line 340
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 341
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 342
    :cond_9f
    const/4 v7, -0x2

    if-ne v2, v7, :cond_ae

    .line 345
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 346
    const/4 v0, 0x4

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_73

    .line 347
    :cond_ae
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 348
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 349
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 354
    :pswitch_b7
    if-ltz v2, :cond_d1

    .line 356
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 357
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    .line 358
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 359
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 360
    add-int/lit8 v0, v0, 0x3

    .line 361
    const/4 v2, 0x0

    goto :goto_73

    .line 362
    :cond_d1
    const/4 v7, -0x2

    if-ne v2, v7, :cond_e4

    .line 365
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 366
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 367
    add-int/lit8 v0, v0, 0x2

    .line 368
    const/4 v2, 0x5

    goto :goto_73

    .line 369
    :cond_e4
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 370
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 371
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 376
    :pswitch_ed
    const/4 v7, -0x2

    if-ne v2, v7, :cond_f3

    .line 377
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 378
    :cond_f3
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 379
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 380
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 385
    :pswitch_fc
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 386
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 387
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 405
    :cond_105
    packed-switch v3, :pswitch_data_146

    .line 435
    :goto_108
    :pswitch_108
    iput v3, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 436
    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->b:I

    .line 437
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 412
    :pswitch_10f
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 413
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 417
    :pswitch_115
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    move v0, v1

    .line 418
    goto :goto_108

    .line 422
    :pswitch_11e
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 423
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_108

    .line 427
    :pswitch_12d
    const/4 v0, 0x6

    iput v0, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->e:I

    .line 428
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_133
    move v2, v1

    goto/16 :goto_5d

    .line 317
    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_76
        :pswitch_86
        :pswitch_97
        :pswitch_b7
        :pswitch_ed
        :pswitch_fc
    .end packed-switch

    .line 405
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_108
        :pswitch_10f
        :pswitch_115
        :pswitch_11e
        :pswitch_12d
    .end packed-switch
.end method
