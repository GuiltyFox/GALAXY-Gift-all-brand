.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:[B


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1420
    const v0, 0x67452301

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1421
    const v0, -0x10325477

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1422
    const v0, -0x67452302

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1423
    const v0, 0x10325476

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    .line 1425
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    .line 1428
    return-void
.end method


# virtual methods
.method a([B)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1434
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    long-to-int v0, v2

    move v2, v0

    move v0, v1

    .line 1436
    :goto_9
    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    array-length v4, v4

    if-lt v3, v4, :cond_26

    .line 1440
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    .line 1441
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    invoke-static {p1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1442
    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    .line 1444
    add-int/2addr v0, v3

    .line 1445
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b()V

    move v2, v1

    .line 1446
    goto :goto_9

    .line 1450
    :cond_26
    array-length v1, p1

    if-ge v0, v1, :cond_38

    .line 1451
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 1452
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    .line 1454
    add-int v0, v2, v1

    .line 1456
    :cond_38
    return-void
.end method

.method protected a([I)V
    .registers 10

    .prologue
    const/16 v7, 0x13

    const/16 v6, 0xb

    const/4 v5, 0x7

    const/4 v4, 0x3

    .line 1510
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1511
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1512
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1513
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v4

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1515
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1516
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1517
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1518
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1520
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1521
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1522
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1523
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1525
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1526
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1527
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1528
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1529
    return-void
.end method

.method a()[B
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x0

    .line 1461
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    const-wide/16 v4, 0x3f

    and-long/2addr v0, v4

    long-to-int v0, v0

    .line 1462
    const/16 v1, 0x38

    if-ge v0, v1, :cond_2b

    rsub-int/lit8 v0, v0, 0x38

    .line 1463
    :goto_f
    add-int/lit8 v1, v0, 0x8

    new-array v3, v1, [B

    .line 1466
    const/16 v1, -0x80

    aput-byte v1, v3, v2

    move v1, v2

    .line 1468
    :goto_18
    if-ge v1, v10, :cond_2e

    .line 1469
    add-int v4, v0, v1

    iget-wide v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->e:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    mul-int/lit8 v5, v1, 0x8

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1468
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1462
    :cond_2b
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_f

    .line 1473
    :cond_2e
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a([B)V

    .line 1476
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1477
    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1478
    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1479
    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v0, v1, v10}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1480
    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([BII)V

    .line 1481
    return-object v0
.end method

.method protected b()V
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 1486
    new-array v1, v5, [I

    .line 1488
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_3b

    .line 1489
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    mul-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->f:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1495
    :cond_3b
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1496
    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1497
    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1498
    iget v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1499
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a([I)V

    .line 1500
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b([I)V

    .line 1501
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c([I)V

    .line 1502
    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1503
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1504
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1505
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1507
    return-void
.end method

.method protected b([I)V
    .registers 11

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x3

    const v4, 0x5a827999

    .line 1532
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1533
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1534
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1535
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1537
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1538
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1539
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1540
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1542
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1543
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1544
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1545
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1547
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1548
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1549
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1550
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1552
    return-void
.end method

.method protected c([I)V
    .registers 11

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x3

    const v4, 0x6ed9eba1

    .line 1555
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1556
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1557
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1558
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1560
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1561
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1562
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1563
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1565
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1566
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1567
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1568
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1570
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    .line 1571
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    .line 1572
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    .line 1573
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->c:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a:I

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(II)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->b:I

    .line 1575
    return-void
.end method
