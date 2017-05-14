.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic b:Z

.field final synthetic c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:I

.field final synthetic f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;Lcom/koushikdutta/async/callback/ConnectCallback;ZLcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V
    .registers 7

    .prologue
    .line 89
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-boolean p3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->b:Z

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->d:Landroid/net/Uri;

    iput p6, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 9

    .prologue
    .line 92
    if-eqz p1, :cond_8

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 149
    :goto_7
    return-void

    .line 97
    :cond_8
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->b:Z

    if-nez v0, :cond_1b

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->d:Landroid/net/Uri;

    iget v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->e:I

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILcom/koushikdutta/async/callback/ConnectCallback;)V

    goto :goto_7

    .line 105
    :cond_1b
    const-string/jumbo v0, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-static {p2, v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_7
.end method
