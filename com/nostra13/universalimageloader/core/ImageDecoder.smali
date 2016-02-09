.class Lcom/nostra13/universalimageloader/core/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# instance fields
.field private final displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private final imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final imageUri:Ljava/net/URI;

.field private loggingEnabled:Z


# direct methods
.method constructor <init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .registers 4
    .param p1, "imageUri"    # Ljava/net/URI;
    .param p2, "imageDownloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageUri:Ljava/net/URI;

    .line 62
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 63
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 64
    return-void
.end method

.method private computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)I
    .registers 18
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p3, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v8

    .line 109
    .local v8, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v7

    .line 112
    .local v7, "targetHeight":I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 114
    iget-object v10, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v11, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageUri:Ljava/net/URI;

    iget-object v12, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v12}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/net/URI;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    .line 116
    .local v3, "imageStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_1f
    invoke-static {v3, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_72

    .line 118
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 121
    const/4 v6, 0x1

    .line 122
    .local v6, "scale":I
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 123
    .local v4, "imageWidth":I
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 124
    .local v2, "imageHeight":I
    div-int v9, v4, v8

    .line 125
    .local v9, "widthScale":I
    div-int v1, v2, v7

    .line 127
    .local v1, "heightScale":I
    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_83

    .line 128
    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_7e

    .line 129
    :goto_3a
    div-int/lit8 v10, v4, 0x2

    if-ge v10, v8, :cond_77

    div-int/lit8 v10, v2, 0x2

    if-ge v10, v7, :cond_77

    .line 149
    :cond_42
    :goto_42
    const/4 v10, 0x1

    if-ge v6, v10, :cond_46

    .line 150
    const/4 v6, 0x1

    .line 153
    :cond_46
    const-string v10, "Original image (%1$dx%2$d) is going to be subsampled to %3$dx%4$d view. Computed scale size - %5$d"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return v6

    .line 117
    .end local v1    # "heightScale":I
    .end local v2    # "imageHeight":I
    .end local v4    # "imageWidth":I
    .end local v6    # "scale":I
    .end local v9    # "widthScale":I
    :catchall_72
    move-exception v10

    .line 118
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 119
    throw v10

    .line 130
    .restart local v1    # "heightScale":I
    .restart local v2    # "imageHeight":I
    .restart local v4    # "imageWidth":I
    .restart local v6    # "scale":I
    .restart local v9    # "widthScale":I
    :cond_77
    div-int/lit8 v4, v4, 0x2

    .line 131
    div-int/lit8 v2, v2, 0x2

    .line 132
    mul-int/lit8 v6, v6, 0x2

    goto :goto_3a

    .line 135
    :cond_7e
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 137
    goto :goto_42

    .line 138
    :cond_83
    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_98

    .line 139
    :goto_89
    div-int/lit8 v10, v4, 0x2

    if-lt v10, v8, :cond_42

    div-int/lit8 v10, v2, 0x2

    if-lt v10, v7, :cond_42

    .line 140
    div-int/lit8 v4, v4, 0x2

    .line 141
    div-int/lit8 v2, v2, 0x2

    .line 142
    mul-int/lit8 v6, v6, 0x2

    goto :goto_89

    .line 145
    :cond_98
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_42
.end method

.method private getBitmapOptionsForImageDecoding(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/BitmapFactory$Options;
    .registers 6
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p3, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 102
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p2, v1, :cond_15

    const/4 v1, 0x1

    :goto_a
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 103
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    return-object v0

    .line 102
    :cond_15
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)I

    move-result v1

    goto :goto_a
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->loggingEnabled:Z

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_7
    return-void
.end method

.method private scaleImageExactly(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "subsampledBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p4, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 159
    .local v5, "srcWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v4, v7

    .line 161
    .local v4, "srcHeight":F
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v6, v5, v7

    .line 162
    .local v6, "widthScale":F
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v4, v7

    .line 166
    .local v2, "heightScale":F
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p4, v7, :cond_20

    cmpl-float v7, v6, v2

    if-gez v7, :cond_28

    :cond_20
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p4, v7, :cond_7c

    cmpg-float v7, v6, v2

    if-gez v7, :cond_7c

    .line 167
    :cond_28
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 168
    .local v1, "destWidth":I
    div-float v7, v4, v6

    float-to-int v0, v7

    .line 175
    .local v0, "destHeight":I
    :goto_2f
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p3, v7, :cond_3d

    int-to-float v7, v1

    cmpg-float v7, v7, v5

    if-gez v7, :cond_3d

    int-to-float v7, v0

    cmpg-float v7, v7, v4

    if-ltz v7, :cond_4b

    .line 176
    :cond_3d
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p3, v7, :cond_84

    int-to-float v7, v1

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_84

    int-to-float v7, v0

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_84

    .line 177
    :cond_4b
    const/4 v7, 0x1

    invoke-static {p1, v1, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 178
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eq v3, p1, :cond_55

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_55
    const-string v7, "Subsampled image (%1$dx%2$d) was scaled to %3$dx%4$d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    float-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    float-to-int v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :goto_7b
    return-object v3

    .line 170
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    .end local v3    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_7c
    div-float v7, v5, v2

    float-to-int v1, v7

    .line 171
    .restart local v1    # "destWidth":I
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    .restart local v0    # "destHeight":I
    goto :goto_2f

    .line 183
    :cond_84
    move-object v3, p1

    .restart local v3    # "scaledBitmap":Landroid/graphics/Bitmap;
    goto :goto_7b
.end method


# virtual methods
.method public decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p3, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->getBitmapOptionsForImageDecoding(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 80
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageUri:Ljava/net/URI;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/net/URI;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    .line 83
    .local v1, "imageStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    :try_start_14
    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2b

    move-result-object v2

    .line 85
    .local v2, "subsampledBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 87
    if-nez v2, :cond_30

    .line 88
    const-string v4, "Image can\'t be decoded [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageUri:Ljava/net/URI;

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :goto_2a
    return-object v3

    .line 84
    .end local v2    # "subsampledBitmap":Landroid/graphics/Bitmap;
    :catchall_2b
    move-exception v3

    .line 85
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 86
    throw v3

    .line 93
    .restart local v2    # "subsampledBitmap":Landroid/graphics/Bitmap;
    :cond_30
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq p2, v3, :cond_38

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p2, v3, :cond_3c

    .line 94
    :cond_38
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->scaleImageExactly(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3c
    move-object v3, v2

    .line 97
    goto :goto_2a
.end method

.method setLoggingEnabled(Z)V
    .registers 2
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->loggingEnabled:Z

    .line 191
    return-void
.end method
