.class Lcom/koushikdutta/async/AsyncServer$8;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic c:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .registers 4

    .prologue
    .line 414
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$8;->c:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$8;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$8;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_20

    .line 420
    :cond_b
    new-instance v0, Lcom/koushikdutta/async/HostnameResolutionException;

    const-string/jumbo v1, "no addresses for host"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/HostnameResolutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    .line 427
    :catch_14
    move-exception v0

    .line 428
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$8;->c:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$8$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/AsyncServer$8$2;-><init>(Lcom/koushikdutta/async/AsyncServer$8;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 435
    :goto_1f
    return-void

    .line 421
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$8;->c:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer$8$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/AsyncServer$8$1;-><init>(Lcom/koushikdutta/async/AsyncServer$8;[Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_14

    goto :goto_1f
.end method
