.class Lcom/bumptech/glide/gifencoder/LZWEncoder;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:[I

.field f:[I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:[I

.field p:I

.field q:[B

.field private r:I

.field private s:I

.field private t:[B

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method constructor <init>(II[BI)V
    .registers 8

    .prologue
    const/16 v2, 0x138b

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0xc

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b:I

    .line 52
    const/16 v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->d:I

    .line 54
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->e:[I

    .line 56
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->f:[I

    .line 58
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g:I

    .line 60
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->h:I

    .line 64
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->i:Z

    .line 99
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    .line 101
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    .line 103
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->o:[I

    .line 110
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->q:[B

    .line 114
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->r:I

    .line 115
    iput p2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->s:I

    .line 116
    iput-object p3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->t:[B

    .line 117
    const/4 v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->u:I

    .line 118
    return-void

    .line 103
    nop

    :array_3e
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private a()I
    .registers 4

    .prologue
    .line 245
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->v:I

    if-nez v0, :cond_6

    .line 246
    const/4 v0, -0x1

    .line 252
    :goto_5
    return v0

    .line 248
    :cond_6
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->v:I

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->t:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->w:I

    aget-byte v0, v0, v1

    .line 252
    and-int/lit16 v0, v0, 0xff

    goto :goto_5
.end method


# virtual methods
.method a(BLjava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->q:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    aput-byte p1, v0, v1

    .line 124
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_13

    .line 125
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->c(Ljava/io/OutputStream;)V

    .line 126
    :cond_13
    return-void
.end method

.method a(I)V
    .registers 5

    .prologue
    .line 141
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 142
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->e:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_b
    return-void
.end method

.method a(ILjava/io/OutputStream;)V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 155
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->j:I

    .line 158
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->i:Z

    .line 159
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->j:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    .line 160
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->c:I

    .line 162
    add-int/lit8 v0, p1, -0x1

    shl-int v0, v4, v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->k:I

    .line 163
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->l:I

    .line 164
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->h:I

    .line 166
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a()I

    move-result v0

    .line 171
    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g:I

    :goto_2c
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_35

    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 171
    mul-int/lit8 v2, v2, 0x2

    goto :goto_2c

    .line 173
    :cond_35
    rsub-int/lit8 v5, v1, 0x8

    .line 175
    iget v6, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g:I

    .line 176
    invoke-virtual {p0, v6}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a(I)V

    .line 178
    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->k:I

    invoke-virtual {p0, v1, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(ILjava/io/OutputStream;)V

    .line 181
    :goto_41
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9a

    .line 182
    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b:I

    shl-int v2, v1, v2

    add-int v7, v2, v0

    .line 183
    shl-int v2, v1, v5

    xor-int/2addr v2, v0

    .line 185
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->e:[I

    aget v3, v3, v2

    if-ne v3, v7, :cond_5c

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->f:[I

    aget v0, v0, v2

    goto :goto_41

    .line 188
    :cond_5c
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->e:[I

    aget v3, v3, v2

    if-ltz v3, :cond_7c

    .line 190
    sub-int v3, v6, v2

    .line 191
    if-nez v2, :cond_67

    move v3, v4

    .line 194
    :cond_67
    sub-int/2addr v2, v3

    if-gez v2, :cond_6b

    .line 195
    add-int/2addr v2, v6

    .line 197
    :cond_6b
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->e:[I

    aget v8, v8, v2

    if-ne v8, v7, :cond_76

    .line 198
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->f:[I

    aget v0, v0, v2

    goto :goto_41

    .line 201
    :cond_76
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->e:[I

    aget v8, v8, v2

    if-gez v8, :cond_67

    .line 203
    :cond_7c
    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(ILjava/io/OutputStream;)V

    .line 205
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->h:I

    iget v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->d:I

    if-ge v0, v3, :cond_95

    .line 206
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->f:[I

    iget v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->h:I

    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->h:I

    aput v3, v0, v2

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->e:[I

    aput v7, v0, v2

    move v0, v1

    goto :goto_41

    .line 209
    :cond_95
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a(Ljava/io/OutputStream;)V

    move v0, v1

    goto :goto_41

    .line 212
    :cond_9a
    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(ILjava/io/OutputStream;)V

    .line 213
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->l:I

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(ILjava/io/OutputStream;)V

    .line 214
    return-void
.end method

.method a(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a(I)V

    .line 133
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->k:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->h:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->i:Z

    .line 136
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->k:I

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(ILjava/io/OutputStream;)V

    .line 137
    return-void
.end method

.method final b(I)I
    .registers 3

    .prologue
    .line 238
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method b(ILjava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 256
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->o:[I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    .line 258
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    if-lez v0, :cond_3a

    .line 259
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    .line 263
    :goto_18
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    .line 265
    :goto_1f
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3d

    .line 266
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a(BLjava/io/OutputStream;)V

    .line 267
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    .line 268
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    goto :goto_1f

    .line 261
    :cond_3a
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    goto :goto_18

    .line 273
    :cond_3d
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->h:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->c:I

    if-gt v0, v1, :cond_47

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->i:Z

    if-eqz v0, :cond_58

    .line 274
    :cond_47
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->i:Z

    if-eqz v0, :cond_75

    .line 275
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->j:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->c:I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->i:Z

    .line 286
    :cond_58
    :goto_58
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->l:I

    if-ne p1, v0, :cond_92

    .line 288
    :goto_5c
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    if-lez v0, :cond_8f

    .line 289
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a(BLjava/io/OutputStream;)V

    .line 290
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->m:I

    .line 291
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n:I

    goto :goto_5c

    .line 278
    :cond_75
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    .line 279
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b:I

    if-ne v0, v1, :cond_86

    .line 280
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->d:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->c:I

    goto :goto_58

    .line 282
    :cond_86
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->c:I

    goto :goto_58

    .line 294
    :cond_8f
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->c(Ljava/io/OutputStream;)V

    .line 296
    :cond_92
    return-void
.end method

.method b(Ljava/io/OutputStream;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 218
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->u:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 220
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->r:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->s:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->v:I

    .line 221
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->w:I

    .line 223
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->u:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a(ILjava/io/OutputStream;)V

    .line 225
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 226
    return-void
.end method

.method c(Ljava/io/OutputStream;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 230
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    if-lez v0, :cond_13

    .line 231
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->q:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->p:I

    .line 235
    :cond_13
    return-void
.end method
