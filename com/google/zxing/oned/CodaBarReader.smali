.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final a:[C

.field static final b:[I

.field private static final c:[C


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private e:[I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string/jumbo v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->c:[C

    return-void

    .line 50
    nop

    :array_1c
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    .line 61
    :array_48
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    .line 77
    return-void
.end method

.method private a(Lcom/google/zxing/common/BitArray;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iput v2, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    .line 233
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->d(I)I

    move-result v0

    .line 234
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v5

    .line 235
    if-lt v0, v5, :cond_13

    .line 236
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    move v3, v1

    move v4, v0

    move v0, v2

    .line 240
    :goto_16
    if-ge v4, v5, :cond_2f

    .line 241
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->a(I)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_24

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 248
    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 244
    :cond_24
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->b(I)V

    .line 246
    if-nez v3, :cond_2d

    move v0, v1

    :goto_2a
    move v3, v0

    move v0, v1

    goto :goto_21

    :cond_2d
    move v0, v2

    goto :goto_2a

    .line 250
    :cond_2f
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->b(I)V

    .line 251
    return-void
.end method

.method static a([CC)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 282
    if-eqz p0, :cond_c

    .line 283
    array-length v2, p0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_c

    aget-char v3, p0, v1

    .line 284
    if-ne v3, p1, :cond_d

    .line 285
    const/4 v0, 0x1

    .line 289
    :cond_c
    return v0

    .line 283
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private b()I
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 264
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    if-ge v0, v2, :cond_38

    .line 265
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->c(I)I

    move-result v2

    .line 266
    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->c:[C

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lcom/google/zxing/oned/CodaBarReader;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 269
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .line 270
    :goto_1c
    add-int/lit8 v4, v0, 0x7

    if-ge v2, v4, :cond_28

    .line 271
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 273
    :cond_28
    if-eq v0, v1, :cond_34

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    add-int/lit8 v4, v0, -0x1

    aget v2, v2, v4

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_35

    .line 274
    :cond_34
    return v0

    .line 264
    :cond_35
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 278
    :cond_38
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private b(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    aput p1, v0, v1

    .line 255
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    .line 256
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    array-length v1, v1

    if-lt v0, v1, :cond_23

    .line 257
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 258
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    .line 261
    :cond_23
    return-void
.end method

.method private c(I)I
    .registers 12

    .prologue
    const v3, 0x7fffffff

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 294
    add-int/lit8 v7, p1, 0x7

    .line 295
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    if-lt v7, v0, :cond_d

    move v0, v5

    .line 342
    :cond_c
    :goto_c
    return v0

    .line 299
    :cond_d
    iget-object v8, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    move v6, p1

    move v2, v3

    move v1, v4

    .line 303
    :goto_12
    if-ge v6, v7, :cond_20

    .line 304
    aget v0, v8, v6

    .line 305
    if-ge v0, v2, :cond_19

    move v2, v0

    .line 308
    :cond_19
    if-le v0, v1, :cond_6d

    .line 303
    :goto_1b
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_12

    .line 312
    :cond_20
    add-int v0, v2, v1

    div-int/lit8 v2, v0, 0x2

    .line 316
    add-int/lit8 v0, p1, 0x1

    move v6, v0

    move v1, v4

    :goto_28
    if-ge v6, v7, :cond_36

    .line 317
    aget v0, v8, v6

    .line 318
    if-ge v0, v3, :cond_2f

    move v3, v0

    .line 321
    :cond_2f
    if-le v0, v1, :cond_6b

    .line 316
    :goto_31
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_28

    .line 325
    :cond_36
    add-int v0, v3, v1

    div-int/lit8 v1, v0, 0x2

    .line 327
    const/16 v0, 0x80

    move v6, v4

    move v3, v4

    move v7, v0

    .line 329
    :goto_3f
    const/4 v0, 0x7

    if-ge v6, v0, :cond_58

    .line 330
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_56

    move v0, v2

    .line 331
    :goto_47
    shr-int/lit8 v7, v7, 0x1

    .line 332
    add-int v9, p1, v6

    aget v9, v8, v9

    if-le v9, v0, :cond_69

    .line 333
    or-int v0, v3, v7

    .line 329
    :goto_51
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    goto :goto_3f

    :cond_56
    move v0, v1

    .line 330
    goto :goto_47

    :cond_58
    move v0, v4

    .line 337
    :goto_59
    sget-object v1, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_67

    .line 338
    sget-object v1, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_c

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_67
    move v0, v5

    .line 342
    goto :goto_c

    :cond_69
    move v0, v3

    goto :goto_51

    :cond_6b
    move v0, v1

    goto :goto_31

    :cond_6d
    move v0, v1

    goto :goto_1b
.end method


# virtual methods
.method public a(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 83
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/CodaBarReader;->a(Lcom/google/zxing/common/BitArray;)V

    .line 84
    invoke-direct {p0}, Lcom/google/zxing/oned/CodaBarReader;->b()I

    move-result v1

    .line 87
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 89
    :cond_15
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->c(I)I

    move-result v2

    .line 90
    if-ne v2, v8, :cond_20

    .line 91
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 96
    :cond_20
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x8

    .line 99
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v9, :cond_50

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->c:[C

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    aget-char v2, v5, v2

    .line 100
    invoke-static {v4, v2}, Lcom/google/zxing/oned/CodaBarReader;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 106
    :goto_3c
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    add-int/lit8 v4, v0, -0x1

    aget v5, v2, v4

    .line 108
    const/4 v2, -0x8

    move v4, v3

    :goto_44
    if-ge v2, v8, :cond_55

    .line 109
    iget-object v6, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    add-int v7, v0, v2

    aget v6, v6, v7

    add-int/2addr v4, v6

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 103
    :cond_50
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    if-lt v0, v2, :cond_15

    goto :goto_3c

    .line 115
    :cond_55
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->f:I

    if-ge v0, v2, :cond_62

    div-int/lit8 v2, v4, 0x2

    if-ge v5, v2, :cond_62

    .line 116
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 119
    :cond_62
    invoke-virtual {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->a(I)V

    move v2, v3

    .line 122
    :goto_66
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v2, v4, :cond_80

    .line 123
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    iget-object v6, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 126
    :cond_80
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 127
    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->c:[C

    invoke-static {v4, v2}, Lcom/google/zxing/oned/CodaBarReader;->a([CC)Z

    move-result v2

    if-nez v2, :cond_93

    .line 128
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 130
    :cond_93
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 131
    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->c:[C

    invoke-static {v4, v2}, Lcom/google/zxing/oned/CodaBarReader;->a([CC)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 132
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 136
    :cond_ae
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    if-gt v2, v4, :cond_bc

    .line 138
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 141
    :cond_bc
    if-eqz p3, :cond_c6

    sget-object v2, Lcom/google/zxing/DecodeHintType;->i:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    .line 142
    :cond_c6
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_d8
    move v4, v3

    move v2, v3

    .line 147
    :goto_da
    if-ge v4, v1, :cond_e6

    .line 148
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    aget v5, v5, v4

    add-int/2addr v5, v2

    .line 147
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_da

    .line 150
    :cond_e6
    int-to-float v4, v2

    .line 151
    :goto_e7
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_f3

    .line 152
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    aget v5, v5, v1

    add-int/2addr v2, v5

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    .line 154
    :cond_f3
    int-to-float v0, v2

    .line 155
    new-instance v1, Lcom/google/zxing/Result;

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p1

    invoke-direct {v7, v4, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v6, v3

    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v4, p1

    invoke-direct {v3, v0, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v6, v9

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->b:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v2, v5, v6, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v1
.end method

.method a(I)V
    .registers 13

    .prologue
    .line 166
    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_c8

    .line 167
    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_d4

    .line 168
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 173
    const/4 v0, 0x0

    move v1, p1

    .line 174
    :goto_16
    sget-object v2, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    aget v3, v2, v3

    .line 175
    const/4 v2, 0x6

    :goto_21
    if-ltz v2, :cond_40

    .line 178
    and-int/lit8 v7, v2, 0x1

    and-int/lit8 v8, v3, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 179
    aget v8, v4, v7

    iget-object v9, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    add-int v10, v1, v2

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v4, v7

    .line 180
    aget v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v7

    .line 181
    shr-int/lit8 v3, v3, 0x1

    .line 175
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 183
    :cond_40
    if-lt v0, v6, :cond_87

    .line 191
    const/4 v0, 0x4

    new-array v3, v0, [F

    .line 192
    const/4 v0, 0x4

    new-array v7, v0, [F

    .line 196
    const/4 v0, 0x0

    :goto_49
    const/4 v1, 0x2

    if-ge v0, v1, :cond_8c

    .line 197
    const/4 v1, 0x0

    aput v1, v7, v0

    .line 198
    add-int/lit8 v1, v0, 0x2

    aget v2, v4, v0

    int-to-float v2, v2

    aget v8, v5, v0

    int-to-float v8, v8

    div-float/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget v8, v4, v8

    int-to-float v8, v8

    add-int/lit8 v9, v0, 0x2

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    aput v2, v7, v1

    .line 199
    add-int/lit8 v1, v0, 0x2

    aget v1, v7, v1

    aput v1, v3, v0

    .line 200
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    aget v2, v4, v2

    int-to-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v2, v8

    const/high16 v8, 0x3fc00000    # 1.5f

    add-float/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget v8, v5, v8

    int-to-float v8, v8

    div-float/2addr v2, v8

    aput v2, v3, v1

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 187
    :cond_87
    add-int/lit8 v1, v1, 0x8

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 205
    :cond_8c
    const/4 v0, 0x0

    .line 206
    :goto_8d
    sget-object v1, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    aget v2, v1, v2

    .line 207
    const/4 v1, 0x6

    :goto_98
    if-ltz v1, :cond_bf

    .line 210
    and-int/lit8 v4, v1, 0x1

    and-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 211
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    add-int v8, p1, v1

    aget v5, v5, v8

    .line 212
    int-to-float v8, v5

    aget v9, v7, v4

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_b5

    int-to-float v5, v5

    aget v4, v3, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_ba

    .line 213
    :cond_b5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 215
    :cond_ba
    shr-int/lit8 v2, v2, 0x1

    .line 207
    add-int/lit8 v1, v1, -0x1

    goto :goto_98

    .line 217
    :cond_bf
    if-lt v0, v6, :cond_c2

    .line 222
    return-void

    .line 220
    :cond_c2
    add-int/lit8 p1, p1, 0x8

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 166
    nop

    :array_c8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 167
    :array_d4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
