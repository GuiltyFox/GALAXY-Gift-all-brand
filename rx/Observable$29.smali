.class Lrx/Observable$29;
.super Lrx/Subscriber;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->a(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/functions/Action0;

.field final synthetic b:Lrx/functions/Action1;

.field final synthetic c:Lrx/functions/Action1;

.field final synthetic d:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 5

    .prologue
    .line 8017
    iput-object p1, p0, Lrx/Observable$29;->d:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$29;->a:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Observable$29;->b:Lrx/functions/Action1;

    iput-object p4, p0, Lrx/Observable$29;->c:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 8026
    iget-object v0, p0, Lrx/Observable$29;->b:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->a(Ljava/lang/Object;)V

    .line 8027
    return-void
.end method

.method public final a_(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 8031
    iget-object v0, p0, Lrx/Observable$29;->c:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->a(Ljava/lang/Object;)V

    .line 8032
    return-void
.end method

.method public final n_()V
    .registers 2

    .prologue
    .line 8021
    iget-object v0, p0, Lrx/Observable$29;->a:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->a()V

    .line 8022
    return-void
.end method
