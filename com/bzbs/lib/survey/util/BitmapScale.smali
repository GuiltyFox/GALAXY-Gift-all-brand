.class public Lcom/bzbs/lib/survey/util/BitmapScale;
.super Ljava/lang/Object;
.source "BitmapScale.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resizeImage(Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p0, "PATH_ORIGINAL_IMAGE"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 28
    .local v1, "dir":Ljava/io/File;
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "b":Landroid/graphics/Bitmap;
    const/16 v6, 0x1e0

    invoke-static {v0, v6}, Lcom/bzbs/lib/survey/util/BitmapScale;->scaleToFitWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 31
    .local v5, "out":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v6, "resize.jpg"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v4, "file":Ljava/io/File;
    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    .local v3, "fOut":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 39
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_30} :catch_31

    .line 44
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    :goto_30
    return-object v4

    .line 40
    :catch_31
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_30
.end method

.method public static scaleToFitHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "height"    # I

    .prologue
    .line 22
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 23
    .local v0, "factor":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {p0, v1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static scaleToFitWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I

    .prologue
    .line 14
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 15
    .local v0, "factor":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
