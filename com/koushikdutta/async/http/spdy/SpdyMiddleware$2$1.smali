.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;
.super Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
.source "SpdyMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
.end annotation


# instance fields
.field n:Z

.field final synthetic o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V
    .registers 4

    .prologue
    .line 219
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;-><init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V

    return-void
.end method


# virtual methods
.method public a(ZLcom/koushikdutta/async/http/spdy/Settings;)V
    .registers 7

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a(ZLcom/koushikdutta/async/http/spdy/Settings;)V

    .line 224
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->n:Z

    if-nez v0, :cond_62

    .line 226
    :try_start_7
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_63

    .line 230
    :goto_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->n:Z

    .line 232
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    .line 234
    iget-object v1, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->c:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {v1}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 235
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "using new spdy connection for host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    iget-object v3, v3, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->d:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    iget-object v2, v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;->o:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    iget-object v3, v3, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->c:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {v1, v2, p0, v3}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    .line 239
    :cond_5f
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->b(Ljava/lang/Object;)Z

    .line 241
    :cond_62
    return-void

    .line 227
    :catch_63
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a
.end method
