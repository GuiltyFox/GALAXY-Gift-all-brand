.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final a:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final b:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->a:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->b:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method private static a([ILcom/google/zxing/common/BitMatrix;)F
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v7

    .line 197
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v8

    .line 198
    aget v3, p0, v2

    .line 199
    aget v0, p0, v1

    move v4, v1

    move v5, v0

    move v6, v3

    move v0, v2

    .line 202
    :goto_12
    if-ge v6, v8, :cond_21

    if-ge v5, v7, :cond_21

    .line 203
    invoke-virtual {p1, v6, v5}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v3

    if-eq v4, v3, :cond_42

    .line 204
    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_2a

    .line 212
    :cond_21
    if-eq v6, v8, :cond_25

    if-ne v5, v7, :cond_39

    .line 213
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 207
    :cond_2a
    if-nez v4, :cond_37

    move v0, v1

    :goto_2d
    move v9, v3

    move v3, v0

    move v0, v9

    .line 209
    :goto_30
    add-int/lit8 v6, v6, 0x1

    .line 210
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_12

    :cond_37
    move v0, v2

    .line 207
    goto :goto_2d

    .line 215
    :cond_39
    aget v0, p0, v2

    sub-int v0, v6, v0

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    return v0

    :cond_42
    move v3, v4

    goto :goto_30
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->d()[I

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->e()[I

    move-result-object v1

    .line 122
    if-eqz v0, :cond_e

    if-nez v1, :cond_13

    .line 123
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 126
    :cond_13
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/QRCodeReader;->a([ILcom/google/zxing/common/BitMatrix;)F

    move-result v5

    .line 128
    aget v3, v0, v4

    .line 129
    aget v6, v1, v4

    .line 130
    aget v4, v0, v2

    .line 131
    aget v0, v1, v2

    .line 134
    if-ge v4, v0, :cond_23

    if-lt v3, v6, :cond_28

    .line 135
    :cond_23
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 138
    :cond_28
    sub-int v1, v6, v3

    sub-int v7, v0, v4

    if-eq v1, v7, :cond_31

    .line 141
    sub-int v0, v6, v3

    add-int/2addr v0, v4

    .line 144
    :cond_31
    sub-int v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 145
    sub-int v1, v6, v3

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 146
    if-lez v7, :cond_49

    if-gtz v8, :cond_4e

    .line 147
    :cond_49
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 149
    :cond_4e
    if-eq v8, v7, :cond_55

    .line 151
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 157
    :cond_55
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v5, v1

    float-to-int v9, v1

    .line 158
    add-int v1, v3, v9

    .line 159
    add-int v3, v4, v9

    .line 164
    add-int/lit8 v4, v7, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v3

    sub-int v0, v4, v0

    .line 165
    if-lez v0, :cond_ab

    .line 166
    if-le v0, v9, :cond_6f

    .line 168
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 170
    :cond_6f
    sub-int v0, v3, v0

    move v4, v0

    .line 173
    :goto_72
    add-int/lit8 v0, v8, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    sub-int/2addr v0, v6

    .line 174
    if-lez v0, :cond_a9

    .line 175
    if-le v0, v9, :cond_82

    .line 177
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 179
    :cond_82
    sub-int v0, v1, v0

    .line 183
    :goto_84
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v3, v2

    .line 184
    :goto_8a
    if-ge v3, v8, :cond_a8

    .line 185
    int-to-float v1, v3

    mul-float/2addr v1, v5

    float-to-int v1, v1

    add-int v9, v0, v1

    move v1, v2

    .line 186
    :goto_92
    if-ge v1, v7, :cond_a4

    .line 187
    int-to-float v10, v1

    mul-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v10, v4

    invoke-virtual {p0, v10, v9}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 188
    invoke-virtual {v6, v1, v3}, Lcom/google/zxing/common/BitMatrix;->b(II)V

    .line 186
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 184
    :cond_a4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8a

    .line 192
    :cond_a8
    return-object v6

    :cond_a9
    move v0, v1

    goto :goto_84

    :cond_ab
    move v4, v3

    goto :goto_72
.end method


# virtual methods
.method public a(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 9
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
    .line 72
    if-eqz p2, :cond_73

    sget-object v0, Lcom/google/zxing/DecodeHintType;->b:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 73
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->c()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/qrcode/QRCodeReader;->a(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/zxing/qrcode/QRCodeReader;->b:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v1, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->a(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 75
    sget-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->a:[Lcom/google/zxing/ResultPoint;

    move-object v2, v1

    move-object v1, v0

    .line 83
    :goto_1c
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v0, :cond_2d

    .line 84
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->a([Lcom/google/zxing/ResultPoint;)V

    .line 87
    :cond_2d
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->a()[B

    move-result-object v4

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 88
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->c()Ljava/util/List;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_47

    .line 90
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->c:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v3, v1}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 92
    :cond_47
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->d()Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_52

    .line 94
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->d:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v3, v1}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 96
    :cond_52
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->f()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 97
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->j:Lcom/google/zxing/ResultMetadataType;

    .line 98
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 99
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->k:Lcom/google/zxing/ResultMetadataType;

    .line 100
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 102
    :cond_72
    return-object v0

    .line 77
    :cond_73
    new-instance v0, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->c()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0, p2}, Lcom/google/zxing/qrcode/detector/Detector;->a(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/google/zxing/qrcode/QRCodeReader;->b:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v0}, Lcom/google/zxing/common/DetectorResult;->d()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->a(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lcom/google/zxing/common/DetectorResult;->e()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1c
.end method

.method public a()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method
