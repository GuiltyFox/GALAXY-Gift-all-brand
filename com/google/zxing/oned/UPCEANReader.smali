.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[[I

.field static final e:[[I


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final f:Lcom/google/zxing/oned/UPCEANExtensionSupport;

.field private final g:Lcom/google/zxing/oned/EANManufacturerOrgSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 53
    new-array v2, v6, [I

    fill-array-data v2, :array_9a

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    .line 58
    new-array v2, v7, [I

    fill-array-data v2, :array_a4

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->c:[I

    .line 63
    new-array v2, v0, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_b2

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_be

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_ca

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_d6

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_e2

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_ee

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_fa

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_106

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_112

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_11e

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->d:[[I

    .line 82
    const/16 v2, 0x14

    new-array v2, v2, [[I

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->e:[[I

    .line 83
    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->d:[[I

    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->e:[[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    .line 84
    :goto_74
    const/16 v0, 0x14

    if-ge v2, v0, :cond_98

    .line 85
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->d:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v3, v0, v3

    .line 86
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    .line 87
    :goto_82
    array-length v5, v3

    if-ge v0, v5, :cond_90

    .line 88
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v4, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 90
    :cond_90
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->e:[[I

    aput-object v4, v0, v2

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    .line 92
    :cond_98
    return-void

    .line 53
    nop

    :array_9a
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 58
    :array_a4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 63
    :array_b2
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_be
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_ca
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_d6
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_e2
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_ee
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_fa
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_106
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_112
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_11e
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->a:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->f:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 101
    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->g:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 102
    return-void
.end method

.method static a(Lcom/google/zxing/common/BitArray;[II[[I)I
    .registers 10

    .prologue
    .line 355
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;I[I)V

    .line 356
    const v3, 0x3ef5c28f    # 0.48f

    .line 357
    const/4 v0, -0x1

    .line 358
    array-length v4, p3

    .line 359
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v4, :cond_1d

    .line 360
    aget-object v2, p3, v1

    .line 361
    const v5, 0x3f333333    # 0.7f

    invoke-static {p1, v2, v5}, Lcom/google/zxing/oned/UPCEANReader;->a([I[IF)F

    move-result v2

    .line 362
    cmpg-float v5, v2, v3

    if-gez v5, :cond_25

    move v0, v1

    .line 359
    :goto_19
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_9

    .line 367
    :cond_1d
    if-ltz v0, :cond_20

    .line 368
    return v0

    .line 370
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_25
    move v2, v3

    goto :goto_19
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .registers 7

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x0

    .line 261
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 262
    if-nez v3, :cond_a

    .line 282
    :cond_9
    :goto_9
    return v0

    .line 267
    :cond_a
    add-int/lit8 v1, v3, -0x2

    move v2, v0

    :goto_d
    if-ltz v1, :cond_22

    .line 268
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 269
    if-ltz v4, :cond_19

    if-le v4, v5, :cond_1e

    .line 270
    :cond_19
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 272
    :cond_1e
    add-int/2addr v2, v4

    .line 267
    add-int/lit8 v1, v1, -0x2

    goto :goto_d

    .line 274
    :cond_22
    mul-int/lit8 v2, v2, 0x3

    .line 275
    add-int/lit8 v1, v3, -0x1

    :goto_26
    if-ltz v1, :cond_3b

    .line 276
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 277
    if-ltz v3, :cond_32

    if-le v3, v5, :cond_37

    .line 278
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 280
    :cond_37
    add-int/2addr v2, v3

    .line 275
    add-int/lit8 v1, v1, -0x2

    goto :goto_26

    .line 282
    :cond_3b
    rem-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method static a(Lcom/google/zxing/common/BitArray;)[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 108
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    array-length v1, v1

    new-array v4, v1, [I

    move v1, v2

    move-object v3, v0

    move v0, v2

    .line 109
    :cond_a
    :goto_a
    if-nez v0, :cond_28

    .line 110
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    array-length v3, v3

    invoke-static {v4, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v3

    .line 112
    aget v5, v3, v2

    .line 113
    const/4 v1, 0x1

    aget v1, v3, v1

    .line 117
    sub-int v6, v1, v5

    sub-int v6, v5, v6

    .line 118
    if-ltz v6, :cond_a

    .line 119
    invoke-virtual {p0, v6, v5, v2}, Lcom/google/zxing/common/BitArray;->a(IIZ)Z

    move-result v0

    goto :goto_a

    .line 122
    :cond_28
    return-object v3
.end method

.method static a(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .registers 5

    .prologue
    .line 293
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .registers 16

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    array-length v6, p3

    .line 313
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v7

    .line 315
    if-eqz p2, :cond_23

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->d(I)I

    move-result v0

    :goto_e
    move v5, v0

    move v1, v4

    move v2, p2

    .line 318
    :goto_11
    if-ge v5, v7, :cond_61

    .line 319
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->a(I)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_28

    .line 320
    aget v8, p4, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v1

    .line 318
    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 315
    :cond_23
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->c(I)I

    move-result v0

    goto :goto_e

    .line 322
    :cond_28
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_5c

    .line 323
    const v8, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v8}, Lcom/google/zxing/oned/UPCEANReader;->a([I[IF)F

    move-result v8

    const v9, 0x3ef5c28f    # 0.48f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_41

    .line 324
    new-array v1, v10, [I

    aput v0, v1, v4

    aput v5, v1, v3

    return-object v1

    .line 326
    :cond_41
    aget v8, p4, v4

    aget v9, p4, v3

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 327
    add-int/lit8 v8, v6, -0x2

    invoke-static {p4, v10, p4, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    add-int/lit8 v8, v6, -0x2

    aput v4, p4, v8

    .line 329
    add-int/lit8 v8, v6, -0x1

    aput v4, p4, v8

    .line 330
    add-int/lit8 v1, v1, -0x1

    .line 334
    :goto_56
    aput v3, p4, v1

    .line 335
    if-nez v2, :cond_5f

    move v2, v3

    goto :goto_20

    .line 332
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_5f
    move v2, v4

    .line 335
    goto :goto_20

    .line 338
    :cond_61
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
.end method

.method public a(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 5
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
    .line 128
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->a(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    .line 151
    if-nez p4, :cond_64

    const/4 v0, 0x0

    .line 154
    :goto_3
    if-eqz v0, :cond_19

    .line 155
    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->a(Lcom/google/zxing/ResultPoint;)V

    .line 160
    :cond_19
    iget-object v1, p0, Lcom/google/zxing/oned/UPCEANReader;->a:Ljava/lang/StringBuilder;

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    invoke-virtual {p0, p2, p3, v1}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v2

    .line 164
    if-eqz v0, :cond_2f

    .line 165
    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v2

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v0, v3}, Lcom/google/zxing/ResultPointCallback;->a(Lcom/google/zxing/ResultPoint;)V

    .line 170
    :cond_2f
    invoke-virtual {p0, p2, v2}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v2

    .line 172
    if-eqz v0, :cond_49

    .line 173
    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v0, v3}, Lcom/google/zxing/ResultPointCallback;->a(Lcom/google/zxing/ResultPoint;)V

    .line 181
    :cond_49
    const/4 v0, 0x1

    aget v0, v2, v0

    .line 182
    const/4 v3, 0x0

    aget v3, v2, v3

    sub-int v3, v0, v3

    add-int/2addr v3, v0

    .line 183
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v4

    if-ge v3, v4, :cond_5f

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v3, v4}, Lcom/google/zxing/common/BitArray;->a(IIZ)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 184
    :cond_5f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 151
    :cond_64
    sget-object v0, Lcom/google/zxing/DecodeHintType;->j:Lcom/google/zxing/DecodeHintType;

    .line 152
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    goto :goto_3

    .line 187
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_7e

    .line 190
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 192
    :cond_7e
    invoke-virtual {p0, v4}, Lcom/google/zxing/oned/UPCEANReader;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 193
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 196
    :cond_89
    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget v1, p3, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 197
    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x0

    aget v3, v2, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 198
    invoke-virtual {p0}, Lcom/google/zxing/oned/UPCEANReader;->b()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    .line 199
    new-instance v6, Lcom/google/zxing/Result;

    const/4 v3, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    const/4 v8, 0x0

    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v10, p1

    invoke-direct {v9, v0, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v7, v8

    const/4 v0, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, p1

    invoke-direct {v8, v1, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v7, v0

    invoke-direct {v6, v4, v3, v7, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 206
    const/4 v0, 0x0

    .line 209
    :try_start_bf
    iget-object v1, p0, Lcom/google/zxing/oned/UPCEANReader;->f:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->a(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v1

    .line 210
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->h:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v1}, Lcom/google/zxing/Result;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/zxing/Result;->a(Ljava/util/Map;)V

    .line 212
    invoke-virtual {v1}, Lcom/google/zxing/Result;->c()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/zxing/Result;->a([Lcom/google/zxing/ResultPoint;)V

    .line 213
    invoke-virtual {v1}, Lcom/google/zxing/Result;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_e6
    .catch Lcom/google/zxing/ReaderException; {:try_start_bf .. :try_end_e6} :catch_ff

    move-result v0

    move v3, v0

    .line 218
    :goto_e8
    if-nez p4, :cond_102

    const/4 v0, 0x0

    move-object v2, v0

    .line 220
    :goto_ec
    if-eqz v2, :cond_111

    .line 221
    const/4 v0, 0x0

    .line 222
    array-length v7, v2

    const/4 v1, 0x0

    :goto_f1
    if-ge v1, v7, :cond_f8

    aget v8, v2, v1

    .line 223
    if-ne v3, v8, :cond_10e

    .line 224
    const/4 v0, 0x1

    .line 228
    :cond_f8
    if-nez v0, :cond_111

    .line 229
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 214
    :catch_ff
    move-exception v1

    move v3, v0

    goto :goto_e8

    .line 218
    :cond_102
    sget-object v0, Lcom/google/zxing/DecodeHintType;->k:Lcom/google/zxing/DecodeHintType;

    .line 219
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    move-object v2, v0

    goto :goto_ec

    .line 222
    :cond_10e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f1

    .line 233
    :cond_111
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->h:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, v0, :cond_119

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->o:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v0, :cond_126

    .line 234
    :cond_119
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->g:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_126

    .line 236
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->g:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v1, v0}, Lcom/google/zxing/Result;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 240
    :cond_126
    return-object v6
.end method

.method a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 249
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/google/zxing/common/BitArray;I)[I
    .registers 5

    .prologue
    .line 286
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->a(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method abstract b()Lcom/google/zxing/BarcodeFormat;
.end method
