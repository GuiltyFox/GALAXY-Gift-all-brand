.class public Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;
.super Landroid/os/AsyncTask;
.source "WebImageCacheSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/image/WebImageCacheSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapSaveToSDTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field gBitmap:Landroid/graphics/Bitmap;

.field gContentType:Ljava/lang/String;

.field gFullpath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pContentType"    # Ljava/lang/String;
    .param p3, "pFullpath"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gContentType:Ljava/lang/String;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    .line 374
    iput-object p2, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gContentType:Ljava/lang/String;

    .line 375
    iput-object p3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    .line 377
    if-eqz p1, :cond_1f

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 379
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 382
    :cond_1f
    return-void
.end method

.method private createTransparentBitmapFromBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "replaceThisColor"    # I

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 471
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 473
    .local v1, "h":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-lt v3, v2, :cond_c

    .line 485
    return-object p1

    .line 474
    :cond_c
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_d
    if-lt v4, v1, :cond_12

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 475
    :cond_12
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 477
    .local v0, "color":I
    if-ne v0, p2, :cond_21

    .line 479
    shl-int/lit8 v5, v0, 0x18

    const/high16 v6, -0x1000000

    and-int v0, v5, v6

    .line 480
    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 474
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_d
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 465
    const-string v0, "All Done!"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 496
    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    .line 386
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 389
    :try_start_3
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/loopj/android/image/WebImageCacheSD;->gRootPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    .line 391
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 394
    :cond_13
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 396
    .local v1, "out":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gContentType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gContentType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pmg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 397
    :cond_36
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 413
    :goto_3f
    const-string v3, "buzzebees.WebImageCacheSD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SAVED:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 417
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6c

    .line 418
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 419
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 421
    :cond_69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    .line 426
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "root":Ljava/io/File;
    :cond_6c
    :goto_6c
    return-void

    .line 398
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "root":Ljava/io/File;
    :cond_6d
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+api+badge+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+picture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 399
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_92} :catch_93

    goto :goto_3f

    .line 423
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "root":Ljava/io/File;
    :catch_93
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.WebImageCacheSD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|getBitmapFromUrlAndSaveToSD|TrySaveImage):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "root":Ljava/io/File;
    :cond_ad
    :try_start_ad
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+stickersets+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 401
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto/16 :goto_3f

    .line 402
    :cond_c6
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+campaigncat+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 403
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto/16 :goto_3f

    .line 404
    :cond_df
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+stickers+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 405
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto/16 :goto_3f

    .line 406
    :cond_f8
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https+++s-static+ak+facebook+com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_129

    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gFullpath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 407
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    const/high16 v4, -0x1000000

    invoke-direct {p0, v3, v4}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->createTransparentBitmapFromBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    .line 408
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto/16 :goto_3f

    .line 410
    :cond_129
    iget-object v3, p0, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->gBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v5, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_SAVE_QUALITY:I

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_132} :catch_93

    goto/16 :goto_3f
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
