.class Lcom/koushikdutta/ion/LoadBitmap$1;
.super Ljava/lang/Object;
.source "LoadBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/LoadBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic b:Lcom/koushikdutta/ion/Response;

.field final synthetic c:Lcom/koushikdutta/ion/LoadBitmap;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/LoadBitmap;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/ion/Response;)V
    .registers 4

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iput-object p2, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->a:Lcom/koushikdutta/async/ByteBufferList;

    iput-object p3, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->b:Lcom/koushikdutta/ion/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/LoadBitmap;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v1, v1, Lcom/koushikdutta/ion/LoadBitmap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    if-eq v0, v1, :cond_19

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 88
    :goto_18
    return-void

    .line 52
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->k()Ljava/nio/ByteBuffer;
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_1e} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_ce
    .catchall {:try_start_19 .. :try_end_1e} :catchall_db

    move-result-object v6

    .line 56
    :try_start_1f
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v0, v0, Lcom/koushikdutta/ion/LoadBitmap;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->y:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iget v4, v4, Lcom/koushikdutta/ion/LoadBitmap;->d:I

    iget-object v5, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iget v5, v5, Lcom/koushikdutta/ion/LoadBitmap;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a([BIIII)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 57
    new-instance v3, Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iget-boolean v0, v0, Lcom/koushikdutta/ion/LoadBitmap;->f:Z

    if-eqz v0, :cond_9c

    const-string/jumbo v0, "image/gif"

    iget-object v1, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 60
    new-instance v0, Lcom/koushikdutta/ion/gif/GifDecoder;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v0, v1, v4, v5}, Lcom/koushikdutta/ion/gif/GifDecoder;-><init>([BII)V

    .line 61
    invoke-virtual {v0}, Lcom/koushikdutta/ion/gif/GifDecoder;->c()Lcom/koushikdutta/ion/gif/GifFrame;

    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/koushikdutta/ion/gif/GifFrame;->a:Landroid/graphics/Bitmap;
    :try_end_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_78} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_78} :catch_e6
    .catchall {:try_start_1f .. :try_end_78} :catchall_e1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v7

    move-object v7, v8

    .line 73
    :goto_7c
    :try_start_7c
    new-instance v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v5, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v5, v5, Lcom/koushikdutta/ion/LoadBitmap;->a:Ljava/lang/String;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v0, v3}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 74
    iput-object v7, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->g:Lcom/koushikdutta/ion/gif/GifDecoder;

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->b:Lcom/koushikdutta/ion/Response;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Response;->a()Lcom/koushikdutta/ion/ResponseServedFrom;

    move-result-object v0

    iput-object v0, v4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/koushikdutta/ion/LoadBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_97
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7c .. :try_end_97} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_97} :catch_e8
    .catchall {:try_start_7c .. :try_end_97} :catchall_e3

    .line 86
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_18

    .line 67
    :cond_9c
    :try_start_9c
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v4, v2}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    if-nez v0, :cond_f0

    .line 70
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "failed to load bitmap"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bc
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9c .. :try_end_bc} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_bc} :catch_e6
    .catchall {:try_start_9c .. :try_end_bc} :catchall_e1

    .line 79
    :catch_bc
    move-exception v0

    move-object v1, v6

    .line 80
    :goto_be
    :try_start_be
    iget-object v2, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/koushikdutta/ion/LoadBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_c9
    .catchall {:try_start_be .. :try_end_c9} :catchall_e3

    .line 86
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_18

    .line 82
    :catch_ce
    move-exception v0

    move-object v6, v7

    .line 83
    :goto_d0
    :try_start_d0
    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap$1;->c:Lcom/koushikdutta/ion/LoadBitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/ion/LoadBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    :try_end_d6
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_e1

    .line 86
    invoke-static {v6}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_18

    :catchall_db
    move-exception v0

    move-object v6, v7

    :goto_dd
    invoke-static {v6}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    throw v0

    :catchall_e1
    move-exception v0

    goto :goto_dd

    :catchall_e3
    move-exception v0

    move-object v6, v1

    goto :goto_dd

    .line 82
    :catch_e6
    move-exception v0

    goto :goto_d0

    :catch_e8
    move-exception v0

    move-object v6, v1

    goto :goto_d0

    .line 79
    :catch_eb
    move-exception v0

    move-object v1, v7

    goto :goto_be

    :catch_ee
    move-exception v0

    goto :goto_be

    :cond_f0
    move-object v1, v6

    goto :goto_7c
.end method
