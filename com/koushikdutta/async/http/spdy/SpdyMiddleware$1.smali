.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;->a:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;->a:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V

    .line 46
    return-void
.end method
