.class Lcom/koushikdutta/ion/TransformBitmap$1;
.super Ljava/lang/Object;
.source "TransformBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/TransformBitmap;->b(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

.field final synthetic b:Lcom/koushikdutta/ion/TransformBitmap;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/TransformBitmap;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 3

    .prologue
    .line 53
    iput-object p1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    iput-object p2, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/TransformBitmap;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v1, v1, Lcom/koushikdutta/ion/TransformBitmap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    if-eq v0, v1, :cond_14

    .line 86
    :goto_13
    return-void

    .line 63
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->e:Landroid/graphics/Bitmap;

    .line 64
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v1, v1, Lcom/koushikdutta/ion/TransformBitmap;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/Transform;

    .line 65
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/bitmap/Transform;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-nez v0, :cond_48

    .line 67
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "failed to transform bitmap"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_3c} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_7f

    .line 80
    :catch_3c
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v5}, Lcom/koushikdutta/ion/TransformBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_13

    :cond_48
    move-object v1, v0

    .line 67
    goto :goto_21

    .line 69
    :cond_4a
    :try_start_4a
    new-instance v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/TransformBitmap;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v3, v3, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v4, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->a:Landroid/graphics/Point;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v0, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v0, v2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/TransformBitmap;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_86

    .line 73
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/TransformBitmap;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/PostProcess;

    .line 74
    invoke-interface {v0, v2}, Lcom/koushikdutta/ion/bitmap/PostProcess;->a(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_7e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_7e} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7e} :catch_7f

    goto :goto_6f

    .line 83
    :catch_7f
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    invoke-virtual {v1, v0, v5}, Lcom/koushikdutta/ion/TransformBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    goto :goto_13

    .line 78
    :cond_86
    :try_start_86
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap$1;->b:Lcom/koushikdutta/ion/TransformBitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/ion/TransformBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_8c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_86 .. :try_end_8c} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8c} :catch_7f

    goto :goto_13
.end method
