.class public Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "CenterCrop.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_a
    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    invoke-static {v0, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    if-eqz v0, :cond_1f

    if-eq v0, v1, :cond_1f

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_1f
    return-object v1

    .line 28
    :cond_20
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_a
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string/jumbo v0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
