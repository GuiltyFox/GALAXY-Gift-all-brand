.class Lcom/koushikdutta/async/AsyncServer$7;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic b:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/net/InetSocketAddress;)V
    .registers 5

    .prologue
    .line 385
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$7;->d:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$7;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$7;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$7;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 385
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$7;->a(Ljava/lang/Exception;Ljava/net/InetAddress;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/net/InetAddress;)V
    .registers 7

    .prologue
    .line 388
    if-eqz p1, :cond_e

    .line 389
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$7;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 390
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$7;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    .line 395
    :goto_d
    return-void

    .line 394
    :cond_e
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$7;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$7;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$7;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v2, p2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$7;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/SimpleFuture;

    goto :goto_d
.end method
