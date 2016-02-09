.class final Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ATTEMPT_COUNT_TO_DECODE_BITMAP:I = 0x3

.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field private final imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

.field final imageView:Landroid/widget/ImageView;

.field final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private final loggingEnabled:Z

.field private final memoryCacheKey:Ljava/lang/String;

.field private final networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .registers 5
    .param p1, "engine"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
    .param p2, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 91
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 92
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 94
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 95
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 96
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 97
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->loggingEnabled:Z

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    .line 98
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 99
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 100
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 102
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 103
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 104
    return-void
.end method

.method private checkTaskIsInterrupted()Z
    .registers 6

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 205
    .local v0, "interrupted":Z
    if-eqz v0, :cond_13

    const-string v1, "Task was interrupted [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_13
    return v0
.end method

.method private checkTaskIsNotActual()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v1, v2

    .line 189
    .local v1, "imageViewWasReused":Z
    :goto_13
    if-eqz v1, :cond_1f

    .line 190
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;

    invoke-direct {v5, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_1f
    if-eqz v1, :cond_2c

    const-string v4, "ImageView is reused for another image. Task is cancelled. [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-direct {p0, v4, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_2c
    return v1

    .end local v1    # "imageViewWasReused":Z
    :cond_2d
    move v1, v3

    .line 188
    goto :goto_13
.end method

.method private decodeImage(Ljava/net/URI;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->handleOutOfMemory:Z

    if-eqz v3, :cond_c

    .line 268
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeWithOOMHandling(Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    :goto_b
    return-object v0

    .line 270
    :cond_c
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageDecoder;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v3

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v1, p1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageDecoder;-><init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 271
    .local v1, "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->setLoggingEnabled(Z)V

    .line 272
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v2

    .line 273
    .local v2, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b
.end method

.method private decodeWithOOMHandling(Ljava/net/URI;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v3, 0x0

    .line 280
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageDecoder;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v5

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v1, p1, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageDecoder;-><init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 281
    .local v1, "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->setLoggingEnabled(Z)V

    .line 282
    const/4 v0, 0x1

    .local v0, "attempt":I
    :goto_12
    const/4 v5, 0x3

    if-le v0, v5, :cond_16

    .line 306
    :goto_15
    return-object v3

    .line 284
    :cond_16
    :try_start_16
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v4

    .line 285
    .local v4, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_27} :catch_29

    move-result-object v3

    goto :goto_15

    .line 286
    .end local v4    # "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    :catch_29
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 289
    packed-switch v0, :pswitch_data_4a

    .line 301
    :goto_30
    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v5, v5

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 291
    :pswitch_39
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_30

    .line 294
    :pswitch_3d
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v5, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v5}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->clear()V

    .line 295
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_30

    .line 298
    :pswitch_48
    throw v2

    .line 289
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_3d
        :pswitch_48
    .end packed-switch
.end method

.method private fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .registers 4
    .param p1, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 354
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_10

    .line 355
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;

    invoke-direct {v1, p0, p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    :cond_10
    return-void
.end method

.method private getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->isNetworkDenied()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    goto :goto_a
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_7
    return-void
.end method

.method private saveImageOnDisc(Ljava/io/File;)V
    .registers 15
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x2000

    .line 310
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 311
    .local v1, "cacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_f

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 315
    :cond_f
    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v8, v9, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiscCache:I

    .line 316
    .local v8, "width":I
    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v4, v9, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiscCache:I

    .line 317
    .local v4, "height":I
    if-gtz v8, :cond_1b

    if-lez v4, :cond_66

    .line 319
    :cond_1b
    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v7, v8, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 320
    .local v7, "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    new-instance v3, Lcom/nostra13/universalimageloader/core/ImageDecoder;

    new-instance v9, Ljava/net/URI;

    iget-object v10, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v10

    iget-object v11, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v3, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageDecoder;-><init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 321
    .local v3, "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    iget-boolean v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v3, v9}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->setLoggingEnabled(Z)V

    .line 322
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-virtual {v3, v7, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_66

    .line 324
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 325
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 327
    .local v2, "compressedSuccessfully":Z
    :try_start_4c
    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v9, v9, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v10, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v10, v10, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageQualityForDiscCache:I

    invoke-virtual {v0, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_61

    move-result v2

    .line 329
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 331
    if-eqz v2, :cond_66

    .line 332
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "compressedSuccessfully":Z
    .end local v3    # "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    .end local v7    # "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :goto_60
    return-void

    .line 328
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "compressedSuccessfully":Z
    .restart local v3    # "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    .restart local v7    # "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :catchall_61
    move-exception v9

    .line 329
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 330
    throw v9

    .line 340
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "compressedSuccessfully":Z
    .end local v3    # "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :cond_66
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v9

    new-instance v10, Ljava/net/URI;

    iget-object v11, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/net/URI;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v5

    .line 342
    .local v5, "is":Ljava/io/InputStream;
    :try_start_7b
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x2000

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_96

    .line 344
    .restart local v6    # "os":Ljava/io/OutputStream;
    :try_start_87
    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_91

    .line 346
    :try_start_8a
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_96

    .line 349
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_60

    .line 345
    :catchall_91
    move-exception v9

    .line 346
    :try_start_92
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 347
    throw v9
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    .line 348
    .end local v6    # "os":Ljava/io/OutputStream;
    :catchall_96
    move-exception v9

    .line 349
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 350
    throw v9
.end method

.method private tryLoadBitmap()Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    .line 210
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v6, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .line 211
    .local v2, "discCache":Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v2, v6}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 213
    .local v4, "imageFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 216
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_b
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 217
    const-string v6, "Load image from disc cache [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {p0, v6, v7}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_29

    .line 261
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_28
    return-object v0

    .line 226
    :cond_29
    const-string v6, "Load image from Internet [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {p0, v6, v7}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheOnDisc()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 230
    const-string v6, "Cache image on disc [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {p0, v6, v7}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->saveImageOnDisc(Ljava/io/File;)V

    .line 233
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v2, v6, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 234
    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 239
    .local v5, "imageUriForDecoding":Ljava/net/URI;
    :goto_57
    invoke-direct {p0, v5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    if-nez v1, :cond_62

    .line 241
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .end local v5    # "imageUriForDecoding":Ljava/net/URI;
    :cond_62
    :goto_62
    move-object v0, v1

    .line 261
    goto :goto_28

    .line 236
    :cond_64
    new-instance v5, Ljava/net/URI;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_6b} :catch_6c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_6b} :catch_73
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_6b} :catch_7d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_6b} :catch_90
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_6b} :catch_9a

    .restart local v5    # "imageUriForDecoding":Ljava/net/URI;
    goto :goto_57

    .line 243
    .end local v5    # "imageUriForDecoding":Ljava/net/URI;
    :catch_6c
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    goto :goto_62

    .line 245
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_73
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 247
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNSUPPORTED_URI_SCHEME:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    goto :goto_62

    .line 248
    .end local v3    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_7d
    move-exception v3

    .line 249
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 250
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 252
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_62

    .line 254
    .end local v3    # "e":Ljava/io/IOException;
    :catch_90
    move-exception v3

    .line 255
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 256
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    goto :goto_62

    .line 257
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_9a
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 259
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    goto :goto_62
.end method


# virtual methods
.method getLoadingUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 108
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    .line 109
    .local v4, "pause":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 110
    monitor-enter v4

    .line 111
    :try_start_f
    const-string v5, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_44

    .line 113
    :try_start_1c
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_34
    .catchall {:try_start_1c .. :try_end_1f} :catchall_44

    .line 118
    :try_start_1f
    const-string v5, ".. Resume loading [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_44

    .line 121
    :cond_2d
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 178
    :cond_33
    :goto_33
    return-void

    .line 114
    :catch_34
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_35
    const-string v5, "Task was interrupted [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    monitor-exit v4

    goto :goto_33

    .line 110
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_44
    move-exception v5

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_44

    throw v5

    .line 123
    :cond_47
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 124
    const-string v5, "Delay %d ms before loading...  [%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :try_start_67
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_71} :catch_a4

    .line 132
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-nez v5, :cond_33

    .line 135
    :cond_77
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v3, v5, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 136
    .local v3, "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    const-string v5, "Start display image task [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 138
    const-string v5, "Image already is loading. Waiting... [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_97
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    :try_start_9a
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_169

    move-result v5

    if-eqz v5, :cond_b1

    .line 170
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_33

    .line 127
    .end local v3    # "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    :catch_a4
    move-exception v2

    .line 128
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    const-string v5, "Task was interrupted [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    .line 146
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_b1
    :try_start_b1
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v5, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 147
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_15b

    .line 148
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Landroid/graphics/Bitmap;
    :try_end_c2
    .catchall {:try_start_b1 .. :try_end_c2} :catchall_169

    move-result-object v0

    .line 149
    if-nez v0, :cond_ca

    .line 170
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_33

    .line 151
    :cond_ca
    :try_start_ca
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-nez v5, :cond_d6

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z
    :try_end_d3
    .catchall {:try_start_ca .. :try_end_d3} :catchall_169

    move-result v5

    if-eqz v5, :cond_db

    .line 170
    :cond_d6
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_33

    .line 153
    :cond_db
    :try_start_db
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPreProcess()Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 154
    const-string v5, "PreProcess image before caching in memory [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    :cond_fa
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v5

    if-eqz v5, :cond_118

    .line 158
    const-string v5, "Cache image in memory [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v5, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    :cond_118
    :goto_118
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v5

    if-eqz v5, :cond_137

    .line 166
    const-string v5, "PostProcess image before displaying [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_136
    .catchall {:try_start_db .. :try_end_136} :catchall_169

    move-result-object v0

    .line 170
    :cond_137
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z

    move-result v5

    if-nez v5, :cond_33

    .line 175
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-direct {v1, v0, v5, v6}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V

    .line 176
    .local v1, "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->setLoggingEnabled(Z)V

    .line 177
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_33

    .line 162
    .end local v1    # "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    :cond_15b
    :try_start_15b
    const-string v5, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_168
    .catchall {:try_start_15b .. :try_end_168} :catchall_169

    goto :goto_118

    .line 169
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catchall_169
    move-exception v5

    .line 170
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    throw v5
.end method
