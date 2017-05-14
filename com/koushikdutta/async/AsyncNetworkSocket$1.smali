.class Lcom/koushikdutta/async/AsyncNetworkSocket$1;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Lcom/koushikdutta/async/ByteBufferList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic b:Lcom/koushikdutta/async/AsyncNetworkSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 67
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->b:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->b:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 71
    return-void
.end method
