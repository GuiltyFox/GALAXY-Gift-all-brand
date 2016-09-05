.class Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "EventLoopsScheduler.java"


# instance fields
.field private final a:Lrx/internal/util/SubscriptionList;

.field private final b:Lrx/subscriptions/CompositeSubscription;

.field private final c:Lrx/internal/util/SubscriptionList;

.field private final d:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V
    .registers 6

    .prologue
    .line 143
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 138
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->a:Lrx/internal/util/SubscriptionList;

    .line 139
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->b:Lrx/subscriptions/CompositeSubscription;

    .line 140
    new-instance v0, Lrx/internal/util/SubscriptionList;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/Subscription;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->a:Lrx/internal/util/SubscriptionList;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->b:Lrx/subscriptions/CompositeSubscription;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>([Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->c:Lrx/internal/util/SubscriptionList;

    .line 144
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->d:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 146
    return-void
.end method


# virtual methods
.method public a(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 11

    .prologue
    .line 168
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    invoke-static {}, Lrx/subscriptions/Subscriptions;->b()Lrx/Subscription;

    move-result-object v0

    .line 172
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->d:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    iget-object v5, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->b:Lrx/subscriptions/CompositeSubscription;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->a(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/subscriptions/CompositeSubscription;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_a
.end method

.method public b()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->c:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->b()V

    .line 151
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->c:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->c()Z

    move-result v0

    return v0
.end method
