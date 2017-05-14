.class Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<",
        "Lcom/koushikdutta/async/AsyncNetworkSocket;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic c:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->c:Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$1;)V
    .registers 3

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 331
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->a()V

    .line 333
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_c

    .line 334
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_d

    .line 338
    :cond_c
    :goto_c
    return-void

    .line 336
    :catch_d
    move-exception v0

    goto :goto_c
.end method
