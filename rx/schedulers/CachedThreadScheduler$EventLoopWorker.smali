.class final Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "CachedThreadScheduler.java"


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:I

.field private final c:Lrx/subscriptions/CompositeSubscription;

.field private final d:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field private final e:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 180
    const-class v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;

    const-string/jumbo v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .registers 3

    .prologue
    .line 183
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 175
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->c:Lrx/subscriptions/CompositeSubscription;

    .line 184
    iput-object p1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->d:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 185
    invoke-virtual {p1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->a()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->e:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 186
    return-void
.end method


# virtual methods
.method public a(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 7

    .prologue
    .line 209
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 211
    invoke-static {}, Lrx/subscriptions/Subscriptions;->b()Lrx/Subscription;

    move-result-object v0

    .line 217
    :goto_c
    return-object v0

    .line 214
    :cond_d
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->e:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->b(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->a(Lrx/Subscription;)V

    .line 216
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Lrx/subscriptions/CompositeSubscription;)V

    goto :goto_c
.end method

.method public b()V
    .registers 4

    .prologue
    .line 190
    sget-object v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 192
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->d:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->e:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->a(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V

    .line 194
    :cond_11
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->b()V

    .line 195
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->c:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->c()Z

    move-result v0

    return v0
.end method
