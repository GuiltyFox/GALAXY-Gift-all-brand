.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .registers 4

    .prologue
    .line 129
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 3

    .prologue
    .line 142
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b()V

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->b:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->g:Z

    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    .line 147
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b(Ljava/lang/Exception;)V

    .line 133
    if-eqz p1, :cond_24

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 138
    :cond_24
    return-void
.end method
