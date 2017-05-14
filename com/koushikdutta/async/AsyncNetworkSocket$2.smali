.class Lcom/koushikdutta/async/AsyncNetworkSocket$2;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncNetworkSocket;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncNetworkSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->a:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->a:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->j()V

    .line 269
    return-void
.end method
