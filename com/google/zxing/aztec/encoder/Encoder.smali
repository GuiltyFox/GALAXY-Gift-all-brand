.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final LATCH_TABLE:[[I

.field private static final NB_BITS:[I

.field private static final NB_BITS_COMPACT:[I

.field private static final SHIFT_TABLE:[[I

.field private static final TABLE_BINARY:I = 0x5

.field private static final TABLE_DIGIT:I = 0x2

.field private static final TABLE_LOWER:I = 0x1

.field private static final TABLE_MIXED:I = 0x3

.field private static final TABLE_PUNCT:I = 0x4

.field private static final TABLE_UPPER:I

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 42
    const/4 v8, 0x5

    const/16 v9, 0x100

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    .line 43
    const/4 v8, 0x6

    const/4 v9, 0x6

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    .line 44
    const/4 v8, 0x6

    const/4 v9, 0x6

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    .line 49
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x20

    aput v12, v8, v9

    .line 50
    const/16 v1, 0x41

    .local v1, "c":I
    :goto_40
    const/16 v8, 0x5a

    if-gt v1, v8, :cond_51

    .line 51
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v11

    add-int/lit8 v9, v1, -0x41

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 53
    :cond_51
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x20

    aput v12, v8, v9

    .line 54
    const/16 v1, 0x61

    :goto_5b
    const/16 v8, 0x7a

    if-gt v1, v8, :cond_6c

    .line 55
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v12

    add-int/lit8 v9, v1, -0x61

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 57
    :cond_6c
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x20

    aput v12, v8, v9

    .line 58
    const/16 v1, 0x30

    :goto_76
    const/16 v8, 0x39

    if-gt v1, v8, :cond_87

    .line 59
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    add-int/lit8 v9, v1, -0x30

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 61
    :cond_87
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x2c

    const/16 v10, 0xc

    aput v10, v8, v9

    .line 62
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x2e

    const/16 v10, 0xd

    aput v10, v8, v9

    .line 63
    const/16 v8, 0x1c

    new-array v5, v8, [I

    fill-array-data v5, :array_1b6

    .line 67
    .local v5, "mixedTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a3
    array-length v8, v5

    if-ge v2, v8, :cond_b1

    .line 68
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v14

    aget v9, v5, v2

    aput v2, v8, v9

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 70
    :cond_b1
    const/16 v8, 0x1f

    new-array v6, v8, [I

    fill-array-data v6, :array_1f2

    .line 74
    .local v6, "punctTable":[I
    const/4 v2, 0x0

    :goto_b9
    array-length v8, v6

    if-ge v2, v8, :cond_cb

    .line 75
    aget v8, v6, v2

    if-lez v8, :cond_c8

    .line 76
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v15

    aget v9, v6, v2

    aput v2, v8, v9

    .line 74
    :cond_c8
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 79
    :cond_cb
    sget-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    .local v0, "arr$":[[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_cf
    if-ge v3, v4, :cond_da

    aget-object v7, v0, v3

    .line 80
    .local v7, "table":[I
    const/4 v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    .line 82
    .end local v7    # "table":[I
    :cond_da
    sget-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_de
    if-ge v3, v4, :cond_e9

    aget-object v7, v0, v3

    .line 83
    .restart local v7    # "table":[I
    const/4 v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_de

    .line 85
    .end local v7    # "table":[I
    :cond_e9
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v11

    aput v11, v8, v15

    .line 86
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x1c

    aput v9, v8, v12

    .line 87
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x1d

    aput v9, v8, v14

    .line 88
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x1e

    aput v9, v8, v13

    .line 89
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v11

    const/4 v9, 0x5

    const/16 v10, 0x1f

    aput v10, v8, v9

    .line 90
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    aput v11, v8, v15

    .line 91
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x1c

    aput v9, v8, v11

    .line 92
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x1d

    aput v9, v8, v14

    .line 93
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x1e

    aput v9, v8, v13

    .line 94
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    const/4 v9, 0x5

    const/16 v10, 0x1f

    aput v10, v8, v9

    .line 95
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v14

    aput v11, v8, v15

    .line 96
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v14

    const/16 v9, 0x1c

    aput v9, v8, v12

    .line 97
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v14

    const/16 v9, 0x1d

    aput v9, v8, v11

    .line 98
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v14

    const/16 v9, 0x1e

    aput v9, v8, v15

    .line 99
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v14

    const/4 v9, 0x5

    const/16 v10, 0x1f

    aput v10, v8, v9

    .line 100
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v15

    const/16 v9, 0x1f

    aput v9, v8, v11

    .line 101
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v13

    aput v11, v8, v15

    .line 102
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x1e

    aput v9, v8, v11

    .line 103
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x1f

    aput v9, v8, v11

    .line 104
    const/4 v8, 0x5

    new-array v8, v8, [I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    .line 105
    const/4 v2, 0x1

    :goto_182
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    array-length v8, v8

    if-ge v2, v8, :cond_193

    .line 106
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    mul-int/lit8 v9, v2, 0x10

    add-int/lit8 v9, v9, 0x58

    mul-int/2addr v9, v2

    aput v9, v8, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_182

    .line 108
    :cond_193
    const/16 v8, 0x21

    new-array v8, v8, [I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    .line 109
    const/4 v2, 0x1

    :goto_19a
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    array-length v8, v8

    if-ge v2, v8, :cond_1ab

    .line 110
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    mul-int/lit8 v9, v2, 0x10

    add-int/lit8 v9, v9, 0x70

    mul-int/2addr v9, v2

    aput v9, v8, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_19a

    .line 114
    :cond_1ab
    const/16 v8, 0x21

    new-array v8, v8, [I

    fill-array-data v8, :array_234

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    .line 63
    nop

    :array_1b6
    .array-data 4
        0x0
        0x20
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
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    .line 70
    :array_1f2
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
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
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data

    .line 114
    :array_234
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .registers 10
    .param p0, "stuffedBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I
    .param p2, "totalWords"    # I

    .prologue
    .line 364
    new-array v2, p2, [I

    .line 367
    .local v2, "message":[I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    div-int v3, v5, p1

    .local v3, "n":I
    :goto_9
    if-ge v0, v3, :cond_29

    .line 368
    const/4 v4, 0x0

    .line 369
    .local v4, "value":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    if-ge v1, p1, :cond_24

    .line 370
    mul-int v5, v0, p1

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    sub-int v6, p1, v1

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    :goto_1e
    or-int/2addr v4, v5

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 370
    :cond_22
    const/4 v5, 0x0

    goto :goto_1e

    .line 372
    :cond_24
    aput v4, v2, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 374
    .end local v1    # "j":I
    .end local v4    # "value":I
    :cond_29
    return-object v2
.end method

.method static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .registers 7
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "center"    # I
    .param p2, "size"    # I

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_23

    .line 282
    sub-int v1, p1, v0

    .local v1, "j":I
    :goto_5
    add-int v2, p1, v0

    if-gt v1, v2, :cond_20

    .line 283
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 284
    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 285
    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 286
    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 281
    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 289
    .end local v1    # "j":I
    :cond_23
    sub-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 290
    sub-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 291
    sub-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 292
    add-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 293
    add-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 294
    add-int v2, p1, p2

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 295
    return-void
.end method

.method static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "compact"    # Z
    .param p2, "matrixSize"    # I
    .param p3, "modeMessage"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 312
    if-eqz p1, :cond_57

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v1, 0x7

    if-ge v0, v1, :cond_b9

    .line 314
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 315
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 317
    :cond_18
    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 318
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 320
    :cond_2c
    rsub-int/lit8 v1, v0, 0x14

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 321
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 323
    :cond_40
    rsub-int/lit8 v1, v0, 0x1b

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 324
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x5

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 313
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 328
    .end local v0    # "i":I
    :cond_57
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_58
    const/16 v1, 0xa

    if-ge v0, v1, :cond_b9

    .line 329
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 330
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    div-int/lit8 v2, v0, 0x5

    add-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 332
    :cond_71
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 333
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x5

    add-int/2addr v2, v0

    div-int/lit8 v3, v0, 0x5

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 335
    :cond_88
    rsub-int/lit8 v1, v0, 0x1d

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 336
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    div-int/lit8 v2, v0, 0x5

    add-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 338
    :cond_9f
    rsub-int/lit8 v1, v0, 0x27

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 339
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x7

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x5

    add-int/2addr v2, v0

    div-int/lit8 v3, v0, 0x5

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 328
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 343
    :cond_b9
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 2
    .param p0, "data"    # [B

    .prologue
    .line 129
    const/16 v0, 0x21

    invoke-static {p0, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BI)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 41
    .param p0, "data"    # [B
    .param p1, "minECCPercent"    # I

    .prologue
    .line 143
    invoke-static/range {p0 .. p0}, Lcom/google/zxing/aztec/encoder/Encoder;->highLevelEncode([B)Lcom/google/zxing/common/BitArray;

    move-result-object v7

    .line 146
    .local v7, "bits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    mul-int v36, v36, p1

    div-int/lit8 v36, v36, 0x64

    add-int/lit8 v11, v36, 0xb

    .line 147
    .local v11, "eccBits":I
    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v32, v36, v11

    .line 149
    .local v32, "totalSizeBits":I
    const/16 v35, 0x0

    .line 150
    .local v35, "wordSize":I
    const/16 v34, 0x0

    .line 151
    .local v34, "totalSymbolBits":I
    const/16 v31, 0x0

    .line 152
    .local v31, "stuffedBits":Lcom/google/zxing/common/BitArray;
    const/16 v16, 0x1

    .local v16, "layers":I
    :goto_1c
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_5b

    .line 153
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    aget v36, v36, v16

    move/from16 v0, v36

    move/from16 v1, v32

    if-lt v0, v1, :cond_c0

    .line 154
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v36, v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_47

    .line 155
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v35, v36, v16

    .line 156
    move/from16 v0, v35

    invoke-static {v7, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v31

    .line 158
    :cond_47
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    aget v34, v36, v16

    .line 159
    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v36, v36, v11

    sget-object v37, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    aget v37, v37, v16

    move/from16 v0, v36

    move/from16 v1, v37

    if-gt v0, v1, :cond_c0

    .line 164
    :cond_5b
    const/4 v10, 0x1

    .line 165
    .local v10, "compact":Z
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_ab

    .line 166
    const/4 v10, 0x0

    .line 167
    const/16 v16, 0x1

    :goto_6c
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_ab

    .line 168
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    aget v36, v36, v16

    move/from16 v0, v36

    move/from16 v1, v32

    if-lt v0, v1, :cond_c4

    .line 169
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v36, v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_97

    .line 170
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v35, v36, v16

    .line 171
    move/from16 v0, v35

    invoke-static {v7, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v31

    .line 173
    :cond_97
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    aget v34, v36, v16

    .line 174
    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v36, v36, v11

    sget-object v37, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    aget v37, v37, v16

    move/from16 v0, v36

    move/from16 v1, v37

    if-gt v0, v1, :cond_c4

    .line 180
    :cond_ab
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_c7

    .line 181
    new-instance v36, Ljava/lang/IllegalArgumentException;

    const-string v37, "Data too large for an Aztec code"

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 152
    .end local v10    # "compact":Z
    :cond_c0
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1c

    .line 167
    .restart local v10    # "compact":Z
    :cond_c4
    add-int/lit8 v16, v16, 0x1

    goto :goto_6c

    .line 185
    :cond_c7
    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v36, v36, v35

    add-int/lit8 v36, v36, -0x1

    div-int v21, v36, v35

    .line 194
    .local v21, "messageSizeInWords":I
    new-instance v29, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static/range {v35 .. v35}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 195
    .local v29, "rs":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v33, v34, v35

    .line 196
    .local v33, "totalSizeInFullWords":I
    move-object/from16 v0, v31

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v23

    .line 197
    .local v23, "messageWords":[I
    sub-int v36, v33, v21

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 200
    rem-int v30, v34, v35

    .line 201
    .local v30, "startPad":I
    new-instance v20, Lcom/google/zxing/common/BitArray;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 202
    .local v20, "messageBits":Lcom/google/zxing/common/BitArray;
    const/16 v36, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v36

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 203
    move-object/from16 v4, v23

    .local v4, "arr$":[I
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_10d
    move/from16 v0, v17

    if-ge v13, v0, :cond_11f

    aget v22, v4, v13

    .line 204
    .local v22, "messageWord":I
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 203
    add-int/lit8 v13, v13, 0x1

    goto :goto_10d

    .line 208
    .end local v22    # "messageWord":I
    :cond_11f
    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v10, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    .line 211
    .local v24, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz v10, :cond_140

    mul-int/lit8 v36, v16, 0x4

    add-int/lit8 v6, v36, 0xb

    .line 212
    .local v6, "baseMatrixSize":I
    :goto_12d
    new-array v3, v6, [I

    .line 214
    .local v3, "alignmentMap":[I
    if-eqz v10, :cond_145

    .line 216
    move/from16 v19, v6

    .line 217
    .local v19, "matrixSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_134
    array-length v0, v3

    move/from16 v36, v0

    move/from16 v0, v36

    if-ge v12, v0, :cond_173

    .line 218
    aput v12, v3, v12

    .line 217
    add-int/lit8 v12, v12, 0x1

    goto :goto_134

    .line 211
    .end local v3    # "alignmentMap":[I
    .end local v6    # "baseMatrixSize":I
    .end local v12    # "i":I
    .end local v19    # "matrixSize":I
    :cond_140
    mul-int/lit8 v36, v16, 0x4

    add-int/lit8 v6, v36, 0xe

    goto :goto_12d

    .line 221
    .restart local v3    # "alignmentMap":[I
    .restart local v6    # "baseMatrixSize":I
    :cond_145
    add-int/lit8 v36, v6, 0x1

    div-int/lit8 v37, v6, 0x2

    add-int/lit8 v37, v37, -0x1

    div-int/lit8 v37, v37, 0xf

    mul-int/lit8 v37, v37, 0x2

    add-int v19, v36, v37

    .line 222
    .restart local v19    # "matrixSize":I
    div-int/lit8 v26, v6, 0x2

    .line 223
    .local v26, "origCenter":I
    div-int/lit8 v8, v19, 0x2

    .line 224
    .local v8, "center":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_156
    move/from16 v0, v26

    if-ge v12, v0, :cond_173

    .line 225
    div-int/lit8 v36, v12, 0xf

    add-int v25, v12, v36

    .line 226
    .local v25, "newOffset":I
    sub-int v36, v26, v12

    add-int/lit8 v36, v36, -0x1

    sub-int v37, v8, v25

    add-int/lit8 v37, v37, -0x1

    aput v37, v3, v36

    .line 227
    add-int v36, v26, v12

    add-int v37, v8, v25

    add-int/lit8 v37, v37, 0x1

    aput v37, v3, v36

    .line 224
    add-int/lit8 v12, v12, 0x1

    goto :goto_156

    .line 230
    .end local v8    # "center":I
    .end local v25    # "newOffset":I
    .end local v26    # "origCenter":I
    :cond_173
    new-instance v18, Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 233
    .local v18, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v12, 0x0

    const/16 v27, 0x0

    .local v27, "rowOffset":I
    :goto_17b
    move/from16 v0, v16

    if-ge v12, v0, :cond_255

    .line 234
    if-eqz v10, :cond_241

    sub-int v36, v16, v12

    mul-int/lit8 v36, v36, 0x4

    add-int/lit8 v28, v36, 0x9

    .line 235
    .local v28, "rowSize":I
    :goto_187
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_188
    move/from16 v0, v28

    if-ge v14, v0, :cond_24d

    .line 236
    mul-int/lit8 v9, v14, 0x2

    .line 237
    .local v9, "columnOffset":I
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_18f
    const/16 v36, 0x2

    move/from16 v0, v36

    if-ge v15, v0, :cond_249

    .line 238
    add-int v36, v27, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_1b8

    .line 239
    mul-int/lit8 v36, v12, 0x2

    add-int v36, v36, v15

    aget v36, v3, v36

    mul-int/lit8 v37, v12, 0x2

    add-int v37, v37, v14

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 241
    :cond_1b8
    mul-int/lit8 v36, v28, 0x2

    add-int v36, v36, v27

    add-int v36, v36, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_1e3

    .line 242
    mul-int/lit8 v36, v12, 0x2

    add-int v36, v36, v14

    aget v36, v3, v36

    add-int/lit8 v37, v6, -0x1

    mul-int/lit8 v38, v12, 0x2

    sub-int v37, v37, v38

    sub-int v37, v37, v15

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 244
    :cond_1e3
    mul-int/lit8 v36, v28, 0x4

    add-int v36, v36, v27

    add-int v36, v36, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_212

    .line 245
    add-int/lit8 v36, v6, -0x1

    mul-int/lit8 v37, v12, 0x2

    sub-int v36, v36, v37

    sub-int v36, v36, v15

    aget v36, v3, v36

    add-int/lit8 v37, v6, -0x1

    mul-int/lit8 v38, v12, 0x2

    sub-int v37, v37, v38

    sub-int v37, v37, v14

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 247
    :cond_212
    mul-int/lit8 v36, v28, 0x6

    add-int v36, v36, v27

    add-int v36, v36, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_23d

    .line 248
    add-int/lit8 v36, v6, -0x1

    mul-int/lit8 v37, v12, 0x2

    sub-int v36, v36, v37

    sub-int v36, v36, v14

    aget v36, v3, v36

    mul-int/lit8 v37, v12, 0x2

    add-int v37, v37, v15

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 237
    :cond_23d
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_18f

    .line 234
    .end local v9    # "columnOffset":I
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v28    # "rowSize":I
    :cond_241
    sub-int v36, v16, v12

    mul-int/lit8 v36, v36, 0x4

    add-int/lit8 v28, v36, 0xc

    goto/16 :goto_187

    .line 235
    .restart local v9    # "columnOffset":I
    .restart local v14    # "j":I
    .restart local v15    # "k":I
    .restart local v28    # "rowSize":I
    :cond_249
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_188

    .line 252
    .end local v9    # "columnOffset":I
    .end local v15    # "k":I
    :cond_24d
    mul-int/lit8 v36, v28, 0x8

    add-int v27, v27, v36

    .line 233
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_17b

    .line 254
    .end local v14    # "j":I
    .end local v28    # "rowSize":I
    :cond_255
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v10, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    .line 257
    if-eqz v10, :cond_28a

    .line 258
    div-int/lit8 v36, v19, 0x2

    const/16 v37, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 271
    :cond_26d
    new-instance v5, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v5}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    .line 272
    .local v5, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    invoke-virtual {v5, v10}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 273
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 274
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 275
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 276
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    .line 277
    return-object v5

    .line 260
    .end local v5    # "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    :cond_28a
    div-int/lit8 v36, v19, 0x2

    const/16 v37, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 261
    const/4 v12, 0x0

    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_299
    div-int/lit8 v36, v6, 0x2

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    if-ge v12, v0, :cond_26d

    .line 262
    div-int/lit8 v36, v19, 0x2

    and-int/lit8 v15, v36, 0x1

    .restart local v15    # "k":I
    :goto_2a5
    move/from16 v0, v19

    if-ge v15, v0, :cond_2d8

    .line 263
    div-int/lit8 v36, v19, 0x2

    sub-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 264
    div-int/lit8 v36, v19, 0x2

    add-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 265
    div-int/lit8 v36, v19, 0x2

    sub-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v15, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 266
    div-int/lit8 v36, v19, 0x2

    add-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v15, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 262
    add-int/lit8 v15, v15, 0x2

    goto :goto_2a5

    .line 261
    :cond_2d8
    add-int/lit8 v12, v12, 0xf

    add-int/lit8 v14, v14, 0x10

    goto :goto_299
.end method

.method static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .registers 16
    .param p0, "stuffedBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "totalSymbolBits"    # I
    .param p2, "wordSize"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    add-int/2addr v11, p2

    add-int/lit8 v11, v11, -0x1

    div-int v5, v11, p2

    .line 347
    .local v5, "messageSizeInWords":I
    mul-int v11, v5, p2

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    sub-int v1, v11, v12

    .local v1, "i":I
    :goto_11
    if-lez v1, :cond_1a

    .line 348
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 347
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 350
    :cond_1a
    new-instance v8, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 351
    .local v8, "rs":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v10, p1, p2

    .line 352
    .local v10, "totalSizeInFullWords":I
    invoke-static {p0, p2, v10}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v7

    .line 353
    .local v7, "messageWords":[I
    sub-int v11, v10, v5

    invoke-virtual {v8, v7, v11}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 354
    rem-int v9, p1, p2

    .line 355
    .local v9, "startPad":I
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 356
    .local v4, "messageBits":Lcom/google/zxing/common/BitArray;
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 357
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3c
    if-ge v2, v3, :cond_46

    aget v6, v0, v2

    .line 358
    .local v6, "messageWord":I
    invoke-virtual {v4, v6, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 360
    .end local v6    # "messageWord":I
    :cond_46
    return-object v4
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .registers 7
    .param p0, "compact"    # Z
    .param p1, "layers"    # I
    .param p2, "messageSizeInWords"    # I

    .prologue
    const/4 v3, 0x4

    .line 298
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 299
    .local v0, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz p0, :cond_1b

    .line 300
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 301
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 302
    const/16 v1, 0x1c

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 308
    :goto_1a
    return-object v0

    .line 304
    :cond_1b
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 305
    add-int/lit8 v1, p2, -0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 306
    const/16 v1, 0x28

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_1a
.end method

.method static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .registers 2
    .param p0, "wordSize"    # I

    .prologue
    .line 378
    packed-switch p0, :pswitch_data_14

    .line 390
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 380
    :pswitch_5
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_4

    .line 382
    :pswitch_8
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_4

    .line 384
    :pswitch_b
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_4

    .line 386
    :pswitch_e
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_4

    .line 388
    :pswitch_11
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_4

    .line 378
    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_11
    .end packed-switch
.end method

.method static highLevelEncode([B)Lcom/google/zxing/common/BitArray;
    .registers 21
    .param p0, "data"    # [B

    .prologue
    .line 440
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 441
    .local v3, "bits":Lcom/google/zxing/common/BitArray;
    const/4 v13, 0x0

    .line 442
    .local v13, "mode":I
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v7, v0, [I

    .line 443
    .local v7, "idx":[I
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 444
    .local v8, "idxnext":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_26a

    .line 445
    aget-byte v17, p0, v6

    move/from16 v0, v17

    and-int/lit16 v4, v0, 0xff

    .line 446
    .local v4, "c":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_57

    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p0, v17

    move/from16 v0, v17

    and-int/lit16 v14, v0, 0xff

    .line 447
    .local v14, "next":I
    :goto_35
    const/4 v15, 0x0

    .line 449
    .local v15, "punctWord":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v4, v0, :cond_59

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v14, v0, :cond_59

    .line 450
    const/4 v15, 0x2

    .line 458
    :cond_43
    :goto_43
    if-lez v15, :cond_c6

    .line 459
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v13, v0, :cond_83

    .line 460
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v3, v0, v15}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 461
    add-int/lit8 v6, v6, 0x1

    .line 444
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 446
    .end local v14    # "next":I
    .end local v15    # "punctWord":I
    :cond_57
    const/4 v14, 0x0

    goto :goto_35

    .line 451
    .restart local v14    # "next":I
    .restart local v15    # "punctWord":I
    :cond_59
    const/16 v17, 0x2e

    move/from16 v0, v17

    if-ne v4, v0, :cond_67

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v14, v0, :cond_67

    .line 452
    const/4 v15, 0x3

    goto :goto_43

    .line 453
    :cond_67
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v4, v0, :cond_75

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v14, v0, :cond_75

    .line 454
    const/4 v15, 0x4

    goto :goto_43

    .line 455
    :cond_75
    const/16 v17, 0x3a

    move/from16 v0, v17

    if-ne v4, v0, :cond_43

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v14, v0, :cond_43

    .line 456
    const/4 v15, 0x5

    goto :goto_43

    .line 463
    :cond_83
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    if-ltz v17, :cond_a4

    .line 464
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 465
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v3, v0, v15}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 466
    add-int/lit8 v6, v6, 0x1

    .line 467
    goto :goto_54

    .line 468
    :cond_a4
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    if-ltz v17, :cond_c6

    .line 469
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 470
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v3, v0, v15}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 471
    const/4 v13, 0x4

    .line 472
    add-int/lit8 v6, v6, 0x1

    .line 473
    goto :goto_54

    .line 477
    :cond_c6
    const/4 v5, -0x1

    .line 478
    .local v5, "firstMatch":I
    const/16 v16, -0x1

    .line 479
    .local v16, "shiftMode":I
    const/4 v11, -0x1

    .line 481
    .local v11, "latchMode":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_cb
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v9, v0, :cond_110

    .line 482
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v17, v17, v9

    aget v17, v17, v4

    aput v17, v7, v9

    .line 483
    aget v17, v7, v9

    if-lez v17, :cond_e0

    if-gez v5, :cond_e0

    .line 484
    move v5, v9

    .line 486
    :cond_e0
    if-gez v16, :cond_f0

    aget v17, v7, v9

    if-lez v17, :cond_f0

    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v9

    if-ltz v17, :cond_f0

    .line 487
    move/from16 v16, v9

    .line 489
    :cond_f0
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v17, v17, v9

    aget v17, v17, v14

    aput v17, v8, v9

    .line 490
    if-gez v11, :cond_10d

    aget v17, v7, v9

    if-lez v17, :cond_10d

    if-eqz v14, :cond_104

    aget v17, v8, v9

    if-lez v17, :cond_10d

    :cond_104
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v9

    if-ltz v17, :cond_10d

    .line 491
    move v11, v9

    .line 481
    :cond_10d
    add-int/lit8 v9, v9, 0x1

    goto :goto_cb

    .line 494
    :cond_110
    if-gez v16, :cond_128

    if-gez v11, :cond_128

    .line 495
    const/4 v9, 0x0

    :goto_115
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v9, v0, :cond_128

    .line 496
    aget v17, v7, v9

    if-lez v17, :cond_135

    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v9

    if-ltz v17, :cond_135

    .line 497
    move v11, v9

    .line 502
    :cond_128
    aget v17, v7, v13

    if-lez v17, :cond_138

    .line 504
    aget v17, v7, v13

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto/16 :goto_54

    .line 495
    :cond_135
    add-int/lit8 v9, v9, 0x1

    goto :goto_115

    .line 506
    :cond_138
    if-ltz v11, :cond_14f

    .line 508
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v11

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 509
    aget v17, v7, v11

    move/from16 v0, v17

    invoke-static {v3, v11, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 510
    move v13, v11

    goto/16 :goto_54

    .line 511
    :cond_14f
    if-ltz v16, :cond_167

    .line 513
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v16

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 514
    aget v17, v7, v16

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto/16 :goto_54

    .line 516
    :cond_167
    if-ltz v5, :cond_1a5

    .line 518
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v13, v0, :cond_187

    .line 519
    const/16 v17, 0x4

    sget-object v18, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    const/16 v19, 0x4

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 520
    const/4 v13, 0x0

    .line 521
    add-int/lit8 v6, v6, -0x1

    .line 522
    goto/16 :goto_54

    .line 523
    :cond_187
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_1a5

    .line 524
    const/16 v17, 0x2

    sget-object v18, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 525
    const/4 v13, 0x0

    .line 526
    add-int/lit8 v6, v6, -0x1

    .line 527
    goto/16 :goto_54

    .line 534
    :cond_1a5
    add-int/lit8 v10, v6, 0x1

    .local v10, "k":I
    const/4 v12, 0x0

    .local v12, "lookahead":I
    :goto_1a8
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_1d8

    .line 535
    aget-byte v17, p0, v10

    move/from16 v0, v17

    and-int/lit16 v14, v0, 0xff

    .line 536
    const/4 v2, 0x1

    .line 537
    .local v2, "binary":Z
    const/4 v9, 0x0

    :goto_1b9
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v9, v0, :cond_1c8

    .line 538
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v17, v17, v9

    aget v17, v17, v14

    if-lez v17, :cond_1ce

    .line 539
    const/4 v2, 0x0

    .line 543
    :cond_1c8
    if-eqz v2, :cond_1d1

    .line 544
    const/4 v12, 0x0

    .line 534
    :goto_1cb
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a8

    .line 537
    :cond_1ce
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b9

    .line 547
    :cond_1d1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v12, v0, :cond_211

    .line 548
    sub-int/2addr v10, v12

    .line 554
    .end local v2    # "binary":Z
    :cond_1d8
    sub-int/2addr v10, v6

    .line 556
    packed-switch v13, :pswitch_data_26c

    .line 573
    :goto_1dc
    const/16 v17, 0x20

    move/from16 v0, v17

    if-lt v10, v0, :cond_1ea

    const/16 v17, 0x3f

    move/from16 v0, v17

    if-ge v10, v0, :cond_1ea

    .line 574
    const/16 v10, 0x1f

    .line 576
    :cond_1ea
    const/16 v17, 0x21e

    move/from16 v0, v17

    if-le v10, v0, :cond_1f2

    .line 577
    const/16 v10, 0x21e

    .line 579
    :cond_1f2
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v10, v0, :cond_25a

    .line 580
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v3, v10, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 584
    :goto_1ff
    if-lez v10, :cond_266

    .line 585
    aget-byte v17, p0, v6

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 584
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1ff

    .line 551
    .restart local v2    # "binary":Z
    :cond_211
    add-int/lit8 v12, v12, 0x1

    goto :goto_1cb

    .line 560
    .end local v2    # "binary":Z
    :pswitch_214
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto :goto_1dc

    .line 563
    :pswitch_222
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 564
    const/4 v13, 0x0

    .line 565
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto :goto_1dc

    .line 568
    :pswitch_23e
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 569
    const/4 v13, 0x0

    .line 570
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto :goto_1dc

    .line 582
    :cond_25a
    add-int/lit8 v17, v10, -0x1f

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_1ff

    .line 587
    :cond_266
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_54

    .line 591
    .end local v4    # "c":I
    .end local v5    # "firstMatch":I
    .end local v9    # "j":I
    .end local v10    # "k":I
    .end local v11    # "latchMode":I
    .end local v12    # "lookahead":I
    .end local v14    # "next":I
    .end local v15    # "punctWord":I
    .end local v16    # "shiftMode":I
    :cond_26a
    return-object v3

    .line 556
    nop

    :pswitch_data_26c
    .packed-switch 0x0
        :pswitch_214
        :pswitch_214
        :pswitch_222
        :pswitch_214
        :pswitch_23e
    .end packed-switch
.end method

.method static outputWord(Lcom/google/zxing/common/BitArray;II)V
    .registers 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x5

    .line 595
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 596
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 602
    :goto_8
    return-void

    .line 597
    :cond_9
    if-ge p1, v1, :cond_f

    .line 598
    invoke-virtual {p0, p2, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_8

    .line 600
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, p2, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_8
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .registers 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I

    .prologue
    const/4 v7, 0x1

    .line 395
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 398
    .local v4, "out":Lcom/google/zxing/common/BitArray;
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 399
    .local v3, "n":I
    shl-int v6, v7, p1

    add-int/lit8 v2, v6, -0x2

    .line 400
    .local v2, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v3, :cond_47

    .line 401
    const/4 v5, 0x0

    .line 402
    .local v5, "word":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_13
    if-ge v1, p1, :cond_2a

    .line 403
    add-int v6, v0, v1

    if-ge v6, v3, :cond_21

    add-int v6, v0, v1

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 404
    :cond_21
    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    .line 402
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 407
    :cond_2a
    and-int v6, v5, v2

    if-ne v6, v2, :cond_37

    .line 408
    and-int v6, v5, v2

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 409
    add-int/lit8 v0, v0, -0x1

    .line 400
    :goto_35
    add-int/2addr v0, p1

    goto :goto_f

    .line 410
    :cond_37
    and-int v6, v5, v2

    if-nez v6, :cond_43

    .line 411
    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 412
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 414
    :cond_43
    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_35

    .line 436
    .end local v1    # "j":I
    .end local v5    # "word":I
    :cond_47
    return-object v4
.end method
