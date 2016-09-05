.class public Lcom/bzbs/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method private static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/16 v8, 0x32

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 42
    .line 46
    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    const/16 v3, 0x8

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 49
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 50
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 51
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 52
    const v3, 0x8000

    new-array v3, v3, [B

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 57
    new-instance v3, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 62
    const/4 v4, 0x6

    if-ne v3, v4, :cond_5c

    .line 63
    const/16 v1, 0x5a

    .line 70
    :cond_39
    :goto_39
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 75
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 82
    :goto_4b
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    if-lt v1, v8, :cond_67

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    if-lt v1, v8, :cond_67

    .line 83
    mul-int/lit8 v0, v0, 0x2

    goto :goto_4b

    .line 64
    :cond_5c
    const/4 v4, 0x3

    if-ne v3, v4, :cond_62

    .line 65
    const/16 v1, 0xb4

    goto :goto_39

    .line 66
    :cond_62
    if-ne v3, v6, :cond_39

    .line 67
    const/16 v1, 0x10e

    goto :goto_39

    .line 86
    :cond_67
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_6e} :catch_92
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_6e} :catch_90
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_6e} :catch_8e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_8c

    .line 90
    :try_start_6e
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_86
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6e .. :try_end_86} :catch_89
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_86} :catch_92
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_86} :catch_90
    .catchall {:try_start_6e .. :try_end_86} :catchall_8c

    move-result-object v0

    :goto_87
    move-object v7, v0

    .line 103
    :goto_88
    return-object v7

    .line 92
    :catch_89
    move-exception v0

    move-object v0, v7

    goto :goto_87

    .line 104
    :catchall_8c
    move-exception v0

    throw v0

    .line 102
    :catch_8e
    move-exception v0

    goto :goto_88

    .line 100
    :catch_90
    move-exception v0

    goto :goto_88

    .line 98
    :catch_92
    move-exception v0

    goto :goto_88
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v0}, Lcom/bzbs/util/ImageUtils;->a(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    .line 37
    :goto_9
    return-object v0

    .line 36
    :catch_a
    move-exception v0

    .line 37
    const/4 v0, 0x0

    goto :goto_9
.end method
