.class public Lcom/samsung/privilege/control/imagecropper/CropImage;
.super Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;
.source "CropImage.java"


# static fields
.field public static final ACTION_INLINE_DATA:Ljava/lang/String; = "inline-data"

.field public static final ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field public static final IMAGE_PATH:Ljava/lang/String; = "image-path"

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final ORIENTATION_IN_DEGREES:Ljava/lang/String; = "orientation_in_degrees"

.field public static final OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final RETURN_DATA_AS_BITMAP:Ljava/lang/String; = "data"

.field public static final SCALE:Ljava/lang/String; = "scale"

.field public static final SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field final IMAGE_MAX_SIZE:I

.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/samsung/privilege/control/imagecropper/HighlightView;

.field private final mDecodingThreads:Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImagePath:Ljava/lang/String;

.field private mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;-><init>()V

    .line 63
    const/16 v0, 0x400

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->IMAGE_MAX_SIZE:I

    .line 80
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 82
    iput-boolean v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mDoFaceDetection:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCircleCrop:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mHandler:Landroid/os/Handler;

    .line 102
    iput-boolean v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mScaleUp:Z

    .line 104
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;

    invoke-direct {v0}, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mDecodingThreads:Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;

    .line 496
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/privilege/control/imagecropper/CropImage;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/privilege/control/imagecropper/CropImage;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/privilege/control/imagecropper/CropImage;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/privilege/control/imagecropper/CropImage;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/control/imagecropper/CropImage;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method public static calculatePicturesRemaining(Landroid/app/Activity;)I
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 681
    :try_start_0
    const-string/jumbo v4, ""

    .line 682
    .local v4, "storageDirectory":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 684
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 688
    :goto_18
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 689
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x48c35000

    div-float v1, v5, v6

    .line 690
    .local v1, "remaining":F
    float-to-int v5, v1

    .line 696
    .end local v1    # "remaining":F
    .end local v2    # "stat":Landroid/os/StatFs;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "storageDirectory":Ljava/lang/String;
    :goto_2e
    return v5

    .line 686
    .restart local v3    # "state":Ljava/lang/String;
    .restart local v4    # "storageDirectory":Ljava/lang/String;
    :cond_2f
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    move-result-object v4

    goto :goto_18

    .line 692
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "storageDirectory":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 696
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v5, -0x2

    goto :goto_2e
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getImageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 252
    .local v6, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 254
    .local v2, "in":Ljava/io/InputStream;
    :try_start_8
    iget-object v8, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 257
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 258
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 260
    const/4 v8, 0x0

    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 261
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 263
    const/4 v5, 0x1

    .line 264
    .local v5, "scale":I
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v8, v9, :cond_26

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v8, v9, :cond_4a

    .line 265
    :cond_26
    const-wide/high16 v8, 0x4000000000000000L

    const-wide/high16 v10, 0x4090000000000000L

    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v5, v8

    .line 268
    :cond_4a
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 269
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 270
    iget-object v8, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 271
    const/4 v8, 0x0

    invoke-static {v2, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_5f} :catch_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_5f} :catch_84

    .line 280
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    :goto_5f
    return-object v0

    .line 275
    :catch_60
    move-exception v1

    .line 276
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "CropImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_82
    move-object v0, v7

    .line 280
    goto :goto_5f

    .line 277
    :catch_84
    move-exception v1

    .line 278
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "CropImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

.method private getImageUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private onSaveClicked()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaving:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 439
    :cond_8
    :goto_8
    return-void

    .line 329
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCrop:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 334
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaving:Z

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCrop:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v18

    .line 338
    .local v18, "r":Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 339
    .local v20, "width":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 346
    .local v14, "height":I
    :try_start_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14b

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_35
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3c} :catch_14f

    move-result-object v8

    .line 350
    .local v8, "croppedImage":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_8

    .line 356
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    .local v9, "dstRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b2

    .line 368
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 369
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 370
    .local v17, "p":Landroid/graphics/Path;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    div-float v21, v21, v22

    int-to-float v0, v14

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 371
    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 372
    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 376
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v17    # "p":Landroid/graphics/Path;
    :cond_b2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputX:I

    move/from16 v21, v0

    if-eqz v21, :cond_fc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputY:I

    move/from16 v21, v0

    if-eqz v21, :cond_fc

    .line 378
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mScale:Z

    move/from16 v21, v0

    if-eqz v21, :cond_151

    .line 381
    move-object/from16 v16, v8

    .line 382
    .local v16, "old":Landroid/graphics/Bitmap;
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mScaleUp:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v8, v1, v2, v3}, Lcom/samsung/privilege/control/imagecropper/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 383
    move-object/from16 v0, v16

    if-eq v0, v8, :cond_fc

    .line 384
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-eqz v21, :cond_fc

    .line 385
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 423
    .end local v16    # "old":Landroid/graphics/Bitmap;
    :cond_fc
    :goto_fc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 424
    .local v15, "myExtras":Landroid/os/Bundle;
    if-eqz v15, :cond_1f6

    const-string/jumbo v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    if-nez v21, :cond_11c

    const-string/jumbo v21, "return-data"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f6

    .line 426
    :cond_11c
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v13, "extras":Landroid/os/Bundle;
    const-string/jumbo v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 428
    const/16 v21, -0x1

    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v23, "inline-data"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    goto/16 :goto_8

    .line 346
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "croppedImage":Landroid/graphics/Bitmap;
    .end local v9    # "dstRect":Landroid/graphics/Rect;
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v15    # "myExtras":Landroid/os/Bundle;
    :cond_14b
    :try_start_14b
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14d} :catch_14f

    goto/16 :goto_35

    .line 347
    :catch_14f
    move-exception v12

    .line 348
    .local v12, "e":Ljava/lang/Exception;
    throw v12

    .line 396
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "croppedImage":Landroid/graphics/Bitmap;
    .restart local v9    # "dstRect":Landroid/graphics/Rect;
    :cond_151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputY:I

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 397
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    .end local v7    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 399
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCrop:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 400
    .local v19, "srcRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "dstRect":Landroid/graphics/Rect;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputY:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 402
    .restart local v9    # "dstRect":Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v10, v21, 0x2

    .line 403
    .local v10, "dx":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v11, v21, 0x2

    .line 406
    .local v11, "dy":I
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 409
    const/16 v21, 0x0

    neg-int v0, v10

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    neg-int v0, v11

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 415
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-eqz v21, :cond_1f3

    .line 416
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    :cond_1f3
    move-object v8, v5

    goto/16 :goto_fc

    .line 431
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v19    # "srcRect":Landroid/graphics/Rect;
    .restart local v15    # "myExtras":Landroid/os/Bundle;
    :cond_1f6
    move-object v5, v8

    .line 432
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    const v22, 0x7f09043c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lcom/samsung/privilege/control/imagecropper/CropImage$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/samsung/privilege/control/imagecropper/CropImage$6;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/control/imagecropper/Util;->startBackgroundJob(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_8
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "croppedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 443
    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v4, :cond_7c

    .line 444
    const/4 v3, 0x0

    .line 446
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_5
    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 447
    if-eqz v3, :cond_16

    .line 448
    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_4f
    .catchall {:try_start_5 .. :try_end_16} :catchall_77

    .line 458
    :cond_16
    invoke-static {v3}, Lcom/samsung/privilege/control/imagecropper/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 461
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 464
    const-string/jumbo v4, "image-path"

    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mImagePath:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string/jumbo v4, "orientation_in_degrees"

    invoke-static {p0}, Lcom/samsung/privilege/control/imagecropper/Util;->getOrientationInDegree(Landroid/app/Activity;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 471
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    :cond_4b
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    .line 475
    :goto_4e
    return-void

    .line 450
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_4f
    move-exception v0

    .line 452
    .local v0, "ex":Ljava/io/IOException;
    :try_start_50
    const-string/jumbo v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot open file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setResult(I)V

    .line 454
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V
    :try_end_73
    .catchall {:try_start_50 .. :try_end_73} :catchall_77

    .line 458
    invoke-static {v3}, Lcom/samsung/privilege/control/imagecropper/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4e

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_77
    move-exception v4

    invoke-static {v3}, Lcom/samsung/privilege/control/imagecropper/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 469
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_7c
    const-string/jumbo v4, "CropImage"

    const-string/jumbo v5, "not defined image url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public static showStorageToast(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 647
    invoke-static {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->calculatePicturesRemaining(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->showStorageToast(Landroid/app/Activity;I)V

    .line 648
    return-void
.end method

.method public static showStorageToast(Landroid/app/Activity;I)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "remaining"    # I

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 654
    .local v0, "noStorageText":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2b

    .line 656
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "checking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 659
    const v2, 0x7f090421

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    .end local v1    # "state":Ljava/lang/String;
    :cond_18
    :goto_18
    if-eqz v0, :cond_22

    .line 671
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 673
    :cond_22
    return-void

    .line 662
    .restart local v1    # "state":Ljava/lang/String;
    :cond_23
    const v2, 0x7f0903fb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 664
    .end local v1    # "state":Ljava/lang/String;
    :cond_2b
    const/4 v2, 0x1

    if-ge p1, v2, :cond_18

    .line 666
    const v2, 0x7f0903fc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private startFaceDetection()V
    .registers 5

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 320
    :goto_6
    return-void

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 291
    const/4 v0, 0x0

    const-string/jumbo v1, "Please wait\u2026"

    new-instance v2, Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$5;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/control/imagecropper/Util;->startBackgroundJob(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f1004b2

    const/4 v9, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 114
    const v7, 0x7f0400d0

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setContentView(I)V

    .line 120
    const v7, 0x7f1004b0

    :try_start_16
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 121
    .local v6, "txtHeadbar":Landroid/widget/TextView;
    const v7, 0x7f1004b2

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 122
    .local v5, "txtCrop":Landroid/widget/TextView;
    if-eqz v6, :cond_4d

    .line 123
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_HEADER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 124
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 126
    .local v2, "font_default":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4d} :catch_15d

    .line 132
    .end local v1    # "font":Landroid/graphics/Typeface;
    .end local v2    # "font_default":Landroid/graphics/Typeface;
    .end local v5    # "txtCrop":Landroid/widget/TextView;
    .end local v6    # "txtHeadbar":Landroid/widget/TextView;
    :cond_4d
    :goto_4d
    const v7, 0x7f10008a

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/privilege/control/imagecropper/CropImageView;

    iput-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mImageView:Lcom/samsung/privilege/control/imagecropper/CropImageView;

    .line 134
    invoke-static {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->showStorageToast(Landroid/app/Activity;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 137
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_eb

    .line 140
    const-string/jumbo v7, "circleCrop"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_74

    .line 146
    iput-boolean v9, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mCircleCrop:Z

    .line 147
    iput v9, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mAspectX:I

    .line 148
    iput v9, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mAspectY:I

    .line 151
    :cond_74
    const-string/jumbo v7, "image-path"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mImagePath:Ljava/lang/String;

    .line 153
    iget-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getImageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 154
    iget-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    const-string/jumbo v7, "aspectX"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fc

    const-string/jumbo v7, "aspectX"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_fc

    .line 158
    const-string/jumbo v7, "aspectX"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mAspectX:I

    .line 163
    const-string/jumbo v7, "aspectY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_105

    const-string/jumbo v7, "aspectY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_105

    .line 165
    const-string/jumbo v7, "aspectY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mAspectY:I

    .line 170
    const-string/jumbo v7, "outputX"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputX:I

    .line 171
    const-string/jumbo v7, "outputY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mOutputY:I

    .line 172
    const-string/jumbo v7, "scale"

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mScale:Z

    .line 173
    const-string/jumbo v7, "scaleUpIfNeeded"

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mScaleUp:Z

    .line 176
    :cond_eb
    iget-object v7, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_10e

    .line 178
    const-string/jumbo v7, "CropImage"

    const-string/jumbo v8, "finish!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    .line 243
    :goto_fb
    return-void

    .line 161
    :cond_fc
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "aspect_x must be integer"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_105
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "aspect_y must be integer"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_10e
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 185
    const v7, 0x7f1004af

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 187
    .local v3, "imgLeft":Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    new-instance v7, Lcom/samsung/privilege/control/imagecropper/CropImage$1;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$1;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0, v10}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/samsung/privilege/control/imagecropper/CropImage$2;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$2;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v7, 0x7f1004b4

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/samsung/privilege/control/imagecropper/CropImage$3;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$3;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v7, 0x7f1004b5

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/samsung/privilege/control/imagecropper/CropImage$4;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$4;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->startFaceDetection()V

    .line 242
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setRequestedOrientation(I)V

    goto :goto_fb

    .line 128
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v3    # "imgLeft":Landroid/widget/ImageView;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_15d
    move-exception v7

    goto/16 :goto_4d
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 487
    invoke-super {p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->onDestroy()V

    .line 489
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 491
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 494
    :cond_14
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 480
    invoke-super {p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->onPause()V

    .line 481
    invoke-static {}, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->instance()Lcom/samsung/privilege/control/imagecropper/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->mDecodingThreads:Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->cancelThreadDecoding(Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;)V

    .line 482
    return-void
.end method
