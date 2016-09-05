.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private b:I

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
    .registers 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 196
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .registers 3

    .prologue
    .line 189
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->b:I

    .line 190
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 205
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    if-eqz v1, :cond_16

    .line 206
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    .line 207
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->b:I

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_17

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_16

    :goto_15
    const/4 v0, 0x1

    .line 209
    :cond_16
    return v0

    .line 207
    :cond_17
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_15
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 214
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->b:I

    .line 215
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v1

    .line 216
    return v0

    .line 215
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 200
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->b:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
