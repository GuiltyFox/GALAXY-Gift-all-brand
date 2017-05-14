.class Lcom/koushikdutta/async/AsyncServer$13;
.super Ljava/lang/Thread;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/SelectorWrapper;

.field final synthetic b:Ljava/util/PriorityQueue;

.field final synthetic c:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .registers 5

    .prologue
    .line 566
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$13;->c:Lcom/koushikdutta/async/AsyncServer;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$13;->a:Lcom/koushikdutta/async/SelectorWrapper;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$13;->b:Ljava/util/PriorityQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$13;->c:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$13;->a:Lcom/koushikdutta/async/SelectorWrapper;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$13;->b:Ljava/util/PriorityQueue;

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V

    .line 569
    return-void
.end method
