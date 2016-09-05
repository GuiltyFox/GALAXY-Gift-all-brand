.class final Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
.super Lrx/Subscriber;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Lrx/subscriptions/SerialSubscription;

.field private final g:Ljava/util/concurrent/atomic/AtomicLong;

.field private final h:Lrx/internal/producers/ProducerArbiter;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 80
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a:Lrx/internal/operators/NotificationLite;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 95
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->e:Lrx/Subscriber;

    .line 96
    iput-object p2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->f:Lrx/subscriptions/SerialSubscription;

    .line 97
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->h:Lrx/internal/producers/ProducerArbiter;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 99
    new-instance v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->a(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a(Lrx/Subscription;)V

    .line 105
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->g()V

    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;J)V
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b(J)V

    return-void
.end method

.method private b(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 115
    cmp-long v0, p1, v4

    if-gtz v0, :cond_7

    .line 126
    :cond_6
    :goto_6
    return-void

    .line 117
    :cond_7
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .line 118
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->h:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v2, p1, p2}, Lrx/internal/producers/ProducerArbiter;->a(J)V

    .line 119
    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 120
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->c:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    if-nez v0, :cond_6

    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_6

    .line 123
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->f()V

    goto :goto_6
.end method

.method private g()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 130
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->e:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b()V

    .line 144
    return-void
.end method

.method public a(Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_16

    .line 136
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->f()V

    .line 138
    :cond_16
    return-void
.end method

.method public synthetic a_(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 79
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a(Lrx/Observable;)V

    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 111
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a(J)V

    .line 112
    return-void
.end method

.method e()V
    .registers 3

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->c:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 157
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_e

    .line 158
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->f()V

    .line 160
    :cond_e
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a(J)V

    .line 161
    return-void
.end method

.method f()V
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_42

    .line 165
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 167
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->e:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->i_()V

    .line 181
    :cond_1f
    :goto_1f
    return-void

    .line 168
    :cond_20
    if-eqz v0, :cond_1f

    .line 169
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 170
    new-instance v1, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->e:Lrx/Subscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->h:Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v1, p0, v2, v3}, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V

    iput-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->c:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 171
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->f:Lrx/subscriptions/SerialSubscription;

    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->c:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v1, v2}, Lrx/subscriptions/SerialSubscription;->a(Lrx/Subscription;)V

    .line 172
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->c:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_1f

    .line 176
    :cond_42
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 178
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->e:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->i_()V

    goto :goto_1f
.end method

.method public i_()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_16

    .line 150
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->f()V

    .line 152
    :cond_16
    return-void
.end method
