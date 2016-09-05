.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static a:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->a:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/zxing/common/GridSampler;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->a:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method protected static a(Lcom/google/zxing/common/BitMatrix;[F)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->f()I

    move-result v4

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v5

    move v0, v1

    move v2, v3

    .line 125
    :goto_e
    array-length v6, p1

    if-ge v0, v6, :cond_4b

    if-eqz v2, :cond_4b

    .line 126
    aget v2, p1, v0

    float-to-int v2, v2

    .line 127
    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    .line 128
    if-lt v2, v7, :cond_23

    if-gt v2, v4, :cond_23

    if-lt v6, v7, :cond_23

    if-le v6, v5, :cond_28

    .line 129
    :cond_23
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 132
    :cond_28
    if-ne v2, v7, :cond_37

    .line 133
    aput v8, p1, v0

    move v2, v3

    .line 139
    :goto_2d
    if-ne v6, v7, :cond_40

    .line 140
    add-int/lit8 v2, v0, 0x1

    aput v8, p1, v2

    move v2, v3

    .line 125
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 135
    :cond_37
    if-ne v2, v4, :cond_8f

    .line 136
    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    aput v2, p1, v0

    move v2, v3

    .line 137
    goto :goto_2d

    .line 142
    :cond_40
    if-ne v6, v5, :cond_34

    .line 143
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    move v2, v3

    .line 144
    goto :goto_34

    .line 149
    :cond_4b
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move v0, v3

    :goto_50
    if-ltz v2, :cond_8c

    if-eqz v0, :cond_8c

    .line 150
    aget v0, p1, v2

    float-to-int v0, v0

    .line 151
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    .line 152
    if-lt v0, v7, :cond_64

    if-gt v0, v4, :cond_64

    if-lt v6, v7, :cond_64

    if-le v6, v5, :cond_69

    .line 153
    :cond_64
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 156
    :cond_69
    if-ne v0, v7, :cond_78

    .line 157
    aput v8, p1, v2

    move v0, v3

    .line 163
    :goto_6e
    if-ne v6, v7, :cond_81

    .line 164
    add-int/lit8 v0, v2, 0x1

    aput v8, p1, v0

    move v0, v3

    .line 149
    :cond_75
    :goto_75
    add-int/lit8 v2, v2, -0x2

    goto :goto_50

    .line 159
    :cond_78
    if-ne v0, v4, :cond_8d

    .line 160
    add-int/lit8 v0, v4, -0x1

    int-to-float v0, v0

    aput v0, p1, v2

    move v0, v3

    .line 161
    goto :goto_6e

    .line 166
    :cond_81
    if-ne v6, v5, :cond_75

    .line 167
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v0

    move v0, v3

    .line 168
    goto :goto_75

    .line 171
    :cond_8c
    return-void

    :cond_8d
    move v0, v1

    goto :goto_6e

    :cond_8f
    move v2, v1

    goto :goto_2d
.end method


# virtual methods
.method public abstract a(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
.end method

.method public abstract a(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
.end method
