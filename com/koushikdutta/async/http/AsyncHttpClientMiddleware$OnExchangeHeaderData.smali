.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
.source "AsyncHttpClientMiddleware.java"


# instance fields
.field public e:Lcom/koushikdutta/async/AsyncSocket;

.field public f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

.field public g:Lcom/koushikdutta/async/callback/CompletedCallback;

.field public h:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;-><init>()V

    return-void
.end method
