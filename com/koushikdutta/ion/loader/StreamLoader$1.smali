.class Lcom/koushikdutta/ion/loader/StreamLoader$1;
.super Ljava/lang/Object;
.source "StreamLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/StreamLoader;->a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/ion/Ion;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic i:Lcom/koushikdutta/ion/loader/StreamLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/StreamLoader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .registers 10

    .prologue
    .line 44
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->i:Lcom/koushikdutta/ion/loader/StreamLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->c:Lcom/koushikdutta/ion/Ion;

    iput p5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->d:I

    iput p6, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->e:I

    iput-boolean p7, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->f:Z

    iput-object p8, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    .line 49
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->i:Lcom/koushikdutta/ion/loader/StreamLoader;

    iget-object v2, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/ion/loader/StreamLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->c:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v0

    iget v2, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->d:I

    iget v3, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Ljava/io/InputStream;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 52
    new-instance v3, Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->i:Lcom/koushikdutta/ion/loader/StreamLoader;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/koushikdutta/ion/loader/StreamLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 55
    iget-boolean v0, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->f:Z

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "image/gif"

    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->i:Lcom/koushikdutta/ion/loader/StreamLoader;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/koushikdutta/ion/loader/StreamLoader;->a(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    move-result-object v0

    .line 64
    :goto_4e
    sget-object v2, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v2, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 65
    iget-object v2, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_57} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_57} :catch_8c
    .catchall {:try_start_3 .. :try_end_57} :catchall_9a

    .line 74
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 76
    :goto_5e
    return-void

    .line 59
    :cond_5f
    :try_start_5f
    invoke-static {v1, v2}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 60
    if-nez v4, :cond_82

    .line 61
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "Bitmap failed to load"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5f .. :try_end_6e} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6e} :catch_8c
    .catchall {:try_start_5f .. :try_end_6e} :catchall_9a

    .line 67
    :catch_6e
    move-exception v0

    .line 68
    :try_start_6f
    iget-object v2, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_9a

    .line 74
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto :goto_5e

    .line 62
    :cond_82
    :try_start_82
    new-instance v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v5, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->g:Ljava/lang/String;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v0, v5, v2, v4, v3}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    :try_end_8b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_82 .. :try_end_8b} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_8c
    .catchall {:try_start_82 .. :try_end_8b} :catchall_9a

    goto :goto_4e

    .line 70
    :catch_8c
    move-exception v0

    .line 71
    :try_start_8d
    iget-object v2, p0, Lcom/koushikdutta/ion/loader/StreamLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_9a

    .line 74
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    goto :goto_5e

    :catchall_9a
    move-exception v0

    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    throw v0
.end method
