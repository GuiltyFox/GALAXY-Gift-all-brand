.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->a:Ljava/lang/String;

    if-nez v0, :cond_58

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->a:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "HTTP/1.\\d 2\\d\\d .*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 125
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "non 2xx status line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 134
    :cond_57
    :goto_57
    return-void

    .line 129
    :cond_58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 130
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->c:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->d:Landroid/net/Uri;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v4, v4, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget v4, v4, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->e:I

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILcom/koushikdutta/async/callback/ConnectCallback;)V

    goto :goto_57
.end method
