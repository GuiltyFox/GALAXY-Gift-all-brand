.class public Lcom/bzbs/marketplace/control/GlideCircleTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "GlideCircleTransform.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 15
    invoke-static {p2}, Lcom/bzbs/marketplace/control/ImageUtils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string/jumbo v0, "Glide_Circle_Transformation"

    return-object v0
.end method
