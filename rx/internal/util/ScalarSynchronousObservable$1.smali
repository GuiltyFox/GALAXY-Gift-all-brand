.class Lrx/internal/util/ScalarSynchronousObservable$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 35
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;->a(Lrx/Subscriber;)V

    return-void
.end method

.method public a(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p1}, Lrx/Subscriber;->i_()V

    .line 48
    return-void
.end method
