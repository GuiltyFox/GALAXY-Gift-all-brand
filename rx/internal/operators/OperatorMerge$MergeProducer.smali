.class final Lrx/internal/operators/OperatorMerge$MergeProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 117
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 118
    return-void
.end method


# virtual methods
.method public a(I)J
    .registers 4

    .prologue
    .line 134
    neg-int v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 122
    cmp-long v0, p1, v2

    if-lez v0, :cond_1d

    .line 123
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 132
    :cond_13
    :goto_13
    return-void

    .line 126
    :cond_14
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 127
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeProducer;->a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    goto :goto_13

    .line 129
    :cond_1d
    cmp-long v0, p1, v2

    if-gez v0, :cond_13

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
