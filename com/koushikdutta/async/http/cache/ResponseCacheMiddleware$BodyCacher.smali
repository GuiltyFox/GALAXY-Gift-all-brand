.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ResponseCacheMiddleware.java"


# instance fields
.field d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

.field e:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;)V
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_c

    .line 395
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    .line 398
    :cond_c
    return-void
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 342
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->e:Lcom/koushikdutta/async/ByteBufferList;

    if-eqz v0, :cond_15

    .line 343
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-super {p0, p1, v0}, Lcom/koushikdutta/async/FilteredDataEmitter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 345
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_12

    .line 385
    :cond_11
    :goto_11
    return-void

    .line 347
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->e:Lcom/koushikdutta/async/ByteBufferList;

    .line 351
    :cond_15
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 353
    :try_start_1a
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_6c

    .line 354
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a(I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_69

    .line 356
    :goto_27
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->c()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 357
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_38
    .catchall {:try_start_1a .. :try_end_30} :catchall_61

    move-result-object v2

    .line 359
    :try_start_31
    invoke-static {v0, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_5c

    .line 362
    :try_start_34
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_61

    goto :goto_27

    .line 371
    :catch_38
    move-exception v0

    .line 372
    :try_start_39
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->a()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_61

    .line 375
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 376
    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 379
    :goto_42
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/FilteredDataEmitter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_11

    .line 382
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->e:Lcom/koushikdutta/async/ByteBufferList;

    .line 383
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->e:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_11

    .line 362
    :catchall_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    throw v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_38
    .catchall {:try_start_5d .. :try_end_61} :catchall_61

    .line 375
    :catchall_61
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 376
    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    throw v0

    .line 367
    :cond_69
    :try_start_69
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->a()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_38
    .catchall {:try_start_69 .. :try_end_6c} :catchall_61

    .line 375
    :cond_6c
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 376
    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_42
.end method

.method public b()V
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_c

    .line 402
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->d:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;

    .line 405
    :cond_c
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->b(Ljava/lang/Exception;)V

    .line 336
    if-eqz p1, :cond_8

    .line 337
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->a()V

    .line 338
    :cond_8
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$BodyCacher;->a()V

    .line 390
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->d()V

    .line 391
    return-void
.end method
