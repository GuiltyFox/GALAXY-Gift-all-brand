.class final Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromIterable.java"

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
.field private final a:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->a:Lrx/Subscriber;

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->b:Ljava/util/Iterator;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;Lrx/internal/operators/OnSubscribeFromIterable$1;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lrx/Subscriber;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->a:Lrx/Subscriber;

    .line 121
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->b:Ljava/util/Iterator;

    .line 124
    :goto_4
    invoke-virtual {v0}, Lrx/Subscriber;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 133
    :cond_a
    :goto_a
    return-void

    .line 126
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V

    goto :goto_4

    .line 128
    :cond_19
    invoke-virtual {v0}, Lrx/Subscriber;->c()Z

    move-result v1

    if-nez v1, :cond_a

    .line 129
    invoke-virtual {v0}, Lrx/Subscriber;->i_()V

    goto :goto_a
.end method

.method public a(J)V
    .registers 10

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10

    .line 76
    :cond_f
    :goto_f
    return-void

    .line 69
    :cond_10
    cmp-long v0, p1, v4

    if-nez v0, :cond_1e

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 70
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->a()V

    goto :goto_f

    .line 72
    :cond_1e
    cmp-long v0, p1, v2

    if-lez v0, :cond_f

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 73
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->b(J)V

    goto :goto_f
.end method

.method b(J)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 80
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->a:Lrx/Subscriber;

    .line 81
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->b:Ljava/util/Iterator;

    :cond_6
    move-wide v0, p1

    .line 93
    :goto_7
    invoke-virtual {v2}, Lrx/Subscriber;->c()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 112
    :cond_d
    :goto_d
    return-void

    .line 95
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 96
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_2d

    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V

    goto :goto_7

    .line 100
    :cond_23
    invoke-virtual {v2}, Lrx/Subscriber;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 101
    invoke-virtual {v2}, Lrx/Subscriber;->i_()V

    goto :goto_d

    .line 108
    :cond_2d
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->addAndGet(J)J

    move-result-wide p1

    .line 109
    cmp-long v0, p1, v6

    if-nez v0, :cond_6

    goto :goto_d
.end method
