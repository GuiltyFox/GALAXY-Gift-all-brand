.class Lcom/koushikdutta/async/AsyncServer$9;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<",
        "Ljava/net/InetAddress;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$9;->a:Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 442
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer$9;->a([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected a([Ljava/net/InetAddress;)V
    .registers 3

    .prologue
    .line 445
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncServer$9;->b(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method
