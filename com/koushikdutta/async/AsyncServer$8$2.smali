.class Lcom/koushikdutta/async/AsyncServer$8$2;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer$8;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/AsyncServer$8;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer$8;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 428
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->b:Lcom/koushikdutta/async/AsyncServer$8;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 431
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->b:Lcom/koushikdutta/async/AsyncServer$8;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer$8;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 432
    return-void
.end method
