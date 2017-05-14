.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ResponseCacheMiddleware.java"


# static fields
.field static final synthetic h:Z


# instance fields
.field d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

.field e:Lcom/koushikdutta/async/ByteBufferList;

.field f:Z

.field g:Ljava/lang/Runnable;

.field private i:Z

.field private j:Lcom/koushikdutta/async/util/Allocator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 408
    const-class v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->h:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .registers 6

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 410
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e:Lcom/koushikdutta/async/ByteBufferList;

    .line 412
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->j:Lcom/koushikdutta/async/util/Allocator;

    .line 419
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$1;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->g:Ljava/lang/Runnable;

    .line 415
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    .line 416
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->j:Lcom/koushikdutta/async/util/Allocator;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/Allocator;->b(I)V

    .line 417
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->f:Z

    if-nez v0, :cond_5

    .line 491
    :goto_4
    return-void

    .line 489
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 490
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->b(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method c()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 427
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_17

    .line 428
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-super {p0, p0, v0}, Lcom/koushikdutta/async/FilteredDataEmitter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 429
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_17

    .line 460
    :cond_16
    :goto_16
    return-void

    .line 435
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->j:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/Allocator;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 436
    sget-boolean v1, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->h:Z

    if-nez v1, :cond_34

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2d} :catch_2d

    .line 449
    :catch_2d
    move-exception v0

    .line 450
    iput-boolean v6, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->f:Z

    .line 451
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->b(Ljava/lang/Exception;)V

    goto :goto_16

    .line 437
    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v1

    .line 438
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 439
    const/4 v2, -0x1

    if-ne v1, v2, :cond_58

    .line 440
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->f:Z

    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->b(Ljava/lang/Exception;)V

    goto :goto_16

    .line 445
    :cond_58
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->j:Lcom/koushikdutta/async/util/Allocator;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/koushikdutta/async/util/Allocator;->a(J)V

    .line 446
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 447
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_66} :catch_2d

    .line 454
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-super {p0, p0, v0}, Lcom/koushikdutta/async/FilteredDataEmitter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 455
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-gtz v0, :cond_16

    .line 459
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    goto :goto_16
.end method

.method public d()V
    .registers 4

    .prologue
    .line 479
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 480
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->d()V

    .line 481
    return-void
.end method

.method e()V
    .registers 3

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->i:Z

    .line 469
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->e()V

    .line 470
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->i:Z

    return v0
.end method
