.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .registers 4

    .prologue
    .line 101
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 102
    :cond_4
    const/4 v0, 0x0

    .line 104
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_5
.end method

.method private static a([Lcom/google/zxing/ResultPoint;)I
    .registers 5

    .prologue
    .line 115
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 116
    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/PDF417Reader;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 118
    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Reader;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    div-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-static {p0, p1, p2}, Lcom/google/zxing/pdf417/detector/Detector;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    move-result-object v9

    .line 86
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/google/zxing/ResultPoint;

    .line 87
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->a()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v1, v7, v1

    const/4 v2, 0x5

    aget-object v2, v7, v2

    const/4 v3, 0x6

    aget-object v3, v7, v3

    const/4 v4, 0x7

    aget-object v4, v7, v4

    .line 88
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Reader;->b([Lcom/google/zxing/ResultPoint;)I

    move-result v5

    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Reader;->a([Lcom/google/zxing/ResultPoint;)I

    move-result v6

    .line 87
    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->a()[B

    move-result-object v3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->k:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 90
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->d:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    .line 92
    if-eqz v0, :cond_5f

    .line 93
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->i:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1, v2, v0}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 95
    :cond_5f
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 97
    :cond_63
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/Result;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/Result;

    return-object v0
.end method

.method private static b(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .registers 4

    .prologue
    .line 108
    if-eqz p0, :cond_4

    if-nez p1, :cond_8

    .line 109
    :cond_4
    const v0, 0x7fffffff

    .line 111
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_7
.end method

.method private static b([Lcom/google/zxing/ResultPoint;)I
    .registers 5

    .prologue
    .line 123
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 124
    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/PDF417Reader;->b(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->b(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 126
    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->b(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Reader;->b(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    div-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-static {p1, p2, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_e

    array-length v1, v0

    if-eqz v1, :cond_e

    aget-object v1, v0, v2

    if-nez v1, :cond_13

    .line 63
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 65
    :cond_13
    aget-object v0, v0, v2

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 133
    return-void
.end method
