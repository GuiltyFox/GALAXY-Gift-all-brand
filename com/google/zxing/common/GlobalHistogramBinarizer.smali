.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final a:[B


# instance fields
.field private b:[B

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 46
    sget-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a:[B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    .line 47
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->c:[I

    .line 48
    return-void
.end method

.method private static a([I)I
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 141
    array-length v6, p0

    move v2, v4

    move v0, v4

    move v1, v4

    move v3, v4

    .line 145
    :goto_6
    if-ge v2, v6, :cond_18

    .line 146
    aget v5, p0, v2

    if-le v5, v0, :cond_f

    .line 148
    aget v0, p0, v2

    move v1, v2

    .line 150
    :cond_f
    aget v5, p0, v2

    if-le v5, v3, :cond_15

    .line 151
    aget v3, p0, v2

    .line 145
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    move v2, v4

    move v5, v4

    .line 158
    :goto_1a
    if-ge v4, v6, :cond_2a

    .line 159
    sub-int v0, v4, v1

    .line 161
    aget v7, p0, v4

    mul-int/2addr v7, v0

    mul-int/2addr v0, v7

    .line 162
    if-le v0, v2, :cond_5b

    move v2, v4

    .line 158
    :goto_25
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v2, v0

    goto :goto_1a

    .line 169
    :cond_2a
    if-le v1, v5, :cond_57

    .line 177
    :goto_2c
    sub-int v0, v1, v5

    div-int/lit8 v2, v6, 0x10

    if-gt v0, v2, :cond_37

    .line 178
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 182
    :cond_37
    add-int/lit8 v6, v1, -0x1

    .line 183
    const/4 v2, -0x1

    .line 184
    add-int/lit8 v4, v1, -0x1

    :goto_3c
    if-le v4, v5, :cond_51

    .line 185
    sub-int v0, v4, v5

    .line 186
    mul-int/2addr v0, v0

    sub-int v7, v1, v4

    mul-int/2addr v0, v7

    aget v7, p0, v4

    sub-int v7, v3, v7

    mul-int/2addr v0, v7

    .line 187
    if-le v0, v2, :cond_54

    move v2, v4

    .line 184
    :goto_4c
    add-int/lit8 v4, v4, -0x1

    move v6, v2

    move v2, v0

    goto :goto_3c

    .line 193
    :cond_51
    shl-int/lit8 v0, v6, 0x3

    return v0

    :cond_54
    move v0, v2

    move v2, v6

    goto :goto_4c

    :cond_57
    move v8, v5

    move v5, v1

    move v1, v8

    goto :goto_2c

    :cond_5b
    move v0, v2

    move v2, v5

    goto :goto_25
.end method

.method private a(I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    array-length v0, v0

    if-ge v0, p1, :cond_a

    .line 132
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    :cond_a
    move v0, v1

    .line 134
    :goto_b
    const/16 v2, 0x20

    if-ge v0, v2, :cond_16

    .line 135
    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->c:[I

    aput v1, v2, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 137
    :cond_16
    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public a(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->b()I

    move-result v4

    .line 55
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v3

    if-ge v3, v4, :cond_34

    .line 56
    :cond_12
    new-instance p2, Lcom/google/zxing/common/BitArray;

    invoke-direct {p2, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 61
    :goto_17
    invoke-direct {p0, v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a(I)V

    .line 62
    iget-object v3, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    invoke-virtual {v1, p1, v3}, Lcom/google/zxing/LuminanceSource;->a(I[B)[B

    move-result-object v5

    .line 63
    iget-object v3, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->c:[I

    move v1, v2

    .line 64
    :goto_23
    if-ge v1, v4, :cond_38

    .line 65
    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    .line 66
    shr-int/lit8 v6, v6, 0x3

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 58
    :cond_34
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->c()V

    goto :goto_17

    .line 68
    :cond_38
    invoke-static {v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a([I)I

    move-result v6

    .line 70
    aget-byte v1, v5, v2

    and-int/lit16 v2, v1, 0xff

    .line 71
    aget-byte v1, v5, v0

    and-int/lit16 v1, v1, 0xff

    move v3, v2

    .line 72
    :goto_45
    add-int/lit8 v2, v4, -0x1

    if-ge v0, v2, :cond_60

    .line 73
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    .line 75
    mul-int/lit8 v7, v1, 0x4

    sub-int v3, v7, v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 76
    if-ge v3, v6, :cond_5b

    .line 77
    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->b(I)V

    .line 72
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    goto :goto_45

    .line 82
    :cond_60
    return-object p2
.end method

.method public b()Lcom/google/zxing/common/BitMatrix;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a()Lcom/google/zxing/LuminanceSource;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/google/zxing/LuminanceSource;->b()I

    move-result v4

    .line 90
    invoke-virtual {v3}, Lcom/google/zxing/LuminanceSource;->c()I

    move-result v5

    .line 91
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 95
    invoke-direct {p0, v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a(I)V

    .line 96
    iget-object v7, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->c:[I

    .line 97
    const/4 v0, 0x1

    move v2, v0

    :goto_19
    const/4 v0, 0x5

    if-ge v2, v0, :cond_41

    .line 98
    mul-int v0, v5, v2

    div-int/lit8 v0, v0, 0x5

    .line 99
    iget-object v8, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    invoke-virtual {v3, v0, v8}, Lcom/google/zxing/LuminanceSource;->a(I[B)[B

    move-result-object v8

    .line 100
    mul-int/lit8 v0, v4, 0x4

    div-int/lit8 v9, v0, 0x5

    .line 101
    div-int/lit8 v0, v4, 0x5

    :goto_2c
    if-ge v0, v9, :cond_3d

    .line 102
    aget-byte v10, v8, v0

    and-int/lit16 v10, v10, 0xff

    .line 103
    shr-int/lit8 v10, v10, 0x3

    aget v11, v7, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v7, v10

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 97
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 106
    :cond_41
    invoke-static {v7}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a([I)I

    move-result v7

    .line 111
    invoke-virtual {v3}, Lcom/google/zxing/LuminanceSource;->a()[B

    move-result-object v3

    move v2, v1

    .line 112
    :goto_4a
    if-ge v2, v5, :cond_63

    .line 113
    mul-int v8, v2, v4

    move v0, v1

    .line 114
    :goto_4f
    if-ge v0, v4, :cond_5f

    .line 115
    add-int v9, v8, v0

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    .line 116
    if-ge v9, v7, :cond_5c

    .line 117
    invoke-virtual {v6, v0, v2}, Lcom/google/zxing/common/BitMatrix;->b(II)V

    .line 114
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 112
    :cond_5f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    .line 122
    :cond_63
    return-object v6
.end method
