.class public interface abstract Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# virtual methods
.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end method

.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;)V
.end method

.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;)V
.end method

.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V
.end method

.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V
.end method

.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
.end method

.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end method
