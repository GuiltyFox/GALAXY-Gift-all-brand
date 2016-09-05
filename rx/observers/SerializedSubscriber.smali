.class public Lrx/observers/SerializedSubscriber;
.super Lrx/Subscriber;
.source "SerializedSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 55
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/observers/SerializedSubscriber;->a:Lrx/Observer;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lrx/observers/SerializedSubscriber;->a:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->a(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lrx/observers/SerializedSubscriber;->a:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->a_(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public i_()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lrx/observers/SerializedSubscriber;->a:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->i_()V

    .line 66
    return-void
.end method
