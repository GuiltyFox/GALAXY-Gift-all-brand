.class Lcom/samsung/privilege/control/imagecropper/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$4;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$4;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$4;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 238
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$4;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$4;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(Lcom/samsung/privilege/control/imagecropper/RotateBitmap;Z)V

    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$4;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 241
    return-void
.end method
