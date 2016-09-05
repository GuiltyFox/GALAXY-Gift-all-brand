.class final Lrx/schedulers/CachedThreadScheduler;
.super Lrx/Scheduler;
.source "CachedThreadScheduler.java"


# static fields
.field static final a:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

.field static final c:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field private static final d:Lrx/internal/util/RxThreadFactory;

.field private static final e:Lrx/internal/util/RxThreadFactory;

.field private static final f:Ljava/util/concurrent/TimeUnit;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxCachedThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->d:Lrx/internal/util/RxThreadFactory;

    .line 33
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxCachedWorkerPoolEvictor-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->e:Lrx/internal/util/RxThreadFactory;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->f:Ljava/util/concurrent/TimeUnit;

    .line 41
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    new-instance v1, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v2, "RxCachedThreadSchedulerShutdown-"

    invoke-direct {v1, v2}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->a:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 42
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->a:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->b()V

    .line 139
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->c:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 140
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->c:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->d()V

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 143
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/schedulers/CachedThreadScheduler;->c:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler;->b()V

    .line 146
    return-void
.end method

.method static synthetic c()Lrx/internal/util/RxThreadFactory;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->e:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method

.method static synthetic d()Lrx/internal/util/RxThreadFactory;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->d:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 171
    new-instance v1, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;

    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v1, v0}, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;-><init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    return-object v1
.end method

.method public b()V
    .registers 5

    .prologue
    .line 150
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    const-wide/16 v2, 0x3c

    sget-object v1, Lrx/schedulers/CachedThreadScheduler;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v2, v3, v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 151
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/schedulers/CachedThreadScheduler;->c:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 152
    invoke-virtual {v0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->d()V

    .line 154
    :cond_16
    return-void
.end method
