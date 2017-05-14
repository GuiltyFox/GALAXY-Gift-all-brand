.class Lcom/koushikdutta/async/future/MultiFuture$1;
.super Ljava/lang/Object;
.source "MultiFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/MultiFuture;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/future/MultiFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/MultiFuture;)V
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->a:Lcom/koushikdutta/async/future/MultiFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v1, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->a:Lcom/koushikdutta/async/future/MultiFuture;

    monitor-enter v1

    .line 16
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->a:Lcom/koushikdutta/async/future/MultiFuture;

    iget-object v0, v0, Lcom/koushikdutta/async/future/MultiFuture;->a:Ljava/util/ArrayList;

    .line 17
    iget-object v2, p0, Lcom/koushikdutta/async/future/MultiFuture$1;->a:Lcom/koushikdutta/async/future/MultiFuture;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/koushikdutta/async/future/MultiFuture;->a:Ljava/util/ArrayList;

    .line 18
    monitor-exit v1

    .line 20
    if-nez v0, :cond_13

    .line 25
    :cond_f
    return-void

    .line 18
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    .line 22
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/future/FutureCallback;

    .line 23
    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_17
.end method
