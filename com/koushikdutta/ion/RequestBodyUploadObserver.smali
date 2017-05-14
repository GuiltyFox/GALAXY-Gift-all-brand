.class Lcom/koushikdutta/ion/RequestBodyUploadObserver;
.super Ljava/lang/Object;
.source "RequestBodyUploadObserver.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# instance fields
.field a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field b:Lcom/koushikdutta/ion/ProgressCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;Lcom/koushikdutta/ion/ProgressCallback;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 22
    iput-object p2, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->b:Lcom/koushikdutta/ion/ProgressCallback;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 80
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 7

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->c()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    new-instance v2, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/koushikdutta/ion/RequestBodyUploadObserver$1;-><init>(Lcom/koushikdutta/ion/RequestBodyUploadObserver;Lcom/koushikdutta/async/DataSink;I)V

    invoke-interface {v1, p1, v2, p3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 75
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->b()Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;->a:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->c()I

    move-result v0

    return v0
.end method
