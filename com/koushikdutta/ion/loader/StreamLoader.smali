.class public Lcom/koushikdutta/ion/loader/StreamLoader;
.super Lcom/koushikdutta/ion/loader/SimpleLoader;
.source "StreamLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/SimpleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/koushikdutta/ion/Ion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v9, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v9}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 44
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v0, Lcom/koushikdutta/ion/loader/StreamLoader$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/koushikdutta/ion/loader/StreamLoader$1;-><init>(Lcom/koushikdutta/ion/loader/StreamLoader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-object v9
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    .registers 9

    .prologue
    .line 28
    new-instance v0, Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-static {p3}, Lcom/koushikdutta/async/util/StreamUtility;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/ion/gif/GifDecoder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 29
    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->c()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v3, p4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v1, v1, Lcom/koushikdutta/ion/gif/GifFrame;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, p1, v3, v1, p2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 31
    iput-object v0, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->g:Lcom/koushikdutta/ion/gif/GifDecoder;

    .line 32
    return-object v2
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method
