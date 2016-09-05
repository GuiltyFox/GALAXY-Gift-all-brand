.class public Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "FitCenter.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 24
    invoke-static {p2, p1, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string/jumbo v0, "FitCenter.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
