.class Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/future/ResponseFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<TT;",
        "Lcom/koushikdutta/ion/Loader$LoaderEmitter;",
        ">;",
        "Lcom/koushikdutta/ion/future/ResponseFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field o:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field p:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field q:Lcom/koushikdutta/ion/ResponseServedFrom;

.field r:Ljava/lang/Runnable;

.field s:Lcom/koushikdutta/ion/HeadersResponse;

.field t:Lcom/koushikdutta/async/DataEmitter;

.field final synthetic u:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;)V
    .registers 6

    .prologue
    .line 438
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    .line 439
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->r:Ljava/lang/Runnable;

    .line 440
    iget-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v1, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->b:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/ContextReference;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/koushikdutta/ion/Ion;->a(Lcom/koushikdutta/async/future/Future;Ljava/lang/Object;)V

    .line 441
    iget-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 448
    :cond_16
    return-void

    .line 443
    :cond_17
    iget-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 444
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_1d

    .line 446
    iget-object v2, p1, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v2, p0, v0}, Lcom/koushikdutta/ion/Ion;->a(Lcom/koushikdutta/async/future/Future;Ljava/lang/Object;)V

    goto :goto_1d
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 452
    invoke-super {p0}, Lcom/koushikdutta/async/future/TransformFuture;->a()V

    .line 453
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->t:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_c

    .line 454
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->t:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->d()V

    .line 455
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 456
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 457
    :cond_15
    return-void
.end method

.method protected a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V
    .registers 6

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->a()Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->t:Lcom/koushikdutta/async/DataEmitter;

    .line 468
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->c()Lcom/koushikdutta/ion/ResponseServedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->q:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 469
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->d()Lcom/koushikdutta/ion/HeadersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->s:Lcom/koushikdutta/ion/HeadersResponse;

    .line 470
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->e()Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->p:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 472
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->B:Lcom/koushikdutta/ion/HeadersCallback;

    if-eqz v0, :cond_2e

    .line 473
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->d()Lcom/koushikdutta/ion/HeadersResponse;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->c:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/ion/HeadersResponse;)V

    invoke-static {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 484
    :cond_2e
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;->b()J

    move-result-wide v2

    .line 486
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->t:Lcom/koushikdutta/async/DataEmitter;

    instance-of v0, v0, Lcom/koushikdutta/async/DataTrackingEmitter;

    if-nez v0, :cond_4d

    .line 487
    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 488
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->t:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataTrackingEmitter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    .line 493
    :goto_42
    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->t:Lcom/koushikdutta/async/DataEmitter;

    .line 494
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;

    invoke-direct {v1, p0, v2, v3}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$3;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;J)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataTrackingEmitter;->a(Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;)V

    .line 543
    return-void

    .line 491
    :cond_4d
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->t:Lcom/koushikdutta/async/DataEmitter;

    check-cast v0, Lcom/koushikdutta/async/DataTrackingEmitter;

    goto :goto_42
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 409
    check-cast p1, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Lcom/koushikdutta/ion/Loader$LoaderEmitter;)V

    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->u:Lcom/koushikdutta/ion/IonRequestBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/Object;)Lcom/koushikdutta/ion/Response;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)",
            "Lcom/koushikdutta/ion/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Lcom/koushikdutta/ion/Response;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->p:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->q:Lcom/koushikdutta/ion/ResponseServedFrom;

    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->s:Lcom/koushikdutta/ion/HeadersResponse;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/Response;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-object v0
.end method

.method public l()Lcom/koushikdutta/async/future/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/ion/Response",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 424
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->d(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 434
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 435
    return-object v0
.end method
