.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .registers 4

    .prologue
    .line 305
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;->c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 5

    .prologue
    .line 310
    if-eqz p1, :cond_13

    .line 311
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;->c:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    .line 312
    if-eqz v0, :cond_13

    .line 313
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->a(Ljava/lang/Exception;)Z

    .line 315
    :cond_13
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 316
    return-void
.end method
