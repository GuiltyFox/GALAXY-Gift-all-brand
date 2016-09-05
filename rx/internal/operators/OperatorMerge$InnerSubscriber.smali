.class final Lrx/internal/operators/OperatorMerge$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


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


# static fields
.field static final f:I


# instance fields
.field final a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field volatile c:Z

.field volatile d:Lrx/internal/util/RxRingBuffer;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 791
    sget v0, Lrx/internal/util/RxRingBuffer;->c:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->f:I

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 793
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 794
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 795
    iput-wide p2, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->b:J

    .line 796
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->c:Z

    .line 809
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->e()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    .line 811
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
    .line 804
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->a(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 805
    return-void
.end method

.method public b(J)V
    .registers 6

    .prologue
    .line 818
    iget v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->e:I

    long-to-int v1, p1

    sub-int/2addr v0, v1

    .line 819
    sget v1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->f:I

    if-le v0, v1, :cond_b

    .line 820
    iput v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->e:I

    .line 828
    :cond_a
    :goto_a
    return-void

    .line 823
    :cond_b
    sget v1, Lrx/internal/util/RxRingBuffer;->c:I

    iput v1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->e:I

    .line 824
    sget v1, Lrx/internal/util/RxRingBuffer;->c:I

    sub-int v0, v1, v0

    .line 825
    if-lez v0, :cond_a

    .line 826
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a(J)V

    goto :goto_a
.end method

.method public d()V
    .registers 3

    .prologue
    .line 799
    sget v0, Lrx/internal/util/RxRingBuffer;->c:I

    iput v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->e:I

    .line 800
    sget v0, Lrx/internal/util/RxRingBuffer;->c:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a(J)V

    .line 801
    return-void
.end method

.method public i_()V
    .registers 2

    .prologue
    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->c:Z

    .line 815
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->a:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->g()V

    .line 816
    return-void
.end method
