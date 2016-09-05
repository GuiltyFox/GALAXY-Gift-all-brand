.class public Lcom/bzbs/lib/survey/util/image/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    const/16 v0, 0x2d0

    sput v0, Lcom/bzbs/lib/survey/util/image/Utils;->a:I

    return-void
.end method

.method private static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/16 v8, 0x32

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 50
    .line 54
    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    const/16 v3, 0x8

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 57
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 58
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 59
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 60
    const v3, 0x8000

    new-array v3, v3, [B

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 65
    new-instance v3, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 70
    const/4 v4, 0x6

    if-ne v3, v4, :cond_5c

    .line 71
    const/16 v1, 0x5a

    .line 78
    :cond_39
    :goto_39
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 83
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 90
    :goto_4b
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    if-lt v1, v8, :cond_67

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    if-lt v1, v8, :cond_67

    .line 91
    mul-int/lit8 v0, v0, 0x2

    goto :goto_4b

    .line 72
    :cond_5c
    const/4 v4, 0x3

    if-ne v3, v4, :cond_62

    .line 73
    const/16 v1, 0xb4

    goto :goto_39

    .line 74
    :cond_62
    if-ne v3, v6, :cond_39

    .line 75
    const/16 v1, 0x10e

    goto :goto_39

    .line 94
    :cond_67
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_6e} :catch_aa
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_6e} :catch_cc
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_6e} :catch_ec
    .catchall {:try_start_7 .. :try_end_6e} :catchall_ca

    .line 98
    :try_start_6e
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
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
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_86} :catch_aa
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_86} :catch_cc
    .catchall {:try_start_6e .. :try_end_86} :catchall_ca

    move-result-object v0

    :goto_87
    move-object v7, v0

    .line 115
    :goto_88
    return-object v7

    .line 100
    :catch_89
    move-exception v0

    .line 101
    :try_start_8a
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Utils|decodeFile|Error in OutOfMemoryError|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_a8} :catch_aa
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a8} :catch_cc
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8a .. :try_end_a8} :catch_ec
    .catchall {:try_start_8a .. :try_end_a8} :catchall_ca

    move-object v0, v7

    goto :goto_87

    .line 107
    :catch_aa
    move-exception v0

    .line 108
    :try_start_ab
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Utils|decodeFile|Error in FileNotFoundException|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_ab .. :try_end_c9} :catchall_ca

    goto :goto_88

    .line 116
    :catchall_ca
    move-exception v0

    throw v0

    .line 110
    :catch_cc
    move-exception v0

    .line 111
    :try_start_cd
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Utils|decodeFile|Error in IOException|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 113
    :catch_ec
    move-exception v0

    .line 114
    const-string/jumbo v1, "MyLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Utils|decodeFile|Error in OutOfMemoryError|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_cd .. :try_end_10b} :catchall_ca

    goto/16 :goto_88
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/image/Utils;->a(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    .line 45
    :goto_9
    return-object v0

    .line 44
    :catch_a
    move-exception v0

    .line 45
    const/4 v0, 0x0

    goto :goto_9
.end method
