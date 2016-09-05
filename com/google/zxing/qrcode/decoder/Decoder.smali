.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private a(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->b()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 146
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->a()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->a()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v6

    .line 149
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->c()[B

    move-result-object v0

    .line 151
    invoke-static {v0, v5, v6}, Lcom/google/zxing/qrcode/decoder/DataBlock;->a([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v7

    .line 155
    array-length v3, v7

    move v0, v1

    move v2, v1

    :goto_18
    if-ge v0, v3, :cond_24

    aget-object v4, v7, v0

    .line 156
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->a()I

    move-result v4

    add-int/2addr v2, v4

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 158
    :cond_24
    new-array v8, v2, [B

    .line 162
    array-length v9, v7

    move v4, v1

    move v0, v1

    :goto_29
    if-ge v4, v9, :cond_4b

    aget-object v2, v7, v4

    .line 163
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->b()[B

    move-result-object v10

    .line 164
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->a()I

    move-result v11

    .line 165
    invoke-direct {p0, v10, v11}, Lcom/google/zxing/qrcode/decoder/Decoder;->a([BI)V

    move v2, v0

    move v0, v1

    .line 166
    :goto_3a
    if-ge v0, v11, :cond_46

    .line 167
    add-int/lit8 v3, v2, 0x1

    aget-byte v12, v10, v0

    aput-byte v12, v8, v2

    .line 166
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3a

    .line 162
    :cond_46
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_29

    .line 172
    :cond_4b
    invoke-static {v8, v5, v6, p2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method private a([BI)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 184
    array-length v2, p1

    .line 186
    new-array v3, v2, [I

    move v1, v0

    .line 187
    :goto_5
    if-ge v1, v2, :cond_10

    .line 188
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 190
    :cond_10
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 192
    :try_start_12
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a([II)V
    :try_end_17
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_12 .. :try_end_17} :catch_21

    .line 198
    :goto_17
    if-ge v0, p2, :cond_27

    .line 199
    aget v1, v3, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 193
    :catch_21
    move-exception v0

    .line 194
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 201
    :cond_27
    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    new-instance v3, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v3, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 93
    :try_start_6
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->a(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    :try_end_9
    .catch Lcom/google/zxing/FormatException; {:try_start_6 .. :try_end_9} :catch_b
    .catch Lcom/google/zxing/ChecksumException; {:try_start_6 .. :try_end_9} :catch_30

    move-result-object v0

    .line 128
    :goto_a
    return-object v0

    .line 94
    :catch_b
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 103
    :goto_e
    :try_start_e
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->d()V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->a(Z)V

    .line 109
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->b()Lcom/google/zxing/qrcode/decoder/Version;

    .line 112
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->a()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 121
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->e()V

    .line 123
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->a(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    .line 126
    new-instance v3, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/DecoderResult;->a(Ljava/lang/Object;)V
    :try_end_2b
    .catch Lcom/google/zxing/FormatException; {:try_start_e .. :try_end_2b} :catch_2c
    .catch Lcom/google/zxing/ChecksumException; {:try_start_e .. :try_end_2b} :catch_37

    goto :goto_a

    .line 130
    :catch_2c
    move-exception v0

    .line 132
    :goto_2d
    if-eqz v2, :cond_33

    .line 133
    throw v2

    .line 96
    :catch_30
    move-exception v1

    move-object v2, v0

    .line 97
    goto :goto_e

    .line 135
    :cond_33
    if-eqz v1, :cond_36

    .line 136
    throw v1

    .line 138
    :cond_36
    throw v0

    .line 130
    :catch_37
    move-exception v0

    goto :goto_2d
.end method
