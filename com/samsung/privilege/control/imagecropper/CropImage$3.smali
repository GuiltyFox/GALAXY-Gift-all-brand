.class Lcom/samsung/privilege/control/imagecropper/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$3;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$3;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$3;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$100(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, -0x3d4c0000

    invoke-static {v2, v3}, Lcom/samsung/privilege/control/imagecropper/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$102(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 226
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$3;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$100(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/privilege/control/imagecropper/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    .local v0, "rotateBitmap":Lcom/samsung/privilege/control/imagecropper/RotateBitmap;
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$3;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$200(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->setImageRotateBitmapResetBase(Lcom/samsung/privilege/control/imagecropper/RotateBitmap;Z)V

    .line 228
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$3;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 229
    return-void
.end method
