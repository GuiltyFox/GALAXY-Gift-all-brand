.class Lrx/Observable$27;
.super Lrx/Subscriber;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/functions/Action1;

.field final synthetic b:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action1;)V
    .registers 3

    .prologue
    .line 7914
    iput-object p1, p0, Lrx/Observable$27;->b:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$27;->a:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 7923
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a_(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7928
    iget-object v0, p0, Lrx/Observable$27;->a:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->a(Ljava/lang/Object;)V

    .line 7929
    return-void
.end method

.method public final i_()V
    .registers 1

    .prologue
    .line 7919
    return-void
.end method
