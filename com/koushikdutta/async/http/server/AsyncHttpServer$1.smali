.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ListenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 3

    .prologue
    .line 72
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 213
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 214
    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->k()V

    .line 215
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/Exception;)V

    .line 220
    return-void
.end method
