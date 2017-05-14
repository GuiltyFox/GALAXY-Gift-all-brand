.class abstract Lcom/koushikdutta/ion/BitmapCallback;
.super Ljava/lang/Object;
.source "BitmapCallback.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/koushikdutta/ion/Ion;

.field final c:Z


# direct methods
.method protected constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapCallback;->a:Ljava/lang/String;

    .line 88
    iput-boolean p3, p0, Lcom/koushikdutta/ion/BitmapCallback;->c:Z

    .line 89
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapCallback;->b:Lcom/koushikdutta/ion/Ion;

    .line 91
    iget-object v0, p1, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0, p2, p0}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 8

    .prologue
    .line 23
    iget-object v0, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 41
    :cond_4
    :goto_4
    return-void

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1}, Lcom/koushikdutta/async/util/FileCache;->a()Ljava/io/File;

    move-result-object v2

    .line 30
    :try_start_11
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 31
    iget-object v0, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 32
    :goto_20
    iget-object v4, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->e:Landroid/graphics/Bitmap;

    const/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 33
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 34
    iget-object v0, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;[Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_3c
    .catchall {:try_start_11 .. :try_end_35} :catchall_41

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 31
    :cond_39
    :try_start_39
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3b} :catch_3c
    .catchall {:try_start_39 .. :try_end_3b} :catchall_41

    goto :goto_20

    .line 36
    :catch_3c
    move-exception v0

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4

    :catchall_41
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public static a(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/Ion;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/bitmap/PostProcess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 84
    :goto_8
    return-void

    .line 47
    :cond_9
    new-instance v0, Lcom/koushikdutta/ion/LoadBitmapBase;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/koushikdutta/ion/LoadBitmapBase;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Z)V

    .line 48
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/ion/BitmapCallback$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/koushikdutta/ion/BitmapCallback$1;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Lcom/koushikdutta/ion/BitmapCallback;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_8
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 5

    .prologue
    .line 105
    sget-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/ion/BitmapCallback$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/koushikdutta/ion/BitmapCallback$2;-><init>(Lcom/koushikdutta/ion/BitmapCallback;Lcom/koushikdutta/ion/bitmap/BitmapInfo;Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 136
    if-eqz p2, :cond_28

    iget-object v0, p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->a:Landroid/graphics/Point;

    if-eqz v0, :cond_28

    iget-object v0, p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->h:Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/koushikdutta/ion/BitmapCallback;->c:Z

    if-eqz v0, :cond_28

    iget-object v0, p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    iget-object v0, p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->g:Lcom/koushikdutta/ion/gif/GifDecoder;

    if-nez v0, :cond_28

    invoke-virtual {p2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->a()I

    move-result v0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_29

    .line 149
    :cond_28
    :goto_28
    return-void

    .line 148
    :cond_29
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback;->b:Lcom/koushikdutta/ion/Ion;

    invoke-static {v0, p2}, Lcom/koushikdutta/ion/BitmapCallback;->a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_28
.end method

.method a()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/koushikdutta/ion/BitmapCallback;->c:Z

    return v0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback;->b:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->b()V

    .line 102
    return-void
.end method
