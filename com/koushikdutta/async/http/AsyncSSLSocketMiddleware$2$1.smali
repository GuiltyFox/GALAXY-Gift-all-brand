.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncSocket;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 110
    if-eqz p1, :cond_c

    .line 111
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 147
    :goto_b
    return-void

    .line 115
    :cond_c
    new-instance v0, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 116
    new-instance v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/LineEmitter;->a(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 137
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_b
.end method
