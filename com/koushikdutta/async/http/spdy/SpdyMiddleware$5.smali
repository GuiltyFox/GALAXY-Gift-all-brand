.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/async/http/Headers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

.field final synthetic b:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

.field final synthetic c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;)V
    .registers 4

    .prologue
    .line 422
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->b:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/Headers;)V
    .registers 6

    .prologue
    .line 425
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 426
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->b:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->b:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->b()Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    move-result-object v1

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->g:Lcom/koushikdutta/async/http/Protocol;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->b(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 428
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 422
    check-cast p2, Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/Headers;)V

    return-void
.end method
