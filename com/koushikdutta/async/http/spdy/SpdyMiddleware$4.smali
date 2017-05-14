.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic b:Lcom/koushikdutta/async/future/SimpleCancellable;

.field final synthetic c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/future/SimpleCancellable;)V
    .registers 4

    .prologue
    .line 366
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->b:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;)V
    .registers 6

    .prologue
    .line 369
    instance-of v0, p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    if-eqz v0, :cond_1c

    .line 370
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "spdy not available"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->b:Lcom/koushikdutta/async/future/SimpleCancellable;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 382
    :cond_1b
    :goto_1b
    return-void

    .line 374
    :cond_1c
    if-eqz p1, :cond_2f

    .line 375
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->b:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 376
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_1b

    .line 379
    :cond_2f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "using existing spdy connection for host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->b:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {v0, v1, p2, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    goto :goto_1b
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 366
    check-cast p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;)V

    return-void
.end method
