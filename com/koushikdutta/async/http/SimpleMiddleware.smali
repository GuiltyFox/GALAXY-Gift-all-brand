.class public Lcom/koushikdutta/async/http/SimpleMiddleware;
.super Ljava/lang/Object;
.source "SimpleMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 3

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;)V
    .registers 2

    .prologue
    .line 30
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;)V
    .registers 2

    .prologue
    .line 26
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V
    .registers 2

    .prologue
    .line 8
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V
    .registers 2

    .prologue
    .line 22
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .registers 2

    .prologue
    .line 34
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
    .registers 3

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
