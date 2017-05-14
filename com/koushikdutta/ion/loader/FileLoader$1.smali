.class Lcom/koushikdutta/ion/loader/FileLoader$1;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/FileLoader;->a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/ion/Ion;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/koushikdutta/ion/loader/FileLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/FileLoader;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;)V
    .registers 9

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->h:Lcom/koushikdutta/ion/loader/FileLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->c:Lcom/koushikdutta/ion/Ion;

    iput p5, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->d:I

    iput p6, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->e:I

    iput-boolean p7, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->f:Z

    iput-object p8, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    :goto_8
    return-void

    .line 50
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 51
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->c:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    iget v2, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->d:I

    iget v3, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->e:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Ljava/io/File;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 52
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    iget-boolean v3, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->f:Z

    if-eqz v3, :cond_79

    const-string/jumbo v3, "image/gif"

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 55
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_3f} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_72

    .line 57
    :try_start_3f
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->h:Lcom/koushikdutta/ion/loader/FileLoader;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/koushikdutta/ion/loader/FileLoader;->a(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_67

    move-result-object v0

    .line 60
    const/4 v1, 0x1

    :try_start_48
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 69
    :goto_50
    sget-object v1, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v1, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/OutOfMemoryError; {:try_start_48 .. :try_end_59} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_59} :catch_72

    goto :goto_8

    .line 72
    :catch_5a
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    goto :goto_8

    .line 60
    :catchall_67
    move-exception v0

    const/4 v1, 0x1

    :try_start_69
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    throw v0
    :try_end_72
    .catch Ljava/lang/OutOfMemoryError; {:try_start_69 .. :try_end_72} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_72

    .line 75
    :catch_72
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    goto :goto_8

    .line 64
    :cond_79
    :try_start_79
    invoke-static {v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 65
    if-nez v3, :cond_88

    .line 66
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_88
    new-instance v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/FileLoader$1;->g:Ljava/lang/String;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    :try_end_91
    .catch Ljava/lang/OutOfMemoryError; {:try_start_79 .. :try_end_91} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_91} :catch_72

    goto :goto_50
.end method
