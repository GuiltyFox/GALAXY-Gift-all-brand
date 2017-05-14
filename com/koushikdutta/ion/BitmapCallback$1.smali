.class final Lcom/koushikdutta/ion/BitmapCallback$1;
.super Ljava/lang/Object;
.source "BitmapCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapCallback;->a(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/Ion;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/ion/BitmapCallback;

.field final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Lcom/koushikdutta/ion/BitmapCallback;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 48
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->a:Lcom/koushikdutta/ion/Ion;

    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iput-object p4, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->c:Lcom/koushikdutta/ion/BitmapCallback;

    if-eq v0, v1, :cond_10

    .line 82
    :goto_f
    return-void

    .line 57
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/FileCache;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    if-nez v0, :cond_3a

    .line 60
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_63

    .line 72
    :catch_2e
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->c:Lcom/koushikdutta/ion/BitmapCallback;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v5}, Lcom/koushikdutta/ion/BitmapCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_f

    .line 61
    :cond_3a
    :try_start_3a
    new-instance v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->b:Ljava/lang/String;

    const-string/jumbo v3, "image/jpeg"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 62
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v0, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_79

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/PostProcess;

    .line 66
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/bitmap/PostProcess;->a(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_62
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_62} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_62} :catch_63

    goto :goto_53

    .line 75
    :catch_63
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->c:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v1, v0, v5}, Lcom/koushikdutta/ion/BitmapCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    .line 78
    :try_start_69
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_76} :catch_77

    goto :goto_f

    .line 79
    :catch_77
    move-exception v0

    goto :goto_f

    .line 70
    :cond_79
    :try_start_79
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$1;->c:Lcom/koushikdutta/ion/BitmapCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/ion/BitmapCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_7f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_79 .. :try_end_7f} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_63

    goto :goto_f
.end method
