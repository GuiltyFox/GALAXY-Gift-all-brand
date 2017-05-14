.class Lcom/koushikdutta/async/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field final synthetic c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic d:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field final synthetic e:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

.field final synthetic f:I

.field final synthetic g:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;I)V
    .registers 7

    .prologue
    .line 254
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->g:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->d:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->e:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iput p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 9

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->a:Z

    if-eqz v0, :cond_22

    .line 259
    if-eqz p2, :cond_22

    .line 260
    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 261
    new-instance v0, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 262
    invoke-interface {p2}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 263
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "double connect callback"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 266
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->a:Z

    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "socket connected"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 270
    if-eqz p2, :cond_3a

    .line 271
    invoke-interface {p2}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 288
    :cond_3a
    :goto_3a
    return-void

    .line 276
    :cond_3b
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_4c

    .line 277
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->g:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Object;)V

    .line 279
    :cond_4c
    if-eqz p1, :cond_5c

    .line 280
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->g:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->d:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_3a

    .line 284
    :cond_5c
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->e:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iput-object p2, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    .line 285
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 287
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->g:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->f:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->c:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->d:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->e:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V

    goto :goto_3a
.end method
