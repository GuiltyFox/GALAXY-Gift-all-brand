.class Lcom/koushikdutta/ion/loader/VideoLoader$1;
.super Ljava/lang/Object;
.source "VideoLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/VideoLoader;->a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

.field final synthetic g:Lcom/koushikdutta/ion/loader/VideoLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/VideoLoader;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;IILjava/lang/String;Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;)V
    .registers 8

    .prologue
    .line 56
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->g:Lcom/koushikdutta/ion/loader/VideoLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    iput p4, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->c:I

    iput p5, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->d:I

    iput-object p6, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->f:Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 60
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 91
    :goto_13
    return-void

    .line 67
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/koushikdutta/ion/loader/VideoLoader;->a()Z

    move-result v1

    if-nez v1, :cond_20

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_40

    .line 68
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :goto_29
    if-nez v0, :cond_49

    .line 72
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "video bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_34} :catch_34
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_34} :catch_ae

    .line 86
    :catch_34
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    goto :goto_13

    .line 70
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/loader/VideoLoader;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_29

    .line 74
    :cond_49
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->c:I

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_98

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->d:I

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_98

    .line 76
    iget v2, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->c:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 77
    iget v3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->d:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 79
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_98

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :cond_98
    new-instance v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v3, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->f:Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

    iget-object v4, v4, Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 83
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v0, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_40 .. :try_end_ac} :catch_34
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_ac} :catch_ae

    goto/16 :goto_13

    .line 88
    :catch_ae
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/VideoLoader$1;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    goto/16 :goto_13
.end method
