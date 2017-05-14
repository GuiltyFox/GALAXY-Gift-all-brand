.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "SpdyMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<",
        "Lcom/koushikdutta/async/http/Headers;",
        "Ljava/util/List",
        "<",
        "Lcom/koushikdutta/async/http/spdy/Header;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

.field final synthetic b:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)V
    .registers 3

    .prologue
    .line 403
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->b:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 403
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 406
    new-instance v1, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 407
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Header;

    .line 408
    iget-object v3, v0, Lcom/koushikdutta/async/http/spdy/Header;->h:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/ByteString;->a()Ljava/lang/String;

    move-result-object v3

    .line 409
    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Header;->i:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {v1, v3, v0}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_a

    .line 412
    :cond_26
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Header;->a:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 415
    array-length v2, v0

    if-ne v2, v4, :cond_52

    .line 416
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v2, v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 417
    :cond_52
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    sget-object v2, Lcom/koushikdutta/async/http/spdy/Header;->g:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 418
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 419
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->b(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method
