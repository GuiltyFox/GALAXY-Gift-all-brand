.class public abstract Lcom/bitmapfun/util/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;,
        Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;,
        Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
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
    .line 44
    const/16 v0, 0xc8

    sput v0, Lcom/bitmapfun/util/ImageWorker;->FADE_IN_TIME:I

    .line 62
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_pixel100:I

    sput v0, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_DEFAULT:I

    .line 63
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    sput v0, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    .line 51
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    .line 52
    iput-boolean v1, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/bitmapfun/util/ImageWorker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/ImageWorker;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bitmapfun/util/ImageWorker;)Lcom/bitmapfun/util/ImageCache;
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/ImageWorker;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bitmapfun/util/ImageWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/ImageWorker;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .registers 4
    .param p0, "x0"    # Lcom/bitmapfun/util/ImageWorker;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/bitmapfun/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 42
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

    .line 350
    invoke-static {p1}, Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 352
    .local v1, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_16

    .line 353
    # getter for: Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->access$000(Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    .local v0, "bitmapData":Ljava/lang/Object;
    if-eqz v0, :cond_13

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 355
    :cond_13
    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 364
    .end local v0    # "bitmapData":Ljava/lang/Object;
    :cond_16
    :goto_16
    return v2

    .line 361
    .restart local v0    # "bitmapData":Ljava/lang/Object;
    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .registers 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 336
    invoke-static {p0}, Lcom/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 337
    .local v0, "bitmapWorkerTask":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-eqz v0, :cond_a

    .line 338
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 344
    :cond_a
    return-void
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .registers 4
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 373
    if-eqz p0, :cond_12

    .line 374
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 375
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 376
    check-cast v0, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    .line 377
    .local v0, "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 380
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
    .line 573
    :try_start_0
    iget-boolean v3, p0, Lcom/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    if-eqz v3, :cond_6d

    .line 575
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

    .line 577
    .local v2, "td":Landroid/graphics/drawable/TransitionDrawable;
    sget v3, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    if-ne p3, v3, :cond_3e

    .line 578
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    :goto_31
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    sget v3, Lcom/bitmapfun/util/ImageWorker;->FADE_IN_TIME:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 612
    .end local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :goto_3d
    return-void

    .line 580
    .restart local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_3e
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_87
    .catchall {:try_start_0 .. :try_end_4a} :catchall_6b

    goto :goto_31

    .line 603
    .end local v2    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :catch_4b
    move-exception v1

    .line 604
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_4c
    const-string/jumbo v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(OutOfMemoryError|setImageBitmap):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_6b

    goto :goto_3d

    .line 607
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_6b
    move-exception v3

    throw v3

    .line 589
    :cond_6d
    if-eqz p1, :cond_73

    .line 590
    const/4 v3, 0x0

    :try_start_70
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    :cond_73
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    if-eqz p2, :cond_82

    .line 594
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 595
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 597
    :cond_81
    const/4 p2, 0x0

    .line 601
    :cond_82
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_86
    .catch Ljava/lang/OutOfMemoryError; {:try_start_70 .. :try_end_86} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_86} :catch_87
    .catchall {:try_start_70 .. :try_end_86} :catchall_6b

    goto :goto_3d

    .line 605
    :catch_87
    move-exception v0

    .line 606
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_88
    const-string/jumbo v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Exception|setImageBitmap):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_88 .. :try_end_a6} :catchall_6b

    goto :goto_3d
.end method


# virtual methods
.method public addBitmapToCacheByHack(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_a

    .line 105
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bitmapfun/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 107
    :cond_a
    return-void
.end method

.method public addImageCache(Landroid/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .registers 7
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "cacheParams"    # Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    const/4 v3, 0x1

    .line 296
    iput-object p2, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    .line 297
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCacheParams:Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-static {p1, v0}, Lcom/bitmapfun/util/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)Lcom/bitmapfun/util/ImageCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitmapfun/util/ImageWorker;->setImageCache(Lcom/bitmapfun/util/ImageCache;)V

    .line 298
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;-><init>(Lcom/bitmapfun/util/ImageWorker;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;

    .line 299
    return-void
.end method

.method public clearCache()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 670
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;-><init>(Lcom/bitmapfun/util/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;

    .line 671
    return-void
.end method

.method protected clearCacheInternal()V
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_9

    .line 652
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->clearCache()V

    .line 654
    :cond_9
    return-void
.end method

.method public closeCache()V
    .registers 5

    .prologue
    .line 678
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

    .line 679
    return-void
.end method

.method protected closeCacheInternal()V
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_c

    .line 664
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->close()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    .line 667
    :cond_c
    return-void
.end method

.method public flushCache()V
    .registers 5

    .prologue
    .line 674
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

    .line 675
    return-void
.end method

.method protected flushCacheInternal()V
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->flush()V

    .line 660
    :cond_9
    return-void
.end method

.method public getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-static {p1, p2}, Lcom/bitmapfun/util/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public gethashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-static {p1}, Lcom/bitmapfun/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDiskCacheInternal()V
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v0, :cond_9

    .line 646
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageCache;->initDiskCache()V

    .line 648
    :cond_9
    return-void
.end method

.method public isHasBitmapFromDiskCache(Ljava/lang/String;)Z
    .registers 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 72
    .local v1, "blnIsHasBitmapFromDiskCache":Z
    if-nez p1, :cond_6

    .line 73
    const/4 v4, 0x0

    .line 100
    :goto_5
    return v4

    .line 77
    :cond_6
    :try_start_6
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v4, :cond_10

    .line 78
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v4, p1}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_f} :catch_46
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_68
    .catchall {:try_start_6 .. :try_end_f} :catchall_66

    move-result-object v0

    .line 81
    :cond_10
    if-eqz v0, :cond_3a

    .line 82
    const/4 v1, 0x1

    .line 98
    :goto_13
    const-string/jumbo v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isHasBitmapFromDiskCache := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 100
    goto :goto_5

    .line 84
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-virtual {v4, p1}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_3f} :catch_46
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_68
    .catchall {:try_start_3a .. :try_end_3f} :catchall_66

    move-result-object v0

    .line 85
    if-eqz v0, :cond_44

    .line 86
    const/4 v1, 0x1

    goto :goto_13

    .line 88
    :cond_44
    const/4 v1, 0x0

    goto :goto_13

    .line 91
    :catch_46
    move-exception v3

    .line 92
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_47
    const-string/jumbo v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(OutOfMemoryError|isHasBitmapFromDiskCache):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_66

    goto :goto_13

    .line 95
    .end local v3    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_66
    move-exception v4

    throw v4

    .line 93
    :catch_68
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_69
    const-string/jumbo v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(Exception|isHasBitmapFromDiskCache):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_66

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
    .line 129
    if-nez p1, :cond_3

    .line 192
    :cond_2
    :goto_2
    return-void

    .line 133
    :cond_3
    const/4 v8, 0x0

    .line 136
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :try_start_4
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v1, :cond_12

    .line 137
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 140
    :cond_12
    if-eqz v8, :cond_94

    .line 142
    if-eqz p2, :cond_1a

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    :cond_1a
    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    const-string/jumbo v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "draw image from memory cache{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v8, :cond_65

    .line 148
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 149
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_64
    const/4 v8, 0x0

    .line 158
    :cond_65
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    if-eqz p3, :cond_2

    .line 161
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_70
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_70} :catch_71
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_70} :catch_c9
    .catchall {:try_start_4 .. :try_end_70} :catchall_92

    goto :goto_2

    .line 183
    :catch_71
    move-exception v10

    .line 184
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_72
    const-string/jumbo v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(OutOfMemoryError|loadImage):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_72 .. :try_end_90} :catchall_92

    goto/16 :goto_2

    .line 187
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_92
    move-exception v1

    throw v1

    .line 163
    :cond_94
    :try_start_94
    invoke-static {p1, p2, p3}, Lcom/bitmapfun/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    if-eqz p3, :cond_a0

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    :cond_a0
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;-><init>(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZI)V

    .line 170
    .local v0, "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    if-ne p4, v1, :cond_ea

    .line 171
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 172
    .local v7, "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_bc
    sget-object v1, Lcom/bitmapfun/util/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;
    :try_end_c7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_94 .. :try_end_c7} :catch_71
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c7} :catch_c9
    .catchall {:try_start_94 .. :try_end_c7} :catchall_92

    goto/16 :goto_2

    .line 185
    .end local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .end local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    :catch_c9
    move-exception v9

    .line 186
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_ca
    const-string/jumbo v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception|loadImage):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_ca .. :try_end_e8} :catchall_92

    goto/16 :goto_2

    .line 174
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    :cond_ea
    :try_start_ea
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 175
    .restart local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_f6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ea .. :try_end_f6} :catch_71
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f6} :catch_c9
    .catchall {:try_start_ea .. :try_end_f6} :catchall_92

    goto :goto_bc
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
    .line 195
    if-nez p1, :cond_3

    .line 261
    :cond_2
    :goto_2
    return-void

    .line 199
    :cond_3
    const/4 v8, 0x0

    .line 202
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :try_start_4
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    if-eqz v1, :cond_12

    .line 203
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 206
    :cond_12
    if-eqz v8, :cond_94

    .line 213
    const-string/jumbo v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "draw image from memory cache{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz p2, :cond_56

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    :cond_56
    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    if-eqz v8, :cond_65

    .line 219
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 220
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    :cond_64
    const/4 v8, 0x0

    .line 227
    :cond_65
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    if-eqz p3, :cond_2

    .line 230
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_70
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_70} :catch_71
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_70} :catch_ca
    .catchall {:try_start_4 .. :try_end_70} :catchall_92

    goto :goto_2

    .line 252
    :catch_71
    move-exception v10

    .line 253
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_72
    const-string/jumbo v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(OutOfMemoryError|loadImage):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_72 .. :try_end_90} :catchall_92

    goto/16 :goto_2

    .line 256
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_92
    move-exception v1

    throw v1

    .line 232
    :cond_94
    :try_start_94
    invoke-static {p1, p2, p3}, Lcom/bitmapfun/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    if-eqz p3, :cond_a0

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    :cond_a0
    new-instance v0, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;-><init>(Lcom/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZI)V

    .line 239
    .local v0, "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    if-ne p4, v1, :cond_eb

    .line 240
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 241
    .local v7, "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :goto_bd
    sget-object v1, Lcom/bitmapfun/util/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;
    :try_end_c8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_94 .. :try_end_c8} :catch_71
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c8} :catch_ca
    .catchall {:try_start_94 .. :try_end_c8} :catchall_92

    goto/16 :goto_2

    .line 254
    .end local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .end local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    :catch_ca
    move-exception v9

    .line 255
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_cb
    const-string/jumbo v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception|loadImage):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_cb .. :try_end_e9} :catchall_92

    goto/16 :goto_2

    .line 243
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v0    # "task":Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    :cond_eb
    :try_start_eb
    new-instance v7, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1, v2, v0}, Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 244
    .restart local v7    # "asyncDrawable":Lcom/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_f7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_eb .. :try_end_f7} :catch_71
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f7} :catch_ca
    .catchall {:try_start_eb .. :try_end_f7} :catchall_92

    goto :goto_bd
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public setExitTasksEarly(Z)V
    .registers 2
    .param p1, "exitTasksEarly"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    .line 319
    return-void
.end method

.method public setImageCache(Lcom/bitmapfun/util/ImageCache;)V
    .registers 2
    .param p1, "imageCache"    # Lcom/bitmapfun/util/ImageCache;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/bitmapfun/util/ImageWorker;->mImageCache:Lcom/bitmapfun/util/ImageCache;

    .line 308
    return-void
.end method

.method public setImageFadeIn(Z)V
    .registers 2
    .param p1, "fadeIn"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    .line 315
    return-void
.end method

.method public setLoadingImage(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    .line 279
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    .line 270
    return-void
.end method

.method public setLoadingImageDefault()V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_DEFAULT:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapDefault:Landroid/graphics/Bitmap;

    .line 283
    return-void
.end method

.method public setLoadingImageTrans()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/bitmapfun/util/ImageWorker;->IMAGE_LOADING_TRANS:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mLoadingBitmapTransparent:Landroid/graphics/Bitmap;

    .line 287
    return-void
.end method

.method public setPauseWork(Z)V
    .registers 4
    .param p1, "pauseWork"    # Z

    .prologue
    .line 615
    iget-object v1, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_3
    iput-boolean p1, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    .line 617
    iget-boolean v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWork:Z

    if-nez v0, :cond_e

    .line 618
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 620
    :cond_e
    monitor-exit v1

    .line 621
    return-void

    .line 620
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
