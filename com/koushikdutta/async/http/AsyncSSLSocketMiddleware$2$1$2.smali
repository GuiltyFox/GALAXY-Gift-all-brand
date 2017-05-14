.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->a:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->a:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->i()Z

    move-result v0

    if-nez v0, :cond_14

    if-nez p1, :cond_14

    .line 143
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "socket closed before proxy connect response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    :cond_14
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->a:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->a:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 145
    return-void
.end method
