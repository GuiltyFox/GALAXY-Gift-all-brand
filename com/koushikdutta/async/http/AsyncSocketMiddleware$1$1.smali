.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a([Ljava/net/InetAddress;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 8

    .prologue
    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a:Ljava/lang/Exception;

    if-nez v0, :cond_12

    .line 208
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    new-instance v1, Lcom/koushikdutta/async/http/ConnectionFailedException;

    const-string/jumbo v2, "Unable to connect to remote address"

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a:Ljava/lang/Exception;

    .line 209
    :cond_12
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget v3, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->m:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 212
    :cond_41
    return-void
.end method
