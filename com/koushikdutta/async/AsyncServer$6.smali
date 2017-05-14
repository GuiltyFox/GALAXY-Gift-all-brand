.class Lcom/koushikdutta/async/AsyncServer$6;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->b(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

.field final synthetic b:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/net/InetSocketAddress;)V
    .registers 5

    .prologue
    .line 348
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$6;->d:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$6;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$6;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 351
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 370
    :goto_a
    return-void

    .line 354
    :cond_b
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$6;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 358
    :try_start_11
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->a:Ljava/nio/channels/SocketChannel;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_19} :catch_51

    .line 359
    const/4 v0, 0x0

    :try_start_1a
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 360
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->d:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/SelectorWrapper;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 361
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_37} :catch_38

    goto :goto_a

    .line 364
    :catch_38
    move-exception v0

    .line 365
    :goto_39
    if-eqz v2, :cond_3e

    .line 366
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 367
    :cond_3e
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 368
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$6;->a:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->a(Ljava/lang/Exception;)Z

    goto :goto_a

    .line 364
    :catch_51
    move-exception v0

    move-object v1, v2

    goto :goto_39
.end method
