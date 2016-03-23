.class Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
.super Lcom/bitmapfun/util/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bitmapfun/util/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private gIsPNG:Z

.field private gOffsetY:I

.field private g_image_loading:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final progressBarReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bitmapfun/util/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZI)V
    .registers 8
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;
    .param p4, "image_loading"    # I
    .param p5, "isPNG"    # Z
    .param p6, "offset_y"    # I

    .prologue
    .line 394
    iput-object p1, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    invoke-direct {p0}, Lcom/bitmapfun/util/AsyncTask;-><init>()V

    .line 395
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 396
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->progressBarReference:Ljava/lang/ref/WeakReference;

    .line 397
    iput p4, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->g_image_loading:I

    .line 398
    iput-boolean p5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->gIsPNG:Z

    .line 399
    iput p6, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->gOffsetY:I

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .registers 4

    .prologue
    .line 523
    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 524
    .local v1, "imageView":Landroid/widget/ImageView;
    # invokes: Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/bitmapfun/util/ImageWorker;->access$500(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 526
    .local v0, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_f

    .line 530
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_e
    return-object v1

    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getAttachedProgressBar()Landroid/widget/ProgressBar;
    .registers 5

    .prologue
    .line 537
    iget-object v3, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 538
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->progressBarReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 539
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    # invokes: Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/bitmapfun/util/ImageWorker;->access$500(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 541
    .local v0, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_17

    .line 545
    .end local v2    # "progressBar":Landroid/widget/ProgressBar;
    :goto_16
    return-object v2

    .restart local v2    # "progressBar":Landroid/widget/ProgressBar;
    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 411
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    .line 412
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 417
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_d
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$100(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_14} :catch_100
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_122
    .catchall {:try_start_d .. :try_end_14} :catchall_120

    .line 418
    :goto_14
    :try_start_14
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    iget-boolean v5, v5, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    if-eqz v5, :cond_2c

    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_fd

    move-result v5

    if-nez v5, :cond_2c

    .line 420
    :try_start_20
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$100(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_29} :catch_2a
    .catchall {:try_start_20 .. :try_end_29} :catchall_fd

    goto :goto_14

    .line 421
    :catch_2a
    move-exception v5

    goto :goto_14

    .line 424
    :cond_2c
    :try_start_2c
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_fd

    .line 430
    :try_start_2d
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$200(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    if-eqz v5, :cond_8d

    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$300(Lcom/bitmapfun/util/ImageWorker;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 431
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$200(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_8d

    .line 433
    const-string/jumbo v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found image in disk cache{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_8d
    if-nez v0, :cond_e6

    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_e6

    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_e6

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$300(Lcom/bitmapfun/util/ImageWorker;)Z

    move-result v5

    if-nez v5, :cond_e6

    .line 442
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_e6

    .line 444
    const-string/jumbo v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finished download new image{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_e6
    if-eqz v0, :cond_fb

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$200(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    if-eqz v5, :cond_fb

    .line 453
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$200(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    iget-boolean v6, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->gIsPNG:Z

    invoke-virtual {v5, v1, v0, v6}, Lcom/bitmapfun/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_fb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d .. :try_end_fb} :catch_100
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_fb} :catch_122
    .catchall {:try_start_2d .. :try_end_fb} :catchall_120

    :cond_fb
    move-object v4, v0

    .line 470
    :goto_fc
    return-object v4

    .line 424
    :catchall_fd
    move-exception v5

    :try_start_fe
    monitor-exit v6
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    :try_start_ff
    throw v5
    :try_end_100
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ff .. :try_end_100} :catch_100
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_100} :catch_122
    .catchall {:try_start_ff .. :try_end_100} :catchall_120

    .line 465
    :catch_100
    move-exception v3

    .line 466
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_101
    const-string/jumbo v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(OutOfMemoryError|BitmapWorkerTask.doInBackground):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_101 .. :try_end_11f} :catchall_120

    goto :goto_fc

    .line 471
    .end local v3    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_120
    move-exception v4

    throw v4

    .line 468
    :catch_122
    move-exception v2

    .line 469
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_123
    const-string/jumbo v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(Exception|BitmapWorkerTask.doInBackground):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_123 .. :try_end_141} :catchall_120

    goto :goto_fc
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/bitmapfun/util/ImageWorker;->access$100(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 515
    :try_start_a
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/bitmapfun/util/ImageWorker;->access$100(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 516
    monitor-exit v1

    .line 517
    return-void

    .line 516
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 386
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v4}, Lcom/bitmapfun/util/ImageWorker;->access$300(Lcom/bitmapfun/util/ImageWorker;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 485
    :cond_e
    const/4 p1, 0x0

    .line 489
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 490
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedProgressBar()Landroid/widget/ProgressBar;

    move-result-object v3

    .line 491
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    if-eqz p1, :cond_29

    if-eqz v1, :cond_29

    .line 495
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    iget v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->g_image_loading:I

    # invokes: Lcom/bitmapfun/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    invoke-static {v4, v1, p1, v5}, Lcom/bitmapfun/util/ImageWorker;->access$400(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    .line 496
    if-eqz v3, :cond_29

    .line 497
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_29} :catch_4c
    .catchall {:try_start_f .. :try_end_29} :catchall_4a

    .line 509
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "progressBar":Landroid/widget/ProgressBar;
    :cond_29
    :goto_29
    return-void

    .line 500
    :catch_2a
    move-exception v2

    .line 501
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_2b
    const-string/jumbo v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(OutOfMemoryError|BitmapWorkerTask.onPostExecute):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_4a

    goto :goto_29

    .line 504
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_4a
    move-exception v4

    throw v4

    .line 502
    :catch_4c
    move-exception v0

    .line 503
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4d
    const-string/jumbo v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(Exception|BitmapWorkerTask.onPostExecute):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_4d .. :try_end_6b} :catchall_4a

    goto :goto_29
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 386
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
