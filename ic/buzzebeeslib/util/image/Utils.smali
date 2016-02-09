.class public Lic/buzzebeeslib/util/image/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static MAX_IMAGE_DIMENSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    const/16 v0, 0x2d0

    sput v0, Lic/buzzebeeslib/util/image/Utils;->MAX_IMAGE_DIMENSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    const/16 v0, 0x400

    .line 28
    .local v0, "buffer_size":I
    const/16 v3, 0x400

    :try_start_4
    new-array v1, v3, [B

    .line 30
    .local v1, "bytes":[B
    :goto_6
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 31
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 38
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    :goto_10
    return-void

    .line 33
    .restart local v1    # "bytes":[B
    .restart local v2    # "count":I
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_6

    .line 35
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
    .line 128
    const/4 v7, 0x0

    .line 130
    .local v7, "croppedBitmap":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 132
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000

    const/high16 v1, 0x3f800000

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x13b

    div-int/lit16 v10, v0, 0x32f

    .line 153
    .local v10, "height_fix":I
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "height_fix="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v11, v0, v10

    .line 155
    .local v11, "height_remain":I
    mul-int v0, p1, v11

    div-int/lit8 v2, v0, 0x64

    .line 156
    .local v2, "y":I
    const-string v0, "buzzebees.WebImageCacheSD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move v4, v10

    .line 159
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v2, v0, :cond_63

    .line 160
    const/4 v2, 0x0

    .line 162
    :cond_63
    add-int v0, v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_71

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v4, v0, v2

    .line 166
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

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_99
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_99} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_99} :catch_cf
    .catchall {:try_start_1 .. :try_end_99} :catchall_f5

    move-result-object v7

    .line 178
    if-eqz v7, :cond_103

    .line 179
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 180
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_a5
    const/4 v8, 0x0

    .end local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    .local v8, "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_a6
    move-object p0, v7

    move-object v7, v8

    .line 176
    .end local v2    # "y":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "height_fix":I
    .end local v11    # "height_remain":I
    .end local p0    # "bitmapOriginal":Landroid/graphics/Bitmap;
    .restart local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_a8
    :goto_a8
    return-object p0

    .line 170
    .restart local p0    # "bitmapOriginal":Landroid/graphics/Bitmap;
    :catch_a9
    move-exception v12

    .line 171
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

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_aa .. :try_end_c2} :catchall_f5

    .line 178
    if-eqz v7, :cond_a8

    .line 179
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 180
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_cd
    const/4 v7, 0x0

    goto :goto_a8

    .line 174
    .end local v12    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_cf
    move-exception v9

    .line 175
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_d0
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

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_d0 .. :try_end_e8} :catchall_f5

    .line 178
    if-eqz v7, :cond_a8

    .line 179
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 180
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_f3
    const/4 v7, 0x0

    goto :goto_a8

    .line 177
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_f5
    move-exception v0

    .line 178
    if-eqz v7, :cond_102

    .line 179
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 180
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_101
    const/4 v7, 0x0

    .line 190
    :cond_102
    throw v0

    .restart local v2    # "y":I
    .restart local v4    # "height":I
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "height_fix":I
    .restart local v11    # "height_remain":I
    :cond_103
    move-object v8, v7

    .end local v7    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto :goto_a6
.end method

.method private static decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 54
    .local v10, "correctBmp":Landroid/graphics/Bitmap;
    :try_start_2
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v13, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    const/16 v2, 0x8

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 60
    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, v13, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 65
    new-instance v12, Landroid/media/ExifInterface;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 66
    .local v12, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v16

    .line 68
    .local v16, "orientation":I
    const/4 v9, 0x0

    .line 70
    .local v9, "angle":I
    const/4 v2, 0x6

    move/from16 v0, v16

    if-ne v0, v2, :cond_88

    .line 71
    const/16 v9, 0x5a

    .line 78
    :cond_36
    :goto_36
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    .local v6, "mat":Landroid/graphics/Matrix;
    int-to-float v2, v9

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 83
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 86
    const/16 v8, 0x32

    .line 89
    .local v8, "REQUIRED_SIZE":I
    const/16 v17, 0x1

    .line 90
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

    .line 94
    :cond_62
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v14, "o2":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_6b} :catch_b6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6b} :catch_d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_6b} :catch_ec

    .line 98
    :try_start_6b
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
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

    .line 115
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

    .line 72
    .restart local v9    # "angle":I
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v13    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "orientation":I
    :cond_88
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_90

    .line 73
    const/16 v9, 0xb4

    .line 74
    goto :goto_36

    :cond_90
    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_36

    .line 75
    const/16 v9, 0x10e

    goto :goto_36

    .line 91
    .restart local v6    # "mat":Landroid/graphics/Matrix;
    .restart local v8    # "REQUIRED_SIZE":I
    .restart local v17    # "scale":I
    :cond_99
    mul-int/lit8 v17, v17, 0x2

    goto :goto_4e

    .line 100
    .restart local v14    # "o2":Landroid/graphics/BitmapFactory$Options;
    :catch_9c
    move-exception v15

    .line 101
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

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_b5} :catch_b6
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b5} :catch_d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9d .. :try_end_b5} :catch_ec

    goto :goto_86

    .line 107
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

    .line 108
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

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x0

    goto :goto_87

    .line 110
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :catch_d1
    move-exception v11

    .line 111
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

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x0

    goto :goto_87

    .line 113
    .end local v11    # "e":Ljava/io/IOException;
    :catch_ec
    move-exception v15

    .line 114
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

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x0

    goto :goto_87
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "orientation"

    aput-object v1, v2, v7

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v8, :cond_1c

    .line 263
    const/4 v0, -0x1

    .line 267
    :goto_1b
    return v0

    .line 266
    :cond_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1b
.end method

.method public static scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 197
    .local v12, "is":Ljava/io/InputStream;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 199
    .local v10, "dbo":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 206
    const/4 v2, 0x0

    invoke-static {v12, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 207
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 210
    invoke-static/range {p0 .. p1}, Lic/buzzebeeslib/util/image/Utils;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 212
    .local v15, "orientation":I
    const/16 v2, 0x5a

    if-eq v15, v2, :cond_25

    const/16 v2, 0x10e

    if-ne v15, v2, :cond_ab

    .line 213
    :cond_25
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 214
    .local v17, "rotatedWidth":I
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 221
    .local v16, "rotatedHeight":I
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 222
    sget v2, Lic/buzzebeeslib/util/image/Utils;->MAX_IMAGE_DIMENSION:I

    move/from16 v0, v17

    if-gt v0, v2, :cond_43

    sget v2, Lic/buzzebeeslib/util/image/Utils;->MAX_IMAGE_DIMENSION:I

    move/from16 v0, v16

    if-le v0, v2, :cond_b5

    .line 223
    :cond_43
    move/from16 v0, v17

    int-to-float v2, v0

    sget v3, Lic/buzzebeeslib/util/image/Utils;->MAX_IMAGE_DIMENSION:I

    int-to-float v3, v3

    div-float v19, v2, v3

    .line 224
    .local v19, "widthRatio":F
    move/from16 v0, v16

    int-to-float v2, v0

    sget v3, Lic/buzzebeeslib/util/image/Utils;->MAX_IMAGE_DIMENSION:I

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 225
    .local v11, "heightRatio":F
    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 228
    .local v13, "maxRatio":F
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    float-to-int v2, v13

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 230
    const/4 v2, 0x0

    invoke-static {v12, v2, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 234
    .end local v11    # "heightRatio":F
    .end local v13    # "maxRatio":F
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "widthRatio":F
    .local v1, "srcBitmap":Landroid/graphics/Bitmap;
    :goto_66
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 239
    if-lez v15, :cond_83

    .line 240
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 241
    .local v6, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v15

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 243
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 246
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_83
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 247
    .local v18, "type":Ljava/lang/String;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v2, "image/png"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 249
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 253
    :cond_a3
    :goto_a3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 254
    .local v8, "bMapArray":[B
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 255
    return-object v8

    .line 216
    .end local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bMapArray":[B
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "rotatedHeight":I
    .end local v17    # "rotatedWidth":I
    .end local v18    # "type":Ljava/lang/String;
    :cond_ab
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 217
    .restart local v17    # "rotatedWidth":I
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .restart local v16    # "rotatedHeight":I
    goto/16 :goto_2d

    .line 232
    :cond_b5
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    goto :goto_66

    .line 250
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "type":Ljava/lang/String;
    :cond_ba
    const-string v2, "image/jpg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce

    const-string v2, "image/jpeg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 251
    :cond_ce
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_a3
.end method

.method public static showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lic/buzzebeeslib/util/image/Utils;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 45
    .end local v1    # "file":Ljava/io/File;
    :goto_9
    return-object v2

    .line 44
    :catch_a
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_9
.end method
