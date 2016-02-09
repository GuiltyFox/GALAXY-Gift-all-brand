.class Lcom/control/imagecropper/CropImage$6$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/control/imagecropper/CropImage$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/control/imagecropper/CropImage$6;

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/control/imagecropper/CropImage$6;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    iput-object p2, p0, Lcom/control/imagecropper/CropImage$6$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/control/imagecropper/CropImage$6$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    # getter for: Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage$6;->access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;

    move-result-object v1

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4a

    .line 301
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    # getter for: Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage$6;->access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;

    move-result-object v0

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$6$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/control/imagecropper/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 302
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    # getter for: Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage$6;->access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;

    move-result-object v0

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 303
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    # getter for: Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage$6;->access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;

    move-result-object v0

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_3f
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    # getter for: Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage$6;->access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/control/imagecropper/CropImage$6$1;->val$b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/control/imagecropper/CropImage;->access$8(Lcom/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V

    .line 307
    :cond_4a
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    # getter for: Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage$6;->access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;

    move-result-object v0

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/control/imagecropper/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6b

    .line 308
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->this$1:Lcom/control/imagecropper/CropImage$6;

    # getter for: Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage$6;->access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;

    move-result-object v0

    # getter for: Lcom/control/imagecropper/CropImage;->mImageView:Lcom/control/imagecropper/CropImageView;
    invoke-static {v0}, Lcom/control/imagecropper/CropImage;->access$0(Lcom/control/imagecropper/CropImage;)Lcom/control/imagecropper/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/control/imagecropper/CropImageView;->center(ZZ)V

    .line 310
    :cond_6b
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 311
    return-void
.end method
