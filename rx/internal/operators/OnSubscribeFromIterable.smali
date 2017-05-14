.class public final Lrx/internal/operators/OnSubscribeFromIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_e

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_e
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable;->a:Ljava/lang/Iterable;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 32
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFromIterable;->a(Lrx/Subscriber;)V

    return-void
.end method

.method public a(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lrx/Subscriber;->c()Z

    move-result v1

    if-nez v1, :cond_16

    .line 47
    invoke-virtual {p1}, Lrx/Subscriber;->m_()V

    .line 50
    :goto_15
    return-void

    .line 49
    :cond_16
    new-instance v1, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lrx/Subscriber;Ljava/util/Iterator;Lrx/internal/operators/OnSubscribeFromIterable$1;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->a(Lrx/Producer;)V

    goto :goto_15
.end method
