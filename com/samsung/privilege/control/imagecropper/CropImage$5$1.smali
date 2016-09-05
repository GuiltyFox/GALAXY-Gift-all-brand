.class Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage$5;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iput-object p2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iget-object v1, v1, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_40

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_40

    .line 301
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 302
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 303
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_37
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 307
    :cond_40
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5d

    .line 308
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->c:Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(ZZ)V

    .line 310
    :cond_5d
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 311
    return-void
.end method
