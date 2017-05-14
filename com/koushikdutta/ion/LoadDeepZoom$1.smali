.class Lcom/koushikdutta/ion/LoadDeepZoom$1;
.super Ljava/lang/Object;
.source "LoadDeepZoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/LoadDeepZoom;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/koushikdutta/ion/Response;

.field final synthetic c:Lcom/koushikdutta/ion/LoadDeepZoom;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/LoadDeepZoom;Ljava/io/File;Lcom/koushikdutta/ion/Response;)V
    .registers 4

    .prologue
    .line 51
    iput-object p1, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iput-object p2, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->b:Lcom/koushikdutta/ion/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 54
    .line 58
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v0, v0, Lcom/koushikdutta/ion/LoadDeepZoom;->d:Lcom/koushikdutta/async/util/FileCache;

    if-eqz v0, :cond_8a

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v0, v0, Lcom/koushikdutta/ion/LoadDeepZoom;->d:Lcom/koushikdutta/async/util/FileCache;

    iget-object v2, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v2, v2, Lcom/koushikdutta/ion/LoadDeepZoom;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->a:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;[Ljava/io/File;)V

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v0, v0, Lcom/koushikdutta/ion/LoadDeepZoom;->d:Lcom/koushikdutta/async/util/FileCache;

    iget-object v2, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v2, v2, Lcom/koushikdutta/ion/LoadDeepZoom;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/util/FileCache;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    :goto_28
    iget-object v2, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v2, v2, Lcom/koushikdutta/ion/LoadDeepZoom;->b:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v2}, Lcom/koushikdutta/ion/Ion;->h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Ljava/io/File;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 67
    new-instance v3, Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 68
    iget-object v4, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-boolean v4, v4, Lcom/koushikdutta/ion/LoadDeepZoom;->f:Z

    if-eqz v4, :cond_8d

    const-string/jumbo v4, "image/gif"

    iget-object v5, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v0, v0, Lcom/koushikdutta/ion/LoadDeepZoom;->d:Lcom/koushikdutta/async/util/FileCache;

    iget-object v4, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v4, v4, Lcom/koushikdutta/ion/LoadDeepZoom;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/koushikdutta/async/util/FileCache;->c(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 71
    new-instance v0, Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/koushikdutta/ion/gif/GifDecoder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 72
    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->c()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v4

    .line 73
    new-instance v5, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v6, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v6, v6, Lcom/koushikdutta/ion/LoadDeepZoom;->a:Ljava/lang/String;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v4, v4, Lcom/koushikdutta/ion/gif/GifFrame;->a:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v2, v4, v3}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 74
    iput-object v0, v5, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->g:Lcom/koushikdutta/ion/gif/GifDecoder;

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/koushikdutta/ion/LoadDeepZoom;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_82} :catch_b0
    .catchall {:try_start_3 .. :try_end_82} :catchall_e4

    .line 93
    new-array v0, v11, [Ljava/io/Closeable;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 95
    :goto_89
    return-void

    .line 64
    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->a:Ljava/io/File;

    goto :goto_28

    .line 79
    :cond_8d
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    .line 80
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v3, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 81
    if-nez v5, :cond_bf

    .line 82
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "unable to load decoder"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b0} :catch_b0
    .catchall {:try_start_8a .. :try_end_b0} :catchall_e4

    .line 89
    :catch_b0
    move-exception v0

    .line 90
    :try_start_b1
    iget-object v2, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/koushikdutta/ion/LoadDeepZoom;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_e4

    .line 93
    new-array v0, v11, [Ljava/io/Closeable;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto :goto_89

    .line 84
    :cond_bf
    :try_start_bf
    new-instance v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v7, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v7, v7, Lcom/koushikdutta/ion/LoadDeepZoom;->a:Ljava/lang/String;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v5, v3}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 85
    iput-object v4, v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->h:Landroid/graphics/BitmapRegionDecoder;

    .line 86
    iput-object v0, v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->i:Ljava/io/File;

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->b:Lcom/koushikdutta/ion/Response;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Response;->a()Lcom/koushikdutta/ion/ResponseServedFrom;

    move-result-object v0

    iput-object v0, v6, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadDeepZoom$1;->c:Lcom/koushikdutta/ion/LoadDeepZoom;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/koushikdutta/ion/LoadDeepZoom;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_dc} :catch_b0
    .catchall {:try_start_bf .. :try_end_dc} :catchall_e4

    .line 93
    new-array v0, v11, [Ljava/io/Closeable;

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto :goto_89

    :catchall_e4
    move-exception v0

    new-array v2, v11, [Ljava/io/Closeable;

    aput-object v1, v2, v10

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    throw v0
.end method
