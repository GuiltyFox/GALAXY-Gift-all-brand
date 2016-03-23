.class Lcom/samsung/privilege/control/imagecropper/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->startFaceDetection()V
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
    .line 291
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 294
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 295
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$100(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    # getter for: Lcom/samsung/privilege/control/imagecropper/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/privilege/control/imagecropper/CropImage;->access$300(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    :try_start_1a
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 317
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->this$0:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v3, v3, Lcom/samsung/privilege/control/imagecropper/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 318
    return-void

    .line 314
    :catch_25
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
