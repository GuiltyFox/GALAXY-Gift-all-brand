.class Lcom/koushikdutta/ion/loader/ResourceLoader$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/ResourceLoader;->a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
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

.field final synthetic i:Lcom/koushikdutta/ion/loader/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/ResourceLoader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .registers 10

    .prologue
    .line 69
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->i:Lcom/koushikdutta/ion/loader/ResourceLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->c:Lcom/koushikdutta/ion/Ion;

    iput p5, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->d:I

    iput p6, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->e:I

    iput-boolean p7, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->f:Z

    iput-object p8, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/loader/ResourceLoader;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->c:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    iget-object v2, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->a:Landroid/content/res/Resources;

    iget v3, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->b:I

    iget v4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->d:I

    iget v5, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->e:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 75
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 77
    iget-boolean v3, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->f:Z

    if-eqz v3, :cond_6d

    const-string/jumbo v3, "image/gif"

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 78
    iget-object v3, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->a:Landroid/content/res/Resources;

    iget v0, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->b:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_39} :catch_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_80

    move-result-object v3

    .line 80
    :try_start_3a
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->i:Lcom/koushikdutta/ion/loader/ResourceLoader;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/koushikdutta/ion/loader/ResourceLoader;->a(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/koushikdutta/ion/bitmap/BitmapInfo;
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_55

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    :try_start_43
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 92
    :goto_4b
    sget-object v1, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v1, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 93
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z

    .line 101
    :goto_54
    return-void

    .line 83
    :catchall_55
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    throw v0
    :try_end_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_60} :catch_60
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_60} :catch_80

    .line 95
    :catch_60
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    goto :goto_54

    .line 87
    :cond_6d
    :try_start_6d
    iget-object v3, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->a:Landroid/content/res/Resources;

    iget v0, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->b:I

    invoke-static {v3, v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 88
    if-nez v3, :cond_87

    .line 89
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_80
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6d .. :try_end_80} :catch_60
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_80} :catch_80

    .line 98
    :catch_80
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    goto :goto_54

    .line 90
    :cond_87
    :try_start_87
    new-instance v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;->g:Ljava/lang/String;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    :try_end_90
    .catch Ljava/lang/OutOfMemoryError; {:try_start_87 .. :try_end_90} :catch_60
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_90} :catch_80

    goto :goto_4b
.end method
