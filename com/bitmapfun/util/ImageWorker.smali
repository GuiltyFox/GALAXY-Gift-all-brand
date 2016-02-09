.class public abstract Lcom/bitmapfun/util/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;,
        Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;,
        Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;
    }
.end annotation


# static fields
.field public static FADE_IN_TIME:I = 0x0

.field public static final IMAGE_LOADING_DEFAULT:I

.field public static final IMAGE_LOADING_TRANS:I

.field private static final MESSAGE_CLEAR:I = 0x0

.field private static final MESSAGE_CLOSE:I = 0x3

.field private static final MESSAGE_FLUSH:I = 0x2

.field private static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageWorker"


# instance fields
.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mImageCache:Lcom/bitmapfun/util/ImageCache;

.field private mImageCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

.field private mLoadingBitmapDefault:Landroid/graphics/Bitmap;

.field private mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

.field protected mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/16 v0, 0xc8

    sput v0, Lcom/bitmapfun/util/ImageWorker;->FADE_IN_TIME:I

    .line 61
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_pixel100:I

    sput v0, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_DEFAULT:I

    .line 62
    sget v0, Lic/buzzebeeslib/R$drawable;->t1_1:I

    sput v0, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    .line 50
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    .line 51
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bitmapfun/util/ImageWorker;)Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$3(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .registers 4

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/bitmapfun/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$4(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .registers 2

    .prologue
    .line 371
    invoke-static {p0}, Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Z
    .registers 7
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v2, 0x1

    .line 349
    invoke-static {p1}, Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 351
    .local v1, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_16

    .line 352
    # getter for: Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->access$3(Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, "bitmapData":Ljava/lang/Object;
    if-eqz v0, :cond_13

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 354
    :cond_13
    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 363
    .end local v0    # "bitmapData":Ljava/lang/Object;
    :cond_16
    :goto_16
    return v2

    .line 360
    .restart local v0    # "bitmapData":Ljava/lang/Object;
    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .registers 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 335
    invoke-static {p0}, Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 336
    .local v0, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-eqz v0, :cond_a

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 343
    :cond_a
    return-void
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .registers 4
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 372
    if-eqz p0, :cond_12

    .line 373
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 374
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 375
    check-cast v0, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    .line 376
    .local v0, "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 379
    .end local v0    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_11
    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .registers 11
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "image_loading"    # I

    .prologue
    .line 572
    :try_start_0
    iget-boolean v3, p0, Lcom/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    if-eqz v3, :cond_65

    .line 574
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, 0x106000d

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v5, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 576
    .local v2, "td":Landroid/graphics/drawable/TransitionDrawable;
    sget v3, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    if-ne p3, v3, :cond_3e

    .line 577
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    :goto_31
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    sget v3, Lcom/bitmapfun/util/ImageWorker;->FADE_IN_TIME:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 611
    .end local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :goto_3d
    return-void

    .line 579
    .restart local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_3e
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_7f

    goto :goto_31

    .line 602
    .end local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :catch_4b
    move-exception v1

    .line 603
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(OutOfMemoryError|setImageBitmap):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 588
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_65
    if-eqz p1, :cond_6b

    .line 589
    const/4 v3, 0x0

    :try_start_68
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    :cond_6b
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    if-eqz p2, :cond_7a

    .line 593
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 594
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 596
    :cond_79
    const/4 p2, 0x0

    .line 600
    :cond_7a
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_7e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_7e} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7e} :catch_7f

    goto :goto_3d

    .line 604
    :catch_7f
    move-exception v0

    .line 605
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|setImageBitmap):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method


# virtual methods
.method public addBitmapToCacheByHack(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_a

    .line 104
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bitmapfun/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 106
    :cond_a
    return-void
.end method

.method public addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .registers 7
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    const/4 v3, 0x1

    .line 295
    iput-object p2, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .line 296
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-static {p1, v0}, Lcom/bitmapfun/util/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitmapfun/util/ImageWorker;->setImageCache(Lcom/bitmapfun/util/ImageCache;)V

    .line 297
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;-><init>(Lcom/bitmapfun/util/ImageWorker;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;

    .line 298
    return-void
.end method

.method public clearCache()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 669
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;-><init>(Lcom/bitmapfun/util/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;

    .line 670
    return-void
.end method

.method protected clearCacheInternal()V
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->clearCache()V

    .line 653
    :cond_9
    return-void
.end method

.method public closeCache()V
    .registers 5

    .prologue
    .line 677
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;-><init>(Lcom/bitmapfun/util/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;

    .line 678
    return-void
.end method

.method protected closeCacheInternal()V
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_c

    .line 663
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->close()V

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    .line 666
    :cond_c
    return-void
.end method

.method public flushCache()V
    .registers 5

    .prologue
    .line 673
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;-><init>(Lcom/bitmapfun/util/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;

    .line 674
    return-void
.end method

.method protected flushCacheInternal()V
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_9

    .line 657
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->flush()V

    .line 659
    :cond_9
    return-void
.end method

.method public getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p1, p2}, Lcom/bitmapfun/util/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public gethashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDiskCacheInternal()V
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_9

    .line 645
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->initDiskCache()V

    .line 647
    :cond_9
    return-void
.end method

.method public isHasBitmapFromDiskCache(Ljava/lang/String;)Z
    .registers 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 71
    .local v1, "blnIsHasBitmapFromDiskCache":Z
    if-nez p1, :cond_6

    .line 72
    const/4 v4, 0x0

    .line 99
    :goto_5
    return v4

    .line 76
    :cond_6
    :try_start_6
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v4, :cond_10

    .line 77
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v4, p1}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_f} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_59

    move-result-object v0

    .line 80
    :cond_10
    if-eqz v0, :cond_33

    .line 81
    const/4 v1, 0x1

    .line 97
    :goto_13
    const-string v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isHasBitmapFromDiskCache := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 99
    goto :goto_5

    .line 83
    :cond_33
    :try_start_33
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v4, p1}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_38} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_59

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3d

    .line 85
    const/4 v1, 0x1

    .line 86
    goto :goto_13

    .line 87
    :cond_3d
    const/4 v1, 0x0

    goto :goto_13

    .line 90
    :catch_3f
    move-exception v3

    .line 91
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    const-string v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(OutOfMemoryError|isHasBitmapFromDiskCache):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 92
    .end local v3    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_59
    move-exception v2

    .line 93
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|isHasBitmapFromDiskCache):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V
    .registers 17
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;
    .param p4, "image_loading"    # I
    .param p5, "isPNG"    # Z

    .prologue
    .line 128
    if-nez p1, :cond_3

    .line 191
    :cond_2
    :goto_2
    return-void

    .line 132
    :cond_3
    const/4 v8, 0x0

    .line 135
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :try_start_4
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v1, :cond_12

    .line 136
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 139
    :cond_12
    if-eqz v8, :cond_83

    .line 141
    if-eqz p2, :cond_1a

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    :cond_1a
    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "draw image from memory cache{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v8, :cond_5d

    .line 147
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 148
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    :cond_5c
    const/4 v8, 0x0

    .line 157
    :cond_5d
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    if-eqz p3, :cond_2

    .line 160
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_68} :catch_b8

    goto :goto_2

    .line 182
    :catch_69
    move-exception v10

    .line 183
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(OutOfMemoryError|loadImage):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_83
    :try_start_83
    invoke-static {p1, p2, p3}, Lcom/bitmapfun/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    if-eqz p3, :cond_8f

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    :cond_8f
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;-><init>(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZI)V

    .line 169
    .local v0, "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    if-ne p4, v1, :cond_d3

    .line 170
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 171
    .local v7, "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :goto_ab
    sget-object v1, Lcom/bitmapfun/util/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;
    :try_end_b6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_83 .. :try_end_b6} :catch_69
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_b6} :catch_b8

    goto/16 :goto_2

    .line 184
    .end local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .end local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    :catch_b8
    move-exception v9

    .line 185
    .local v9, "ex":Ljava/lang/Exception;
    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(Exception|loadImage):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 173
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    :cond_d3
    :try_start_d3
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 174
    .restart local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_df
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d3 .. :try_end_df} :catch_69
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_df} :catch_b8

    goto :goto_ab
.end method

.method public loadImageCover(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZI)V
    .registers 18
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;
    .param p4, "image_loading"    # I
    .param p5, "isPNG"    # Z
    .param p6, "offset_y"    # I

    .prologue
    .line 194
    if-nez p1, :cond_3

    .line 260
    :cond_2
    :goto_2
    return-void

    .line 198
    :cond_3
    const/4 v8, 0x0

    .line 201
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :try_start_4
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v1, :cond_12

    .line 202
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 205
    :cond_12
    if-eqz v8, :cond_83

    .line 212
    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "draw image from memory cache{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-eqz p2, :cond_4e

    .line 214
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    :cond_4e
    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    if-eqz v8, :cond_5d

    .line 218
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 219
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    :cond_5c
    const/4 v8, 0x0

    .line 226
    :cond_5d
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    if-eqz p3, :cond_2

    .line 229
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_68} :catch_b9

    goto :goto_2

    .line 251
    :catch_69
    move-exception v10

    .line 252
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(OutOfMemoryError|loadImage):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 231
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_83
    :try_start_83
    invoke-static {p1, p2, p3}, Lcom/bitmapfun/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    if-eqz p3, :cond_8f

    .line 233
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    :cond_8f
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;-><init>(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZI)V

    .line 238
    .local v0, "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    if-ne p4, v1, :cond_d4

    .line 239
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 240
    .local v7, "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :goto_ac
    sget-object v1, Lcom/bitmapfun/util/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;
    :try_end_b7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_83 .. :try_end_b7} :catch_69
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_b7} :catch_b9

    goto/16 :goto_2

    .line 253
    .end local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .end local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    :catch_b9
    move-exception v9

    .line 254
    .local v9, "ex":Ljava/lang/Exception;
    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(Exception|loadImage):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 242
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    :cond_d4
    :try_start_d4
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 243
    .restart local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_e0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d4 .. :try_end_e0} :catch_69
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e0} :catch_b9

    goto :goto_ac
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public setExitTasksEarly(Z)V
    .registers 2
    .param p1, "exitTasksEarly"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    .line 318
    return-void
.end method

.method public setImageCache(Lcom/bitmapfun/util/ImageCache;)V
    .registers 2
    .param p1, "imageCache"    # Lcom/bitmapfun/util/ImageCache;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    .line 307
    return-void
.end method

.method public setImageFadeIn(Z)V
    .registers 2
    .param p1, "fadeIn"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    .line 314
    return-void
.end method

.method public setLoadingImage(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    .line 278
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    .line 269
    return-void
.end method

.method public setLoadingImageDefault()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_DEFAULT:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    .line 282
    return-void
.end method

.method public setLoadingImageTrans()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    .line 286
    return-void
.end method

.method public setPauseWork(Z)V
    .registers 4
    .param p1, "pauseWork"    # Z

    .prologue
    .line 614
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_3
    iput-boolean p1, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    .line 616
    iget-boolean v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    if-nez v0, :cond_e

    .line 617
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 614
    :cond_e
    monitor-exit v1

    .line 620
    return-void

    .line 614
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
