.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 36
    return-void
.end method

.method private a(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I
    .registers 7

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v2

    .line 151
    new-array v3, v2, [I

    .line 152
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x1

    :goto_8
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c()I

    move-result v4

    if-ge v0, v4, :cond_25

    if-ge v1, v2, :cond_25

    .line 154
    invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b(I)I

    move-result v4

    if-nez v4, :cond_22

    .line 155
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(I)I

    move-result v4

    aput v4, v3, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 153
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 159
    :cond_25
    if-eq v1, v2, :cond_2c

    .line 160
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 162
    :cond_2c
    return-object v3
.end method

.method private a(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v2

    .line 169
    new-array v3, v2, [I

    .line 170
    const/4 v0, 0x1

    :goto_8
    if-gt v0, v2, :cond_1b

    .line 171
    sub-int v4, v2, v0

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 172
    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a(I)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d(II)I

    move-result v5

    aput v5, v3, v4

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 174
    :cond_1b
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 177
    array-length v3, p3

    .line 178
    new-array v4, v3, [I

    move v0, v1

    .line 179
    :goto_26
    if-ge v0, v3, :cond_4f

    .line 180
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v6, p3, v0

    invoke-virtual {v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(I)I

    move-result v5

    .line 181
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(II)I

    move-result v6

    .line 182
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(I)I

    move-result v5

    .line 183
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v7, v6, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d(II)I

    move-result v5

    aput v5, v4, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 185
    :cond_4f
    return-object v4
.end method

.method private a(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v1

    if-ge v0, v1, :cond_ae

    .line 108
    :goto_b
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    .line 112
    :goto_17
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v2

    div-int/lit8 v3, p3, 0x2

    if-lt v2, v3, :cond_8c

    .line 119
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 121
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 124
    :cond_2a
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    .line 125
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a(I)I

    move-result v3

    .line 126
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(I)I

    move-result v4

    move-object v3, v2

    move-object v2, p2

    .line 127
    :goto_40
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v6

    if-lt v5, v6, :cond_7a

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 128
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v6

    sub-int/2addr v5, v6

    .line 129
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a(I)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d(II)I

    move-result v6

    .line 130
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v7, v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 131
    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    goto :goto_40

    .line 134
    :cond_7a
    invoke-virtual {v3, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->c(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->c()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v1

    move-object p2, p1

    move-object p1, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 135
    goto :goto_17

    .line 137
    :cond_8c
    invoke-virtual {v0, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a(I)I

    move-result v1

    .line 138
    if-nez v1, :cond_97

    .line 139
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 142
    :cond_97
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(I)I

    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->c(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    .line 144
    invoke-virtual {p1, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->c(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v1

    .line 145
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    aput-object v0, v2, v8

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2

    :cond_ae
    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    goto/16 :goto_b
.end method


# virtual methods
.method public a([II[I)I
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v4, v0, p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 50
    new-array v5, p2, [I

    move v3, p2

    move v0, v2

    .line 52
    :goto_d
    if-lez v3, :cond_23

    .line 53
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b(I)I

    move-result v6

    .line 54
    sub-int v7, p2, v3

    aput v6, v5, v7

    .line 55
    if-eqz v6, :cond_20

    move v0, v1

    .line 52
    :cond_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 60
    :cond_23
    if-nez v0, :cond_26

    .line 94
    :goto_25
    return v2

    .line 64
    :cond_26
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    .line 65
    if-eqz p3, :cond_5b

    .line 66
    array-length v4, p3

    move-object v3, v0

    move v0, v2

    :goto_31
    if-ge v0, v4, :cond_5b

    aget v6, p3, v0

    .line 67
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    sub-int v6, v8, v6

    invoke-virtual {v7, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(I)I

    move-result v6

    .line 69
    new-instance v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v9, 0x2

    new-array v9, v9, [I

    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v10, v2, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(II)I

    move-result v6

    aput v6, v9, v2

    aput v1, v9, v1

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 70
    invoke-virtual {v3, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->c(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 74
    :cond_5b
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v0, v3, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 77
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 78
    invoke-virtual {v3, p2, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    invoke-direct {p0, v3, v0, p2}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    .line 79
    aget-object v3, v0, v2

    .line 80
    aget-object v0, v0, v1

    .line 84
    invoke-direct {p0, v3}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I

    move-result-object v1

    .line 85
    invoke-direct {p0, v0, v3, v1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I

    move-result-object v3

    move v0, v2

    .line 87
    :goto_79
    array-length v2, v1

    if-ge v0, v2, :cond_9e

    .line 88
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(I)I

    move-result v4

    sub-int/2addr v2, v4

    .line 89
    if-gez v2, :cond_8f

    .line 90
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 92
    :cond_8f
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v5, p1, v2

    aget v6, v3, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(II)I

    move-result v4

    aput v4, p1, v2

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 94
    :cond_9e
    array-length v2, v1

    goto :goto_25
.end method
