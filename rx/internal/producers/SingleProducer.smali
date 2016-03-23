.class public final Lrx/internal/producers/SingleProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SingleProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e8a53b866dafe2cL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/producers/SingleProducer;, "Lrx/internal/producers/SingleProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/producers/SingleProducer;->child:Lrx/Subscriber;

    .line 42
    iput-object p2, p0, Lrx/internal/producers/SingleProducer;->value:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/SingleProducer;, "Lrx/internal/producers/SingleProducer<TT;>;"
    const-wide/16 v4, 0x0

    .line 47
    cmp-long v3, p1, v4

    if-gez v3, :cond_f

    .line 48
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "n >= 0 required"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_f
    cmp-long v3, p1, v4

    if-nez v3, :cond_14

    .line 77
    :cond_13
    :goto_13
    return-void

    .line 55
    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lrx/internal/producers/SingleProducer;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 57
    iget-object v0, p0, Lrx/internal/producers/SingleProducer;->child:Lrx/Subscriber;

    .line 58
    .local v0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/producers/SingleProducer;->value:Ljava/lang/Object;

    .line 60
    .local v2, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_13

    .line 65
    :try_start_26
    invoke-virtual {v0, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_33

    .line 71
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_13

    .line 75
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_13

    .line 66
    :catch_33
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_13
.end method