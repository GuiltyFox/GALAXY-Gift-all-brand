.class Landroid/support/graphics/drawable/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# direct methods
.method private static a(Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 162
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    .line 174
    :cond_20
    return p1

    .line 172
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILandroid/support/graphics/drawable/PathParser$ExtractFloatResult;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 246
    .line 248
    iput-boolean v1, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->b:Z

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, p1

    .line 251
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_18

    .line 254
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 255
    sparse-switch v6, :sswitch_data_36

    :cond_15
    move v0, v1

    .line 281
    :goto_16
    if-eqz v3, :cond_33

    .line 287
    :cond_18
    iput v4, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->a:I

    .line 288
    return-void

    :sswitch_1b
    move v0, v1

    move v3, v5

    .line 259
    goto :goto_16

    .line 262
    :sswitch_1e
    if-eq v4, p1, :cond_15

    if-nez v0, :cond_15

    .line 264
    iput-boolean v5, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->b:Z

    move v0, v1

    move v3, v5

    goto :goto_16

    .line 268
    :sswitch_27
    if-nez v2, :cond_2c

    move v0, v1

    move v2, v5

    .line 269
    goto :goto_16

    .line 273
    :cond_2c
    iput-boolean v5, p2, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->b:Z

    move v0, v1

    move v3, v5

    .line 275
    goto :goto_16

    :sswitch_31
    move v0, v5

    .line 278
    goto :goto_16

    .line 251
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 255
    :sswitch_data_36
    .sparse-switch
        0x20 -> :sswitch_1b
        0x2c -> :sswitch_1b
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_27
        0x45 -> :sswitch_31
        0x65 -> :sswitch_31
    .end sparse-switch
.end method

.method private static a(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/graphics/drawable/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method static a([FII)[F
    .registers 6

    .prologue
    .line 44
    if-le p1, p2, :cond_8

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_8
    array-length v0, p0

    .line 48
    if-ltz p1, :cond_d

    if-le p1, v0, :cond_13

    .line 49
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 51
    :cond_13
    sub-int v1, p2, p1

    .line 52
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    new-array v1, v1, [F

    .line 54
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-object v1
.end method

.method public static a(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 81
    if-nez p0, :cond_6

    .line 82
    const/4 v0, 0x0

    .line 102
    :goto_5
    return-object v0

    .line 87
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    .line 88
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_34

    .line 89
    invoke-static {p0, v0}, Landroid/support/graphics/drawable/PathParser;->a(Ljava/lang/String;I)I

    move-result v4

    .line 90
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30

    .line 92
    invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->b(Ljava/lang/String;)[F

    move-result-object v2

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0, v2}, Landroid/support/graphics/drawable/PathParser;->a(Ljava/util/ArrayList;C[F)V

    .line 97
    :cond_30
    add-int/lit8 v0, v4, 0x1

    move v2, v4

    .line 98
    goto :goto_d

    .line 99
    :cond_34
    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_46

    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-array v1, v3, [F

    invoke-static {v5, v0, v1}, Landroid/support/graphics/drawable/PathParser;->a(Ljava/util/ArrayList;C[F)V

    .line 102
    :cond_46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    goto :goto_5
.end method

.method public static a([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .registers 5

    .prologue
    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    .line 117
    :goto_3
    return-object v0

    .line 113
    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 114
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_17

    .line 115
    new-instance v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move-object v0, v1

    .line 117
    goto :goto_3
.end method

.method private static b(Ljava/lang/String;)[F
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7a

    if-ne v0, v3, :cond_1a

    move v0, v1

    :goto_b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1c

    move v3, v1

    :goto_14
    or-int/2addr v0, v3

    if-eqz v0, :cond_1e

    .line 200
    new-array v0, v2, [F

    .line 230
    :goto_19
    return-object v0

    :cond_1a
    move v0, v2

    .line 199
    goto :goto_b

    :cond_1c
    move v3, v2

    goto :goto_14

    .line 203
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [F

    .line 208
    new-instance v5, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;

    invoke-direct {v5}, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;-><init>()V

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v1

    move v1, v2

    move v2, v7

    .line 214
    :goto_30
    if-ge v2, v6, :cond_51

    .line 215
    invoke-static {p0, v2, v5}, Landroid/support/graphics/drawable/PathParser;->a(Ljava/lang/String;ILandroid/support/graphics/drawable/PathParser$ExtractFloatResult;)V

    .line 216
    iget v3, v5, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->a:I

    .line 218
    if-ge v2, v3, :cond_79

    .line 219
    add-int/lit8 v0, v1, 0x1

    .line 220
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v4, v1

    .line 223
    :goto_45
    iget-boolean v1, v5, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;->b:Z

    if-eqz v1, :cond_4c

    move v2, v3

    move v1, v0

    .line 225
    goto :goto_30

    .line 227
    :cond_4c
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v0

    goto :goto_30

    .line 230
    :cond_51
    const/4 v0, 0x0

    invoke-static {v4, v0, v1}, Landroid/support/graphics/drawable/PathParser;->a([FII)[F
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_55} :catch_57

    move-result-object v0

    goto :goto_19

    .line 231
    :catch_57
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_79
    move v0, v1

    goto :goto_45
.end method
