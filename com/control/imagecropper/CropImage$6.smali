.class Lcom/control/imagecropper/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/control/imagecropper/CropImage;->startFaceDetection()V
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
    iput-object p1, p0, Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/control/imagecropper/CropImage$6;)Lcom/control/imagecropper/CropImage;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 295
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 296
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/control/imagecropper/CropImage;->access$1(Lcom/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 297
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;

    # getter for: Lcom/control/imagecropper/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/control/imagecropper/CropImage;->access$6(Lcom/control/imagecropper/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/control/imagecropper/CropImage$6$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/control/imagecropper/CropImage$6$1;-><init>(Lcom/control/imagecropper/CropImage$6;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :try_start_1a
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 318
    iget-object v3, p0, Lcom/control/imagecropper/CropImage$6;->this$0:Lcom/control/imagecropper/CropImage;

    iget-object v3, v3, Lcom/control/imagecropper/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 319
    return-void

    .line 315
    :catch_25
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
