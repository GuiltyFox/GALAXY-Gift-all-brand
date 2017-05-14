.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a([Ljava/net/InetAddress;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/net/InetAddress;

.field final synthetic c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;Ljava/lang/String;Ljava/net/InetAddress;)V
    .registers 4

    .prologue
    .line 217
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->b:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 11

    .prologue
    .line 220
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attempting connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->h:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v6

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->b:Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->m:I

    invoke-direct {v7, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget v3, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->m:I

    const/4 v4, 0x0

    new-instance v5, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;

    invoke-direct {v5, p0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    .line 251
    return-void
.end method
