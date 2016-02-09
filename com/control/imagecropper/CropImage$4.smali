.class Lcom/control/imagecropper/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/control/imagecropper/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/control/imagecropper/CropImage;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/CropImage$4;->this$0:Lcom/control/imagecropper/CropImage;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$4;->this$0:Lcom/control/imagecropper/CropImage;

    iget-object v2, p0, Lcom/control/imagecropper/CropImage$4;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, -0x3d4c0000

    invoke-static {v2, v3}, Lcom/control/imagecropper/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/control/imagecropper/CropImage;->access$8(Lcom/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V

    .line 226
    new-instance v0, Lcom/control/imagecropper/RotateBitmap;

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$4;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/control/imagecropper/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    .local v0, "rotateBitmap":Lcom/control/imagecropper/RotateBitmap;
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$4;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/control/imagecropper/CropImageView;->setImageRotateBitmapResetBase(Lcom/control/imagecropper/RotateBitmap;Z)V

    .line 228
    iget-object v1, p0, Lcom/control/imagecropper/CropImage$4;->this$0:Lcom/control/imagecropper/CropImage;

    iget-object v1, v1, Lcom/control/imagecropper/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 229
    return-void
.end method
