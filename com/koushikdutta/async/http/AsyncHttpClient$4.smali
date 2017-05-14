.class Lcom/koushikdutta/async/http/AsyncHttpClient$4;
.super Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
.end annotation


# instance fields
.field final synthetic d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field final synthetic f:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field final synthetic g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

.field final synthetic h:I

.field final synthetic i:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;I)V
    .registers 8

    .prologue
    .line 321
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->f:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput-object p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iput p7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->h:I

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;)V
    .registers 8

    .prologue
    .line 347
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->d:Lcom/koushikdutta/async/DataEmitter;

    .line 348
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 349
    :try_start_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 350
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;)V

    goto :goto_11

    .line 352
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 354
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->d:Lcom/koushikdutta/async/DataEmitter;

    invoke-super {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a(Lcom/koushikdutta/async/DataEmitter;)V

    .line 356
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->j:Lcom/koushikdutta/async/http/Headers;

    .line 357
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->f()I

    move-result v1

    .line 358
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_40

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_40

    const/16 v2, 0x133

    if-ne v1, v2, :cond_f3

    :cond_40
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 359
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    :try_start_4f
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_75

    .line 364
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_74} :catch_e1

    move-result-object v0

    .line 371
    :cond_75
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    const-string/jumbo v1, "HEAD"

    .line 372
    :goto_87
    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {v2, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-wide v0, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:J

    iput-wide v0, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g:J

    .line 374
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v0, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:I

    iput v0, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->f:I

    .line 375
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v0, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:I

    iput v0, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d:I

    .line 378
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 379
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "User-Agent"

    invoke-static {v0, v2, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Range"

    invoke-static {v0, v2, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Redirecting"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v0, "Redirected"

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->h:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->f:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->b(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 385
    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 393
    :goto_e0
    return-void

    .line 367
    :catch_e1
    move-exception v2

    .line 368
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->f:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_e0

    .line 371
    :cond_ef
    const-string/jumbo v1, "GET"

    goto :goto_87

    .line 389
    :cond_f3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Final (post cache response) headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->f:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_e0
.end method

.method protected a(Ljava/lang/Exception;)V
    .registers 8

    .prologue
    .line 324
    if-eqz p1, :cond_10

    .line 325
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->f:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 343
    :cond_f
    :goto_f
    return-void

    .line 329
    :cond_10
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "request completed"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 333
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->j:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_4b

    .line 334
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->c:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    .line 338
    :cond_4b
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 339
    :try_start_50
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 340
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V

    goto :goto_58

    .line 342
    :catchall_6a
    move-exception v0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6a

    goto :goto_f
.end method

.method protected b()V
    .registers 5

    .prologue
    .line 396
    invoke-super {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->b()V

    .line 397
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 415
    :goto_b
    return-void

    .line 401
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 402
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Object;)V

    .line 405
    :cond_1d
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 408
    :try_start_3f
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 409
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;)V

    goto :goto_47

    .line 411
    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    goto :goto_b
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 8

    .prologue
    .line 419
    if-eqz p1, :cond_a

    .line 420
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "exception during response"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 421
    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 445
    :cond_12
    :goto_12
    return-void

    .line 423
    :cond_13
    instance-of v0, p1, Lcom/koushikdutta/async/AsyncSSLException;

    if-eqz v0, :cond_2d

    .line 424
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, p1

    .line 425
    check-cast v0, Lcom/koushikdutta/async/AsyncSSLException;

    .line 426
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/AsyncSSLException;)V

    .line 427
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSSLException;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 430
    :cond_2d
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->c()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_12

    .line 433
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->b(Ljava/lang/Exception;)V

    .line 434
    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->i()Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p1, :cond_53

    .line 435
    :cond_3e
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->a_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    if-nez v0, :cond_53

    if-eqz p1, :cond_53

    .line 436
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->f:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 439
    :cond_53
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->k:Ljava/lang/Exception;

    .line 440
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 441
    :try_start_5c
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->i:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 442
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V

    goto :goto_64

    .line 444
    :catchall_76
    move-exception v0

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_5c .. :try_end_78} :catchall_76

    throw v0

    :cond_79
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_76

    goto :goto_12
.end method
