.class public Lcom/loopj/android/image/WebImageCacheSD;
.super Ljava/lang/Object;
.source "WebImageCacheSD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;
    }
.end annotation


# static fields
.field public static gRootPath:Ljava/lang/String;


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/image/WebImageCacheSD;->gRootPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x193

    iput v0, p0, Lcom/loopj/android/image/WebImageCacheSD;->mMaxWidth:I

    .line 31
    const/16 v0, 0x353

    iput v0, p0, Lcom/loopj/android/image/WebImageCacheSD;->mMaxHeight:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/loopj/android/image/WebImageCacheSD;->ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/WebImages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopj/android/image/WebImageCacheSD;->gRootPath:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/loopj/android/image/WebImageCacheSD;->initialDirectory()V

    .line 78
    return-void
.end method

.method public static ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/loopj/android/image/WebImageCacheSD;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_12
    invoke-static {p0}, Lcom/loopj/android/image/WebImageCacheSD;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "androidPath":Ljava/lang/String;
    :goto_1a
    return-object v0

    .line 39
    .end local v0    # "androidPath":Ljava/lang/String;
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 519
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 520
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 521
    .local v2, "width":I
    const/4 v1, 0x1

    .line 523
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_9

    if-le v2, p1, :cond_12

    .line 524
    :cond_9
    if-le v2, v0, :cond_13

    .line 525
    int-to-float v3, v0

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 530
    :cond_12
    :goto_12
    return v1

    .line 527
    :cond_13
    int-to-float v3, v2

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_12
.end method

.method private createTransparentBitmapFromBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "replaceThisColor"    # I

    .prologue
    .line 546
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 547
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 549
    .local v1, "h":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-lt v3, v2, :cond_c

    .line 561
    return-object p1

    .line 550
    :cond_c
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_d
    if-lt v4, v1, :cond_12

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 551
    :cond_12
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 553
    .local v0, "color":I
    if-ne v0, p2, :cond_21

    .line 555
    shl-int/lit8 v5, v0, 0x18

    const/high16 v6, -0x1000000

    and-int v0, v5, v6

    .line 556
    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 550
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_d
.end method

.method private cropCoverImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "bitmapOriginal"    # Landroid/graphics/Bitmap;
    .param p2, "cover_offset_y"    # I

    .prologue
    .line 171
    const/4 v7, 0x0

    .line 173
    .local v7, "croppedBitmap":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 175
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000

    const/high16 v1, 0x3f800000

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x13b

    div-int/lit16 v10, v0, 0x32f

    .line 190
    .local v10, "height_fix":I
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "height_fix="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v11, v0, v10

    .line 192
    .local v11, "height_remain":I
    mul-int v0, p2, v11

    div-int/lit8 v2, v0, 0x64

    .line 193
    .local v2, "y":I
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " * "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") / 100 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move v4, v10

    .line 196
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v2, v0, :cond_63

    .line 197
    const/4 v2, 0x0

    .line 199
    :cond_63
    add-int v0, v2, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_71

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v4, v0, v2

    .line 203
    :cond_71
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "croppedBitmap:y="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_99
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_99} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_99} :catch_d2
    .catchall {:try_start_1 .. :try_end_99} :catchall_f8

    move-result-object v7

    .line 215
    if-eqz v7, :cond_106

    .line 216
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 217
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    :cond_a5
    const/4 v8, 0x0

    .end local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    .local v8, "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_a6
    move-object p1, v7

    move-object v7, v8

    .line 213
    .end local v2    # "y":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "height_fix":I
    .end local v11    # "height_remain":I
    .end local p1    # "bitmapOriginal":Landroid/graphics/Bitmap;
    .restart local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_a8
    :goto_a8
    return-object p1

    .line 207
    .restart local p1    # "bitmapOriginal":Landroid/graphics/Bitmap;
    :catch_a9
    move-exception v12

    .line 208
    .local v12, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_aa
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "(OutOfMemoryError|cropCoverImage):"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_c5
    .catchall {:try_start_aa .. :try_end_c5} :catchall_f8

    .line 215
    if-eqz v7, :cond_a8

    .line 216
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 217
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    :cond_d0
    const/4 v7, 0x0

    goto :goto_a8

    .line 211
    .end local v12    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_d2
    move-exception v9

    .line 212
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_d3
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "(Exception|cropCoverImage):"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_d3 .. :try_end_eb} :catchall_f8

    .line 215
    if-eqz v7, :cond_a8

    .line 216
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 217
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    :cond_f6
    const/4 v7, 0x0

    goto :goto_a8

    .line 214
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_f8
    move-exception v0

    .line 215
    if-eqz v7, :cond_105

    .line 216
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_104

    .line 217
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    :cond_104
    const/4 v7, 0x0

    .line 224
    :cond_105
    throw v0

    .restart local v2    # "y":I
    .restart local v4    # "height":I
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "height_fix":I
    .restart local v11    # "height_remain":I
    :cond_106
    move-object v8, v7

    .end local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto :goto_a6
.end method

.method public static decodeSampledBitmapFromInputStream(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 501
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 502
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 505
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 508
    invoke-static {v0, p1, p2}, Lcom/loopj/android/image/WebImageCacheSD;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 511
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 514
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getBitmapDefault(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "default_image"    # I

    .prologue
    .line 534
    if-eqz p1, :cond_b

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 537
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getBitmapFromUrlAndSaveToSD(Ljava/lang/String;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fullpath"    # Ljava/lang/String;
    .param p3, "default_image"    # I
    .param p4, "reqWidth"    # I
    .param p5, "reqHeight"    # I

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const-string v4, ""

    .line 280
    .local v4, "contentType":Ljava/lang/String;
    :try_start_3
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 281
    .local v8, "objUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_82
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_13e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_e} :catch_f6
    .catchall {:try_start_3 .. :try_end_e} :catchall_12a

    .line 284
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_e
    sget v11, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_CONNECT_TIMEOUT:I

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 285
    sget v11, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_READ_TIMEOUT:I

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_141
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_82
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_18} :catch_f6
    .catchall {:try_start_e .. :try_end_18} :catchall_12a

    .line 290
    :goto_18
    :try_start_18
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 292
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_14a

    .line 295
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 296
    .local v10, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 298
    .local v7, "height":I
    const/16 v11, 0x193

    if-ge v10, v11, :cond_35

    const/16 v11, 0x353

    if-lt v7, v11, :cond_42

    .line 300
    :cond_35
    :goto_35
    const/16 v11, 0x193

    if-le v10, v11, :cond_3d

    const/16 v11, 0x353

    if-gt v7, v11, :cond_7d

    .line 306
    :cond_3d
    const/4 v11, 0x0

    invoke-static {v1, v10, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 309
    :cond_42
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    const-string v12, "Content-Type"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 311
    .local v6, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5d

    .line 312
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 315
    :cond_5d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_60} :catch_82
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_60} :catch_13e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_60} :catch_f6
    .catchall {:try_start_18 .. :try_end_60} :catchall_12a

    move-object v2, v1

    .line 325
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "height":I
    .end local v8    # "objUrl":Ljava/net/URL;
    .end local v10    # "width":I
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_61
    if-eqz v2, :cond_6f

    .line 326
    :try_start_63
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-eqz v11, :cond_6f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6c} :catch_ba
    .catch Ljava/lang/OutOfMemoryError; {:try_start_63 .. :try_end_6c} :catch_13b
    .catchall {:try_start_63 .. :try_end_6c} :catchall_138

    move-result v11

    if-nez v11, :cond_86

    .line 357
    :cond_6f
    if-eqz v2, :cond_147

    .line 358
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 359
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_7a
    const/4 v1, 0x0

    .line 328
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_7b
    const/4 v2, 0x0

    .line 355
    :goto_7c
    return-object v2

    .line 303
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "height":I
    .restart local v8    # "objUrl":Ljava/net/URL;
    .restart local v10    # "width":I
    :cond_7d
    :try_start_7d
    div-int/lit8 v10, v10, 0x2

    .line 304
    div-int/lit8 v7, v7, 0x2
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_82
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_81} :catch_13e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7d .. :try_end_81} :catch_f6
    .catchall {:try_start_7d .. :try_end_81} :catchall_12a

    .line 299
    goto :goto_35

    .line 320
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "height":I
    .end local v8    # "objUrl":Ljava/net/URL;
    .end local v10    # "width":I
    :catch_82
    move-exception v5

    .line 321
    .local v5, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object v2, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_61

    .line 331
    .end local v5    # "e":Ljava/io/IOException;
    :cond_86
    :try_start_86
    new-instance v11, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;

    move-object/from16 v0, p2

    invoke-direct {v11, v2, v4, v0}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_93} :catch_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_86 .. :try_end_93} :catch_13b
    .catchall {:try_start_86 .. :try_end_93} :catchall_138

    .line 357
    :goto_93
    if-eqz v2, :cond_144

    .line 358
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 359
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_9e
    const/4 v1, 0x0

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7c

    .line 332
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_a0
    move-exception v5

    .line 333
    .local v5, "e":Ljava/lang/Exception;
    :try_start_a1
    const-string v11, "buzzebees.WebImageCacheSD"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(Exception|getBitmapFromUrlAndSaveToSD|TrySaveImage):"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b9} :catch_ba
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a1 .. :try_end_b9} :catch_13b
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_138

    goto :goto_93

    .line 342
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_ba
    move-exception v5

    move-object v1, v2

    .line 343
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_bc
    :try_start_bc
    const-string v11, "buzzebees.WebImageCacheSD"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(Exception|getBitmapFromUrlAndSaveToSD|url = ):"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v11, "buzzebees.WebImageCacheSD"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(Exception|getBitmapFromUrlAndSaveToSD):"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_bc .. :try_end_e8} :catchall_12a

    .line 357
    if-eqz v1, :cond_f4

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_f3

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_f3
    const/4 v1, 0x0

    .line 345
    :cond_f4
    const/4 v2, 0x0

    goto :goto_7c

    .line 346
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_f6
    move-exception v9

    .line 347
    .local v9, "oom":Ljava/lang/OutOfMemoryError;
    :goto_f7
    if-eqz v1, :cond_103

    .line 348
    :try_start_f9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_102

    .line 349
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    :cond_102
    const/4 v1, 0x0

    .line 353
    :cond_103
    const-string v11, "buzzebees.WebImageCacheSD"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(OutOfMemoryError|getBitmapFromUrlAndSaveToSD):"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_f9 .. :try_end_11b} :catchall_12a

    .line 357
    if-eqz v1, :cond_127

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_126

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_126
    const/4 v1, 0x0

    .line 355
    :cond_127
    const/4 v2, 0x0

    goto/16 :goto_7c

    .line 356
    .end local v9    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_12a
    move-exception v11

    .line 357
    :goto_12b
    if-eqz v1, :cond_137

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-eqz v12, :cond_136

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_136
    const/4 v1, 0x0

    .line 363
    :cond_137
    throw v11

    .line 356
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_138
    move-exception v11

    move-object v1, v2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_12b

    .line 346
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_13b
    move-exception v9

    move-object v1, v2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_f7

    .line 342
    :catch_13e
    move-exception v5

    goto/16 :goto_bc

    .line 286
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "objUrl":Ljava/net/URL;
    :catch_141
    move-exception v11

    goto/16 :goto_18

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "objUrl":Ljava/net/URL;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_144
    move-object v1, v2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_7c

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_147
    move-object v1, v2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_7b

    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "objUrl":Ljava/net/URL;
    :cond_14a
    move-object v2, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_61
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 71
    :goto_a
    return-object v1

    .line 70
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private initialDirectory()V
    .registers 19

    .prologue
    .line 82
    :try_start_0
    new-instance v10, Ljava/io/File;

    sget-object v12, Lcom/loopj/android/image/WebImageCacheSD;->gRootPath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v10, "root":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_10

    .line 84
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_10
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 88
    .local v11, "today":Ljava/util/Date;
    new-instance v6, Ljava/io/File;

    sget-object v12, Lcom/loopj/android/image/WebImageCacheSD;->gRootPath:Ljava/lang/String;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 90
    .local v7, "files":[Ljava/io/File;
    array-length v13, v7

    const/4 v12, 0x0

    :goto_22
    if-lt v12, v13, :cond_25

    .line 118
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "files":[Ljava/io/File;
    .end local v10    # "root":Ljava/io/File;
    .end local v11    # "today":Ljava/util/Date;
    :goto_24
    return-void

    .line 90
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "files":[Ljava/io/File;
    .restart local v10    # "root":Ljava/io/File;
    .restart local v11    # "today":Ljava/util/Date;
    :cond_25
    aget-object v8, v7, v12

    .line 91
    .local v8, "inFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_74

    .line 92
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "https+++api+buzzebees+com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_74

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "http+++api+buzzebees+com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_74

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "http+++buzzebees+blob+core+windows+net"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_74

    .line 95
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 96
    .local v9, "lastModDate":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v0, v14, v16

    .line 97
    .local v0, "diffInMs":J
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_91

    move-result-wide v2

    .line 102
    .local v2, "diffInSec":J
    const-wide/32 v14, 0x93a80

    cmp-long v14, v2, v14

    if-lez v14, :cond_74

    .line 107
    :try_start_71
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_77

    .line 90
    .end local v0    # "diffInMs":J
    .end local v2    # "diffInSec":J
    .end local v9    # "lastModDate":Ljava/util/Date;
    :cond_74
    :goto_74
    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    .line 108
    .restart local v0    # "diffInMs":J
    .restart local v2    # "diffInSec":J
    .restart local v9    # "lastModDate":Ljava/util/Date;
    :catch_77
    move-exception v4

    .line 109
    .local v4, "e":Ljava/lang/Exception;
    :try_start_78
    const-string v14, "buzzebees.WebImageCacheSD"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(Exception|initialDirectory|delete):"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_90} :catch_91

    goto :goto_74

    .line 115
    .end local v0    # "diffInMs":J
    .end local v2    # "diffInSec":J
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "files":[Ljava/io/File;
    .end local v8    # "inFile":Ljava/io/File;
    .end local v9    # "lastModDate":Ljava/util/Date;
    .end local v10    # "root":Ljava/io/File;
    .end local v11    # "today":Ljava/util/Date;
    :catch_91
    move-exception v5

    .line 116
    .local v5, "ex":Ljava/lang/Exception;
    const-string v12, "buzzebees.WebImageCacheSD"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(Exception|initialDirectory|main):"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 54
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public GetDrawableFromSD(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "fullpath"    # Ljava/lang/String;
    .param p2, "default_image"    # I

    .prologue
    const/4 v3, 0x0

    .line 261
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 263
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_18

    .line 269
    .end local v1    # "file":Ljava/io/File;
    :goto_15
    return-object v2

    .restart local v1    # "file":Ljava/io/File;
    :cond_16
    move-object v2, v3

    .line 265
    goto :goto_15

    .line 267
    .end local v1    # "file":Ljava/io/File;
    :catch_18
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "buzzebees.WebImageCacheSD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|GetImageFromSD):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 269
    goto :goto_15
.end method

.method public GetImageFromSD(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "fullpath"    # Ljava/lang/String;
    .param p2, "default_image"    # I

    .prologue
    const/4 v2, 0x0

    .line 243
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 245
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v2

    .line 255
    .end local v1    # "file":Ljava/io/File;
    :cond_10
    :goto_10
    return-object v2

    .line 249
    :catch_11
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_10
.end method

.method public get(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "default_image"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I
    .param p5, "cover_offset_y"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v3, -0x1

    .line 121
    const/4 v6, 0x0

    .line 123
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_80

    :try_start_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loopj/android/image/WebImageCacheSD;->gRootPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/loopj/android/image/WebImageCacheSD;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "cacheFullPath":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lcom/loopj/android/image/WebImageCacheSD;->GetImageFromSD(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_27} :catch_8e
    .catchall {:try_start_5 .. :try_end_27} :catchall_b5

    move-result-object v6

    .line 128
    if-eqz v6, :cond_4e

    .line 133
    if-ne p5, v3, :cond_3b

    .line 161
    if-eqz v6, :cond_c9

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_37
    const/4 v7, 0x0

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :goto_38
    move-object v0, v6

    move-object v6, v7

    .line 159
    .end local v2    # "cacheFullPath":Ljava/lang/String;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3a
    return-object v0

    .line 136
    .restart local v2    # "cacheFullPath":Ljava/lang/String;
    :cond_3b
    :try_start_3b
    invoke-direct {p0, v6, p5}, Lcom/loopj/android/image/WebImageCacheSD;->cropCoverImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_3e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_3e} :catch_8e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_b5

    move-result-object v6

    .line 161
    if-eqz v6, :cond_c7

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_4a
    const/4 v7, 0x0

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_4b
    move-object v0, v6

    move-object v6, v7

    .line 137
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3a

    .line 144
    :cond_4e
    if-ne p5, v3, :cond_68

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 145
    :try_start_55
    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/image/WebImageCacheSD;->getBitmapFromUrlAndSaveToSD(Ljava/lang/String;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    :try_end_58
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_58} :catch_8e
    .catchall {:try_start_55 .. :try_end_58} :catchall_b5

    move-result-object v6

    .line 161
    if-eqz v6, :cond_c5

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_64
    const/4 v7, 0x0

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_65
    move-object v0, v6

    move-object v6, v7

    .line 146
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3a

    :cond_68
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 148
    :try_start_6d
    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/image/WebImageCacheSD;->getBitmapFromUrlAndSaveToSD(Ljava/lang/String;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    :try_end_70
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6d .. :try_end_70} :catch_8e
    .catchall {:try_start_6d .. :try_end_70} :catchall_b5

    move-result-object v6

    .line 161
    if-eqz v6, :cond_c3

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_7c
    const/4 v7, 0x0

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_7d
    move-object v0, v6

    move-object v6, v7

    .line 149
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3a

    .line 161
    .end local v2    # "cacheFullPath":Ljava/lang/String;
    :cond_80
    if-eqz v6, :cond_8c

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_8b
    const/4 v6, 0x0

    :cond_8c
    move-object v0, v9

    .line 154
    goto :goto_3a

    .line 156
    :catch_8e
    move-exception v8

    .line 157
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_8f
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "(OutOfMemoryError|get):"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_b5

    .line 161
    if-eqz v6, :cond_b3

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_b2
    const/4 v6, 0x0

    :cond_b3
    move-object v0, v9

    .line 159
    goto :goto_3a

    .line 160
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_b5
    move-exception v0

    .line 161
    if-eqz v6, :cond_c2

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_c1
    const/4 v6, 0x0

    .line 167
    :cond_c2
    throw v0

    .restart local v2    # "cacheFullPath":Ljava/lang/String;
    :cond_c3
    move-object v7, v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_7d

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c5
    move-object v7, v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_65

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c7
    move-object v7, v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4b

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c9
    move-object v7, v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_38
.end method

.method public getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 228
    if-nez p1, :cond_a

    .line 229
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Null url passed in"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_a
    const-string v2, "[.:/,%?&=]"

    const-string v3, "+"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "key":Ljava/lang/String;
    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "found":I
    if-lez v0, :cond_1f

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 237
    :cond_1f
    return-object v1
.end method
