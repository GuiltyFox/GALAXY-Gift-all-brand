.class public Lcom/samsung/privilege/control/imagecropper/CropImage;
.super Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;
.source "CropImage.java"


# instance fields
.field final a:I

.field b:Z

.field c:Z

.field d:Lcom/samsung/privilege/control/imagecropper/HighlightView;

.field e:Ljava/lang/Runnable;

.field private f:Landroid/graphics/Bitmap$CompressFormat;

.field private g:Landroid/net/Uri;

.field private h:Z

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/samsung/privilege/control/imagecropper/CropImageView;

.field private q:Landroid/content/ContentResolver;

.field private r:Landroid/graphics/Bitmap;

.field private s:Ljava/lang/String;

.field private t:Z

.field private final u:Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;-><init>()V

    .line 64
    const/16 v0, 0x400

    iput v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->a:I

    .line 81
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->g:Landroid/net/Uri;

    .line 83
    iput-boolean v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->h:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->i:Z

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->j:Landroid/os/Handler;

    .line 103
    iput-boolean v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->t:Z

    .line 105
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;

    invoke-direct {v0}, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->u:Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;

    .line 486
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/CropImage$7;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$7;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    :goto_6
    return-void

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->p:Lcom/samsung/privilege/control/imagecropper/CropImageView;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/imagecropper/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 292
    const/4 v0, 0x0

    const-string/jumbo v1, "Please wait\u2026"

    new-instance v2, Lcom/samsung/privilege/control/imagecropper/CropImage$5;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$5;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->j:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_6
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 637
    invoke-static {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Landroid/app/Activity;I)V

    .line 638
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .registers 4

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 644
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2b

    .line 646
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 647
    const-string/jumbo v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 649
    const v0, 0x7f090291

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    :cond_18
    :goto_18
    if-eqz v0, :cond_22

    .line 661
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 663
    :cond_22
    return-void

    .line 652
    :cond_23
    const v0, 0x7f090286

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 654
    :cond_2b
    const/4 v1, 0x1

    if-ge p1, v1, :cond_18

    .line 656
    const v0, 0x7f090287

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 436
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->g:Landroid/net/Uri;

    if-eqz v0, :cond_7c

    .line 437
    const/4 v1, 0x0

    .line 439
    :try_start_5
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->q:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_16

    .line 441
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_4f
    .catchall {:try_start_5 .. :try_end_16} :catchall_77

    .line 449
    :cond_16
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Ljava/io/Closeable;)V

    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 455
    const-string/jumbo v0, "image-path"

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string/jumbo v0, "orientation_in_degrees"

    invoke-static {p0}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 461
    :goto_42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    :cond_4b
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    .line 465
    :goto_4e
    return-void

    .line 443
    :catch_4f
    move-exception v0

    .line 444
    :try_start_50
    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setResult(I)V

    .line 446
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V
    :try_end_73
    .catchall {:try_start_50 .. :try_end_73} :catchall_77

    .line 449
    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Ljava/io/Closeable;)V

    goto :goto_4e

    :catchall_77
    move-exception v0

    invoke-static {v1}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 459
    :cond_7c
    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "not defined image url"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method static synthetic a(Lcom/samsung/privilege/control/imagecropper/CropImage;)V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)I
    .registers 3

    .prologue
    .line 671
    :try_start_0
    const-string/jumbo v0, ""

    .line 672
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 673
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 674
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    :goto_18
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x48c35000    # 400000.0f

    div-float/2addr v0, v1

    .line 680
    float-to-int v0, v0

    .line 686
    :goto_2d
    return v0

    .line 676
    :cond_2e
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_18

    .line 682
    :catch_37
    move-exception v0

    .line 686
    const/4 v0, -0x2

    goto :goto_2d
.end method

.method static synthetic b(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/16 v6, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 256
    :try_start_8
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->q:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 259
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 262
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 263
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 266
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, v6, :cond_25

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v6, :cond_4a

    .line 267
    :cond_25
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v4, v0

    div-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    int-to-double v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    .line 270
    :cond_4a
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 271
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 272
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->q:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 273
    const/4 v0, 0x0

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_5f} :catch_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_5f} :catch_84

    .line 282
    :goto_5f
    return-object v0

    .line 277
    :catch_60
    move-exception v0

    .line 278
    const-string/jumbo v0, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    move-object v0, v1

    .line 282
    goto :goto_5f

    .line 279
    :catch_84
    move-exception v0

    .line 280
    const-string/jumbo v0, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

.method private b()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 327
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->c:Z

    if-eqz v0, :cond_9

    .line 433
    :cond_8
    :goto_8
    return-void

    .line 330
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->d:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    if-eqz v0, :cond_8

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->c:Z

    .line 337
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->d:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 340
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 346
    :try_start_1e
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->i:Z

    if-eqz v0, :cond_c2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_24
    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_c6

    move-result-object v1

    .line 350
    if-eqz v1, :cond_8

    .line 356
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    iget-object v6, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v2, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 361
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->i:Z

    if-eqz v0, :cond_5c

    .line 367
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 368
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 369
    int-to-float v5, v3

    div-float/2addr v5, v7

    int-to-float v4, v4

    div-float/2addr v4, v7

    int-to-float v3, v3

    div-float/2addr v3, v7

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v4, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 370
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 371
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 375
    :cond_5c
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->m:I

    if-eqz v0, :cond_137

    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->n:I

    if-eqz v0, :cond_137

    .line 376
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->o:Z

    if-eqz v0, :cond_c8

    .line 379
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->m:I

    iget v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->n:I

    iget-boolean v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->t:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    if-eq v1, v0, :cond_82

    .line 381
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 382
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_124

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_9e

    const-string/jumbo v2, "return-data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 420
    :cond_9e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 421
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    const/4 v0, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    goto/16 :goto_8

    .line 346
    :cond_c2
    :try_start_c2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c4} :catch_c6

    goto/16 :goto_24

    .line 347
    :catch_c6
    move-exception v0

    .line 348
    throw v0

    .line 391
    :cond_c8
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->m:I

    iget v2, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->n:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 394
    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->d:Lcom/samsung/privilege/control/imagecropper/HighlightView;

    invoke-virtual {v3}, Lcom/samsung/privilege/control/imagecropper/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 395
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->m:I

    iget v6, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->n:I

    invoke-direct {v4, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 397
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 398
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 401
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 404
    neg-int v5, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 407
    iget-object v5, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v3, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 410
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 411
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_82

    .line 426
    :cond_124
    const v1, 0x7f09029d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/control/imagecropper/CropImage$6;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage$6;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->j:Landroid/os/Handler;

    invoke-static {p0, v10, v1, v2, v0}, Lcom/samsung/privilege/control/imagecropper/Util;->a(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_8

    :cond_137
    move-object v0, v1

    goto/16 :goto_82
.end method

.method static synthetic b(Lcom/samsung/privilege/control/imagecropper/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/control/imagecropper/CropImage;)Lcom/samsung/privilege/control/imagecropper/CropImageView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->p:Lcom/samsung/privilege/control/imagecropper/CropImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/control/imagecropper/CropImage;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/control/imagecropper/CropImage;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/samsung/privilege/control/imagecropper/CropImage;)I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->k:I

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/control/imagecropper/CropImage;)I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->l:I

    return v0
.end method

.method static synthetic h(Lcom/samsung/privilege/control/imagecropper/CropImage;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->h:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const v5, 0x7f1002fc

    const/4 v4, 0x1

    .line 110
    invoke-super {p0, p1}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->q:Landroid/content/ContentResolver;

    .line 115
    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setContentView(I)V

    .line 121
    const v0, 0x7f1002fa

    :try_start_16
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    const v1, 0x7f1002fc

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    if-eqz v0, :cond_4d

    .line 124
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4d} :catch_179

    .line 133
    :cond_4d
    :goto_4d
    const v0, 0x7f10008e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/CropImageView;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->p:Lcom/samsung/privilege/control/imagecropper/CropImageView;

    .line 135
    invoke-static {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_107

    .line 141
    const-string/jumbo v1, "circleCrop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 147
    iput-boolean v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->i:Z

    .line 148
    iput v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->k:I

    .line 149
    iput v4, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->l:I

    .line 152
    :cond_74
    const-string/jumbo v1, "image-path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->s:Ljava/lang/String;

    .line 153
    const-string/jumbo v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mImagePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->s:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->g:Landroid/net/Uri;

    .line 156
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->s:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/privilege/control/imagecropper/CropImage;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    .line 158
    const-string/jumbo v1, "aspectX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    const-string/jumbo v1, "aspectX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_118

    .line 160
    const-string/jumbo v1, "aspectX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->k:I

    .line 165
    const-string/jumbo v1, "aspectY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_121

    const-string/jumbo v1, "aspectY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_121

    .line 167
    const-string/jumbo v1, "aspectY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->l:I

    .line 172
    const-string/jumbo v1, "outputX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->m:I

    .line 173
    const-string/jumbo v1, "outputY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->n:I

    .line 174
    const-string/jumbo v1, "scale"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->o:Z

    .line 175
    const-string/jumbo v1, "scaleUpIfNeeded"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->t:Z

    .line 178
    :cond_107
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12a

    .line 180
    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "finish!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->finish()V

    .line 245
    :goto_117
    return-void

    .line 163
    :cond_118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "aspect_x must be integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "aspect_y must be integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_12a
    invoke-virtual {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 187
    const v0, 0x7f1002f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    new-instance v1, Lcom/samsung/privilege/control/imagecropper/CropImage$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$1;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/control/imagecropper/CropImage$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$2;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v0, 0x7f1002fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/control/imagecropper/CropImage$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$3;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v0, 0x7f1002ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/control/imagecropper/CropImage$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/control/imagecropper/CropImage$4;-><init>(Lcom/samsung/privilege/control/imagecropper/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/CropImage;->a()V

    .line 244
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/control/imagecropper/CropImage;->setRequestedOrientation(I)V

    goto :goto_117

    .line 129
    :catch_179
    move-exception v0

    goto/16 :goto_4d
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 477
    invoke-super {p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->onDestroy()V

    .line 479
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    .line 480
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 481
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 484
    :cond_14
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 470
    invoke-super {p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->onPause()V

    .line 471
    invoke-static {}, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->a()Lcom/samsung/privilege/control/imagecropper/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/CropImage;->u:Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->a(Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;)V

    .line 472
    return-void
.end method
