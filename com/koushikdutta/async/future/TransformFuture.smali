.class public abstract Lcom/koushikdutta/async/future/TransformFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "TransformFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<TT;>;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/TransformFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    :goto_6
    return-void

    .line 8
    :cond_7
    if-eqz p1, :cond_d

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->b(Ljava/lang/Exception;)V

    goto :goto_6

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/TransformFuture;->a(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_6

    .line 16
    :catch_11
    move-exception v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/TransformFuture;->b(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->a(Ljava/lang/Exception;)Z

    .line 23
    return-void
.end method
