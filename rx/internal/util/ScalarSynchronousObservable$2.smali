.class Lrx/internal/util/ScalarSynchronousObservable$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->c(Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/functions/Func1;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 125
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->a:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 125
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;->a(Lrx/Subscriber;)V

    return-void
.end method

.method public a(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->a:Lrx/functions/Func1;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->b:Lrx/internal/util/ScalarSynchronousObservable;

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousObservable;->a(Lrx/internal/util/ScalarSynchronousObservable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v1, v2, :cond_23

    .line 130
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->a(Lrx/internal/util/ScalarSynchronousObservable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lrx/Subscriber;->m_()V

    .line 148
    :goto_22
    return-void

    .line 133
    :cond_23
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2$1;

    invoke-direct {v1, p0, p1, p1}, Lrx/internal/util/ScalarSynchronousObservable$2$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_22
.end method
