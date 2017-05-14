.class Lcom/koushikdutta/async/AsyncServer$8$1;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer$8;->run()V
.end annotation


# instance fields
.field final synthetic a:[Ljava/net/InetAddress;

.field final synthetic b:Lcom/koushikdutta/async/AsyncServer$8;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer$8;[Ljava/net/InetAddress;)V
    .registers 3

    .prologue
    .line 421
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->b:Lcom/koushikdutta/async/AsyncServer$8;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->a:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->b:Lcom/koushikdutta/async/AsyncServer$8;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer$8;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->a:[Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 425
    return-void
.end method
