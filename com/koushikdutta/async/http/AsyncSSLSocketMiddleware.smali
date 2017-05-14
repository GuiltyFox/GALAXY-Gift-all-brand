.class public Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
.super Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.source "AsyncSSLSocketMiddleware.java"


# instance fields
.field protected a:Ljavax/net/ssl/SSLContext;

.field protected b:[Ljavax/net/ssl/TrustManager;

.field protected c:Ljavax/net/ssl/HostnameVerifier;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .registers 4

    .prologue
    .line 25
    const-string/jumbo v0, "https"

    const/16 v1, 0x1bb

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->d:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
    .registers 4

    .prologue
    .line 72
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    return-object v0
.end method

.method protected a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
    .registers 13

    .prologue
    .line 89
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;Lcom/koushikdutta/async/callback/ConnectCallback;ZLcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public a()Ljavax/net/ssl/SSLContext;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a:Ljavax/net/ssl/SSLContext;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_6
.end method

.method protected a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .registers 7

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;

    .line 65
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;->a(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V

    goto :goto_e

    .line 68
    :cond_1e
    return-object v1
.end method

.method protected a(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILcom/koushikdutta/async/callback/ConnectCallback;)V
    .registers 14

    .prologue
    .line 81
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p4}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->b:[Ljavax/net/ssl/TrustManager;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->c:Ljavax/net/ssl/HostnameVerifier;

    const/4 v6, 0x1

    invoke-virtual {p0, p2, p5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    move-result-object v7

    move-object v0, p1

    move v2, p4

    invoke-static/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    .line 85
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->c:Ljavax/net/ssl/HostnameVerifier;

    .line 48
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLContext;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a:Ljavax/net/ssl/SSLContext;

    .line 32
    return-void
.end method
