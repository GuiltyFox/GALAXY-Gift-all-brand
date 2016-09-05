.class Lcom/samsung/privilege/control/imagecropper/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/imagecropper/CropImage;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/imagecropper/CropImage;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 2

    .prologue
    .line 292
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 295
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 296
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-static {v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->d(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage$5$1;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :try_start_1a
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 318
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage$5;->a:Lcom/samsung/privilege/control/imagecropper/CropImage;

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 319
    return-void

    .line 315
    :catch_25
    move-exception v0

    .line 316
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
