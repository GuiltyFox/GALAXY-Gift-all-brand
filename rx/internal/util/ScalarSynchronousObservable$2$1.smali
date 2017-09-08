.class Lrx/internal/util/ScalarSynchronousObservable$2$1;
.super Lrx/Subscriber;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable$2;->a(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/Subscriber;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable$2;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 133
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->b:Lrx/internal/util/ScalarSynchronousObservable$2;

    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    .line 141
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public n_()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->n_()V

    .line 145
    return-void
.end method
