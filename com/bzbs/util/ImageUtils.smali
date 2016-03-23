.class public Lcom/bzbs/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 17
    const/16 v0, 0x400

    .line 20
    .local v0, "buffer_size":I
    const/16 v3, 0x400

    :try_start_4
    new-array v1, v3, [B

    .line 22
    .local v1, "bytes":[B
    :goto_6
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 23
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 30
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :goto_10
    return-void

    .line 25
    .restart local v1    # "bytes":[B
    .restart local v2    # "count":I
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_6

    .line 27
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :catch_16
    move-exception v3

    goto :goto_10
.end method

.method public static cropCoverImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "bitmapOriginal"    # Landroid/graphics/Bitmap;
    .param p1, "cover_offset_y"    # I

    .prologue
    .line 116
    const/4 v7, 0x0

    .line 118
    .local v7, "croppedBitmap":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 120
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000

    const/high16 v1, 0x3f800000

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 138
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x13b

    div-int/lit16 v10, v0, 0x32f

    .line 139
    .local v10, "height_fix":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v11, v0, v10

    .line 140
    .local v11, "height_remain":I
    mul-int v0, p1, v11

    div-int/lit8 v2, v0, 0x64

    .line 142
    .local v2, "y":I
    move v4, v10

    .line 143
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v2, v0, :cond_27

    .line 144
    const/4 v2, 0x0

    .line 146
    :cond_27
    add-int v0, v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_35

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v4, v0, v2

    .line 150
    :cond_35
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_3f} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_5d
    .catchall {:try_start_1 .. :try_end_3f} :catchall_6b

    move-result-object v7

    .line 159
    if-eqz v7, :cond_79

    .line 160
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 161
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_4b
    const/4 v8, 0x0

    .end local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    .local v8, "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_4c
    move-object p0, v7

    move-object v7, v8

    .end local v2    # "y":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "height_fix":I
    .end local v11    # "height_remain":I
    .end local p0    # "bitmapOriginal":Landroid/graphics/Bitmap;
    .restart local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_4e
    :goto_4e
    return-object p0

    .line 153
    .restart local p0    # "bitmapOriginal":Landroid/graphics/Bitmap;
    :catch_4f
    move-exception v12

    .line 159
    .local v12, "oom":Ljava/lang/OutOfMemoryError;
    if-eqz v7, :cond_4e

    .line 160
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 161
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_5b
    const/4 v7, 0x0

    goto :goto_4e

    .line 156
    .end local v12    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_5d
    move-exception v9

    .line 159
    .local v9, "ex":Ljava/lang/Exception;
    if-eqz v7, :cond_4e

    .line 160
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 161
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_69
    const/4 v7, 0x0

    goto :goto_4e

    .line 159
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_6b
    move-exception v0

    if-eqz v7, :cond_78

    .line 160
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 161
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_77
    const/4 v7, 0x0

    :cond_78
    throw v0

    .restart local v2    # "y":I
    .restart local v4    # "height":I
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "height_fix":I
    .restart local v11    # "height_remain":I
    :cond_79
    move-object v8, v7

    .end local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto :goto_4c
.end method

.method private static decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 46
    .local v10, "correctBmp":Landroid/graphics/Bitmap;
    :try_start_2
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v13, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    const/16 v2, 0x8

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 49
    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 50
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 51
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 52
    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, v13, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 57
    new-instance v12, Landroid/media/ExifInterface;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 58
    .local v12, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v16

    .line 60
    .local v16, "orientation":I
    const/4 v9, 0x0

    .line 62
    .local v9, "angle":I
    const/4 v2, 0x6

    move/from16 v0, v16

    if-ne v0, v2, :cond_66

    .line 63
    const/16 v9, 0x5a

    .line 70
    :cond_37
    :goto_37
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    .local v6, "mat":Landroid/graphics/Matrix;
    int-to-float v2, v9

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 75
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    const/16 v8, 0x32

    .line 81
    .local v8, "REQUIRED_SIZE":I
    const/16 v17, 0x1

    .line 82
    .local v17, "scale":I
    :goto_4f
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v2, v17

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_77

    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v2, v17

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_77

    .line 83
    mul-int/lit8 v17, v17, 0x2

    goto :goto_4f

    .line 64
    .end local v6    # "mat":Landroid/graphics/Matrix;
    .end local v8    # "REQUIRED_SIZE":I
    .end local v17    # "scale":I
    :cond_66
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_6e

    .line 65
    const/16 v9, 0xb4

    goto :goto_37

    .line 66
    :cond_6e
    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_37

    .line 67
    const/16 v9, 0x10e

    goto :goto_37

    .line 86
    .restart local v6    # "mat":Landroid/graphics/Matrix;
    .restart local v8    # "REQUIRED_SIZE":I
    .restart local v17    # "scale":I
    :cond_77
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v14, "o2":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_80
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_80} :catch_9d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_80} :catch_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_80} :catch_a3
    .catchall {:try_start_2 .. :try_end_80} :catchall_a6

    .line 90
    :try_start_80
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_9a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_80 .. :try_end_9a} :catch_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_9a} :catch_9d
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9a} :catch_a0
    .catchall {:try_start_80 .. :try_end_9a} :catchall_a6

    move-result-object v10

    :goto_9b
    move-object v2, v10

    .line 103
    .end local v6    # "mat":Landroid/graphics/Matrix;
    .end local v8    # "REQUIRED_SIZE":I
    .end local v9    # "angle":I
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v13    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "orientation":I
    .end local v17    # "scale":I
    :goto_9c
    return-object v2

    .line 98
    :catch_9d
    move-exception v11

    .line 99
    .local v11, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_9c

    .line 100
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :catch_a0
    move-exception v11

    .line 101
    .local v11, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_9c

    .line 102
    .end local v11    # "e":Ljava/io/IOException;
    :catch_a3
    move-exception v15

    .line 103
    .local v15, "oom":Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x0

    goto :goto_9c

    .line 104
    .end local v15    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_a6
    move-exception v2

    throw v2

    .line 92
    .restart local v6    # "mat":Landroid/graphics/Matrix;
    .restart local v8    # "REQUIRED_SIZE":I
    .restart local v9    # "angle":I
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v13    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "o2":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "orientation":I
    .restart local v17    # "scale":I
    :catch_a8
    move-exception v2

    goto :goto_9b
.end method

.method public static showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/bzbs/util/ImageUtils;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 37
    .end local v1    # "file":Ljava/io/File;
    :goto_9
    return-object v2

    .line 36
    :catch_a
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_9
.end method
