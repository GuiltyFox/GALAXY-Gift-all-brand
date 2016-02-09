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
    .line 393
    iput-object p1, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    invoke-direct {p0}, Lcom/bitmapfun/util/AsyncTask;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 395
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->progressBarReference:Ljava/lang/ref/WeakReference;

    .line 396
    iput p4, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->g_image_loading:I

    .line 397
    iput-boolean p5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->gIsPNG:Z

    .line 398
    iput p6, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->gOffsetY:I

    .line 399
    return-void
.end method

.method static synthetic access$3(Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .registers 4

    .prologue
    .line 522
    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 523
    .local v1, "imageView":Landroid/widget/ImageView;
    # invokes: Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/bitmapfun/util/ImageWorker;->access$4(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 525
    .local v0, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_f

    .line 529
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
    .line 536
    iget-object v3, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 537
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->progressBarReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 538
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    # invokes: Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/bitmapfun/util/ImageWorker;->access$4(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 540
    .local v0, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_17

    .line 544
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

    .line 410
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    .line 411
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 416
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_d
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$0(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_14} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_10c

    .line 417
    :goto_14
    :try_start_14
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    iget-boolean v5, v5, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    if-eqz v5, :cond_20

    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 416
    :cond_20
    monitor-exit v6
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_ef

    .line 429
    :try_start_21
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$1(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    if-eqz v5, :cond_79

    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_79

    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_79

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$2(Lcom/bitmapfun/util/ImageWorker;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 430
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$1(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_79

    .line 432
    const-string v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "found image in disk cache{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_79
    if-nez v0, :cond_ca

    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_ca

    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$2(Lcom/bitmapfun/util/ImageWorker;)Z

    move-result v5

    if-nez v5, :cond_ca

    .line 441
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_ca

    .line 443
    const-string v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "finished download new image{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_ca
    if-eqz v0, :cond_df

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$1(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    if-eqz v5, :cond_df

    .line 452
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$1(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v5

    iget-boolean v6, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->gIsPNG:Z

    invoke-virtual {v5, v1, v0, v6}, Lcom/bitmapfun/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_df
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_df} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_df} :catch_10c

    :cond_df
    move-object v4, v0

    .line 469
    :goto_e0
    return-object v4

    .line 419
    :cond_e1
    :try_start_e1
    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/bitmapfun/util/ImageWorker;->access$0(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_ea
    .catch Ljava/lang/InterruptedException; {:try_start_e1 .. :try_end_ea} :catch_ec
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_ef

    goto/16 :goto_14

    .line 420
    :catch_ec
    move-exception v5

    goto/16 :goto_14

    .line 416
    :catchall_ef
    move-exception v5

    :try_start_f0
    monitor-exit v6
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v5
    :try_end_f2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f1 .. :try_end_f2} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f2} :catch_10c

    .line 464
    :catch_f2
    move-exception v3

    .line 465
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(OutOfMemoryError|BitmapWorkerTask.doInBackground):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 467
    .end local v3    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_10c
    move-exception v2

    .line 468
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "ImageWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|BitmapWorkerTask.doInBackground):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/bitmapfun/util/ImageWorker;->access$0(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 514
    :try_start_a
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/bitmapfun/util/ImageWorker;->access$0(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 513
    monitor-exit v1

    .line 516
    return-void

    .line 513
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
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    # getter for: Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v4}, Lcom/bitmapfun/util/ImageWorker;->access$2(Lcom/bitmapfun/util/ImageWorker;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 484
    :cond_e
    const/4 p1, 0x0

    .line 488
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 489
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedProgressBar()Landroid/widget/ProgressBar;

    move-result-object v3

    .line 490
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    if-eqz p1, :cond_29

    if-eqz v1, :cond_29

    .line 494
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    iget v5, p0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->g_image_loading:I

    # invokes: Lcom/bitmapfun/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    invoke-static {v4, v1, p1, v5}, Lcom/bitmapfun/util/ImageWorker;->access$3(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    .line 495
    if-eqz v3, :cond_29

    .line 496
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_29} :catch_44

    .line 508
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "progressBar":Landroid/widget/ProgressBar;
    :cond_29
    :goto_29
    return-void

    .line 499
    :catch_2a
    move-exception v2

    .line 500
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    const-string v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(OutOfMemoryError|BitmapWorkerTask.onPostExecute):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 501
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_44
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|BitmapWorkerTask.onPostExecute):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
