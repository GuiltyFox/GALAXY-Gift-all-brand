.class public Lrx/internal/schedulers/EventLoopsScheduler;
.super Lrx/Scheduler;
.source "EventLoopsScheduler.java"


# static fields
.field static final a:I

.field static final b:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

.field static final c:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

.field private static final e:Lrx/internal/util/RxThreadFactory;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 29
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxComputationThreadPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->e:Lrx/internal/util/RxThreadFactory;

    .line 38
    const-string/jumbo v0, "rx.scheduler.max-computation-threads"

    invoke-static {v0, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 41
    if-lez v0, :cond_22

    if-le v0, v1, :cond_23

    :cond_22
    move v0, v1

    .line 46
    :cond_23
    sput v0, Lrx/internal/schedulers/EventLoopsScheduler;->a:I

    .line 51
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v1, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v2, "RxComputationShutdown-"

    invoke-direct {v1, v2}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->b:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 52
    sget-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->b:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->b()V

    .line 86
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0, v3}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(I)V

    sput-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->c:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/EventLoopsScheduler;->c:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler;->b()V

    .line 97
    return-void
.end method

.method static synthetic c()Lrx/internal/util/RxThreadFactory;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lrx/internal/schedulers/EventLoopsScheduler;->e:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 101
    new-instance v1, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->a()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V

    return-object v1
.end method

.method public b()V
    .registers 4

    .prologue
    .line 106
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    sget v1, Lrx/internal/schedulers/EventLoopsScheduler;->a:I

    invoke-direct {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(I)V

    .line 107
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/EventLoopsScheduler;->c:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 108
    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->b()V

    .line 110
    :cond_14
    return-void
.end method
