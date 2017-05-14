.class final Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;
.super Ljava/lang/Object;
.source "HpackDraft08.java"


# instance fields
.field a:[Lcom/koushikdutta/async/http/spdy/Header;

.field b:I

.field c:I

.field d:Lcom/koushikdutta/async/http/spdy/BitArray;

.field e:Lcom/koushikdutta/async/http/spdy/BitArray;

.field f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/koushikdutta/async/ByteBufferList;

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h:Lcom/koushikdutta/async/ByteBufferList;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/koushikdutta/async/http/spdy/Header;

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    .line 122
    iput v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    .line 128
    new-instance v0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 133
    new-instance v0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 134
    iput v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    .line 137
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->i:I

    .line 138
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    .line 139
    return-void
.end method

.method private a(ILcom/koushikdutta/async/http/spdy/Header;)V
    .registers 9

    .prologue
    const/4 v3, -0x1

    .line 334
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/Header;->j:I

    .line 335
    if-eq p1, v3, :cond_a3

    .line 336
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d(I)I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Header;->j:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 340
    :goto_11
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    if-le v1, v0, :cond_1e

    .line 341
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f()V

    .line 343
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :goto_1d
    return-void

    .line 348
    :cond_1e
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    sub-int/2addr v0, v2

    .line 349
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b(I)I

    move-result v0

    .line 351
    if-ne p1, v3, :cond_93

    .line 352
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v2, v2

    if-le v0, v2, :cond_78

    .line 353
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [Lcom/koushikdutta/async/http/spdy/Header;

    .line 354
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v4, v4

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v5, v5

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    array-length v0, v2

    const/16 v3, 0x40

    if-ne v0, v3, :cond_5f

    .line 356
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    check-cast v0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->b()Lcom/koushikdutta/async/http/spdy/BitArray;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 357
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    check-cast v0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->b()Lcom/koushikdutta/async/http/spdy/BitArray;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    .line 360
    :cond_5f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v3, v3

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/spdy/BitArray;->d(I)V

    .line 361
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v3, v3

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/spdy/BitArray;->d(I)V

    .line 362
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    .line 363
    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    .line 365
    :cond_78
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    .line 366
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v2, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->a(I)V

    .line 367
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    aput-object p2, v2, v0

    .line 368
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    .line 374
    :goto_8d
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    goto :goto_1d

    .line 370
    :cond_93
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 371
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v2, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->a(I)V

    .line 372
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    aput-object p2, v2, v0

    goto :goto_8d

    :cond_a3
    move v1, v0

    goto/16 :goto_11
.end method

.method private b(I)I
    .registers 8

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    if-lez p1, :cond_4c

    .line 187
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 188
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Header;->j:I

    sub-int/2addr p1, v2

    .line 189
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Header;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    .line 190
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 193
    :cond_2b
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/spdy/BitArray;->d(I)V

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/spdy/BitArray;->d(I)V

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    iget v4, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    .line 199
    :cond_4c
    return v1
.end method

.method private c(I)V
    .registers 6

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 268
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    sub-int v0, p1, v0

    .line 269
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->a()[Lcom/koushikdutta/async/http/spdy/Header;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2f

    .line 270
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_2f
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->a()[Lcom/koushikdutta/async/http/spdy/Header;

    move-result-object v1

    aget-object v0, v1, v0

    .line 273
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    if-nez v1, :cond_3f

    .line 274
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_3e
    return-void

    .line 276
    :cond_3f
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(ILcom/koushikdutta/async/http/spdy/Header;)V

    goto :goto_3e

    .line 279
    :cond_44
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d(I)I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->c(I)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 281
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->a(I)V

    .line 284
    :cond_5e
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->b(I)V

    goto :goto_3e
.end method

.method private d(I)I
    .registers 3

    .prologue
    .line 290
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 163
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    if-ge v0, v1, :cond_d

    .line 164
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    if-nez v0, :cond_e

    .line 165
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f()V

    .line 170
    :cond_d
    :goto_d
    return-void

    .line 167
    :cond_e
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b(I)I

    goto :goto_d
.end method

.method private e(I)V
    .registers 6

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g(I)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g()V

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    .line 176
    iput v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    .line 177
    iput v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f:I

    .line 178
    return-void
.end method

.method private f(I)V
    .registers 6

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g(I)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 309
    const/4 v2, -0x1

    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(ILcom/koushikdutta/async/http/spdy/Header;)V

    .line 310
    return-void
.end method

.method private g(I)Lcom/koushikdutta/async/http/spdy/ByteString;
    .registers 4

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 320
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->a()[Lcom/koushikdutta/async/http/spdy/Header;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 322
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    goto :goto_12
.end method

.method private g()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->a()V

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->a()V

    .line 245
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->a(Lcom/koushikdutta/async/http/spdy/ByteString;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method private h(I)Z
    .registers 3

    .prologue
    .line 327
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private i()V
    .registers 5

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08;->a(Lcom/koushikdutta/async/http/spdy/ByteString;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v1

    .line 315
    const/4 v2, -0x1

    new-instance v3, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(ILcom/koushikdutta/async/http/spdy/Header;)V

    .line 316
    return-void
.end method

.method private j()I
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a(II)I
    .registers 6

    .prologue
    .line 382
    and-int v0, p1, p2

    .line 383
    if-ge v0, p2, :cond_5

    .line 400
    :goto_4
    return v0

    .line 389
    :cond_5
    const/4 v0, 0x0

    .line 391
    :goto_6
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j()I

    move-result v1

    .line 392
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_15

    .line 393
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 394
    add-int/lit8 v0, v0, 0x7

    goto :goto_6

    .line 396
    :cond_15
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 397
    goto :goto_4
.end method

.method a()V
    .registers 8

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    const/16 v4, 0x10

    const/16 v3, 0xf

    .line 208
    :goto_8
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 210
    if-ne v0, v6, :cond_23

    .line 211
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_23
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v6, :cond_33

    .line 213
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(II)I

    move-result v0

    .line 214
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c(I)V

    goto :goto_8

    .line 215
    :cond_33
    if-ne v0, v5, :cond_39

    .line 216
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->i()V

    goto :goto_8

    .line 217
    :cond_39
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v5, :cond_49

    .line 218
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(II)I

    move-result v0

    .line 219
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->f(I)V

    goto :goto_8

    .line 220
    :cond_49
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_a6

    .line 221
    and-int/lit8 v1, v0, 0x10

    if-ne v1, v4, :cond_75

    .line 222
    and-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_71

    .line 223
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid header table state change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_71
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g()V

    goto :goto_8

    .line 226
    :cond_75
    invoke-virtual {p0, v0, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(II)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    .line 227
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    if-ltz v0, :cond_85

    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->i:I

    if-le v0, v1, :cond_a1

    .line 229
    :cond_85
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid header table byte count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_a1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e()V

    goto/16 :goto_8

    .line 233
    :cond_a6
    if-eq v0, v4, :cond_aa

    if-nez v0, :cond_af

    .line 234
    :cond_aa
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h()V

    goto/16 :goto_8

    .line 236
    :cond_af
    invoke-virtual {p0, v0, v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(II)I

    move-result v0

    .line 237
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e(I)V

    goto/16 :goto_8

    .line 240
    :cond_ba
    return-void
.end method

.method a(I)V
    .registers 3

    .prologue
    .line 157
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->i:I

    .line 158
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->i:I

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j:I

    .line 159
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e()V

    .line 160
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 143
    return-void
.end method

.method b()V
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b:I

    if-eq v0, v1, :cond_25

    .line 249
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->d:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->c(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/BitArray;->c(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 250
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a:[Lcom/koushikdutta/async/http/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 253
    :cond_25
    return-void
.end method

.method c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 262
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->e:Lcom/koushikdutta/async/http/spdy/BitArray;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/spdy/BitArray;->a()V

    .line 263
    return-object v0
.end method

.method d()Lcom/koushikdutta/async/http/spdy/ByteString;
    .registers 4

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->j()I

    move-result v1

    .line 408
    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_26

    const/4 v0, 0x1

    .line 409
    :goto_b
    const/16 v2, 0x7f

    invoke-virtual {p0, v1, v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(II)I

    move-result v1

    .line 411
    if-eqz v0, :cond_28

    .line 412
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Huffman;->a()Lcom/koushikdutta/async/http/spdy/Huffman;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/Huffman;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 414
    :goto_25
    return-object v0

    .line 408
    :cond_26
    const/4 v0, 0x0

    goto :goto_b

    .line 414
    :cond_28
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    goto :goto_25
.end method
