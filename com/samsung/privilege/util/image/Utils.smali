.class public Lcom/samsung/privilege/util/image/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 19
    const/16 v0, 0x400

    .line 22
    .local v0, "buffer_size":I
    const/16 v3, 0x400

    :try_start_4
    new-array v1, v3, [B

    .line 24
    .local v1, "bytes":[B
    :goto_6
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 25
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 32
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :goto_10
    return-void

    .line 27
    .restart local v1    # "bytes":[B
    .restart local v2    # "count":I
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_6

    .line 29
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :catch_16
    move-exception v3

    goto :goto_10
.end method

.method private static decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 48
    .local v10, "correctBmp":Landroid/graphics/Bitmap;
    :try_start_2
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v13, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    const/16 v2, 0x8

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 52
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 54
    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, v13, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 59
    new-instance v12, Landroid/media/ExifInterface;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 60
    .local v12, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v16

    .line 62
    .local v16, "orientation":I
    const/4 v9, 0x0

    .line 64
    .local v9, "angle":I
    const/4 v2, 0x6

    move/from16 v0, v16

    if-ne v0, v2, :cond_88

    .line 65
    const/16 v9, 0x5a

    .line 72
    :cond_36
    :goto_36
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .local v6, "mat":Landroid/graphics/Matrix;
    int-to-float v2, v9

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 77
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 80
    const/16 v8, 0x32

    .line 83
    .local v8, "REQUIRED_SIZE":I
    const/16 v17, 0x1

    .line 84
    .local v17, "scale":I
    :goto_4e
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v2, v17

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_62

    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v2, v17

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_99

    .line 88
    :cond_62
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v14, "o2":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_6b} :catch_b6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6b} :catch_d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_6b} :catch_ec

    .line 92
    :try_start_6b
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6b .. :try_end_85} :catch_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_85} :catch_b6
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_85} :catch_d1

    move-result-object v10

    :goto_86
    move-object v2, v10

    .line 109
    .end local v6    # "mat":Landroid/graphics/Matrix;
    .end local v8    # "REQUIRED_SIZE":I
    .end local v9    # "angle":I
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v13    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "orientation":I
    .end local v17    # "scale":I
    :goto_87
    return-object v2

    .line 66
    .restart local v9    # "angle":I
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v13    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "orientation":I
    :cond_88
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_90

    .line 67
    const/16 v9, 0xb4

    .line 68
    goto :goto_36

    :cond_90
    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_36

    .line 69
    const/16 v9, 0x10e

    goto :goto_36

    .line 85
    .restart local v6    # "mat":Landroid/graphics/Matrix;
    .restart local v8    # "REQUIRED_SIZE":I
    .restart local v17    # "scale":I
    :cond_99
    mul-int/lit8 v17, v17, 0x2

    goto :goto_4e

    .line 94
    .restart local v14    # "o2":Landroid/graphics/BitmapFactory$Options;
    :catch_9c
    move-exception v15

    .line 95
    .local v15, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_9d
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Utils|decodeFile|Error in OutOfMemoryError|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_b5} :catch_b6
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b5} :catch_d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9d .. :try_end_b5} :catch_ec

    goto :goto_86

    .line 101
    .end local v6    # "mat":Landroid/graphics/Matrix;
    .end local v8    # "REQUIRED_SIZE":I
    .end local v9    # "angle":I
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v13    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v15    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v16    # "orientation":I
    .end local v17    # "scale":I
    :catch_b6
    move-exception v11

    .line 102
    .local v11, "e":Ljava/io/FileNotFoundException;
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Utils|decodeFile|Error in FileNotFoundException|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x0

    goto :goto_87

    .line 104
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :catch_d1
    move-exception v11

    .line 105
    .local v11, "e":Ljava/io/IOException;
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Utils|decodeFile|Error in IOException|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x0

    goto :goto_87

    .line 107
    .end local v11    # "e":Ljava/io/IOException;
    :catch_ec
    move-exception v15

    .line 108
    .restart local v15    # "oom":Ljava/lang/OutOfMemoryError;
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Utils|decodeFile|Error in OutOfMemoryError|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x0

    goto :goto_87
.end method

.method public static showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/Utils;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 39
    .end local v1    # "file":Ljava/io/File;
    :goto_9
    return-object v2

    .line 38
    :catch_a
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_9
.end method
