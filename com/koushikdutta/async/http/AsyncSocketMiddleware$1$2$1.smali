.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 222
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isDone()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 226
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "internal error during connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a:Ljava/lang/Exception;

    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v4}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 249
    :cond_33
    :goto_33
    return-void

    .line 232
    :cond_34
    if-eqz p1, :cond_42

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a:Ljava/lang/Exception;

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v4}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_33

    .line 239
    :cond_42
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isDone()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 240
    :cond_56
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string/jumbo v1, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-static {v0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0, p2, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_33

    .line 246
    :cond_7f
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0, v4, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 247
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, v4, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_33
.end method
