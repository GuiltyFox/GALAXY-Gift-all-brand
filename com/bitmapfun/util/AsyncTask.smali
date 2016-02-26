.class public abstract Lcom/bitmapfun/util/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;,
        Lcom/bitmapfun/util/AsyncTask$InternalHandler;,
        Lcom/bitmapfun/util/AsyncTask$SerialExecutor;,
        Lcom/bitmapfun/util/AsyncTask$Status;,
        Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$bitmapfun$util$AsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/bitmapfun/util/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/bitmapfun/util/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bitmapfun/util/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$bitmapfun$util$AsyncTask$Status()[I
    .registers 3

    .prologue
    .line 198
    sget-object v0, Lcom/bitmapfun/util/AsyncTask;->$SWITCH_TABLE$com$bitmapfun$util$AsyncTask$Status:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/bitmapfun/util/AsyncTask$Status;->values()[Lcom/bitmapfun/util/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/bitmapfun/util/AsyncTask$Status;->FINISHED:Lcom/bitmapfun/util/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/bitmapfun/util/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/bitmapfun/util/AsyncTask$Status;->PENDING:Lcom/bitmapfun/util/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/bitmapfun/util/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/bitmapfun/util/AsyncTask$Status;->RUNNING:Lcom/bitmapfun/util/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/bitmapfun/util/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/bitmapfun/util/AsyncTask;->$SWITCH_TABLE$com$bitmapfun$util$AsyncTask$Status:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x0

    .line 205
    new-instance v0, Lcom/bitmapfun/util/AsyncTask$1;

    invoke-direct {v0}, Lcom/bitmapfun/util/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/bitmapfun/util/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 214
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 213
    sput-object v0, Lcom/bitmapfun/util/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 220
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    .line 221
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bitmapfun/util/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/bitmapfun/util/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 222
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 220
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 219
    sput-object v1, Lcom/bitmapfun/util/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 228
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/bitmapfun/util/AsyncTask$SerialExecutor;

    invoke-direct {v0, v10}, Lcom/bitmapfun/util/AsyncTask$SerialExecutor;-><init>(Lcom/bitmapfun/util/AsyncTask$SerialExecutor;)V

    :goto_33
    sput-object v0, Lcom/bitmapfun/util/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 232
    const/4 v0, 0x2

    sget-object v1, Lcom/bitmapfun/util/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 231
    sput-object v0, Lcom/bitmapfun/util/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 237
    new-instance v0, Lcom/bitmapfun/util/AsyncTask$InternalHandler;

    invoke-direct {v0, v10}, Lcom/bitmapfun/util/AsyncTask$InternalHandler;-><init>(Lcom/bitmapfun/util/AsyncTask$InternalHandler;)V

    sput-object v0, Lcom/bitmapfun/util/AsyncTask;->sHandler:Lcom/bitmapfun/util/AsyncTask$InternalHandler;

    .line 239
    sget-object v0, Lcom/bitmapfun/util/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/bitmapfun/util/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 229
    :cond_4a
    sget-object v0, Lcom/bitmapfun/util/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_33
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 307
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    sget-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->PENDING:Lcom/bitmapfun/util/AsyncTask$Status;

    iput-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mStatus:Lcom/bitmapfun/util/AsyncTask$Status;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 308
    new-instance v0, Lcom/bitmapfun/util/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/AsyncTask$2;-><init>(Lcom/bitmapfun/util/AsyncTask;)V

    iput-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mWorker:Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;

    .line 318
    new-instance v0, Lcom/bitmapfun/util/AsyncTask$3;

    iget-object v1, p0, Lcom/bitmapfun/util/AsyncTask;->mWorker:Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/bitmapfun/util/AsyncTask$3;-><init>(Lcom/bitmapfun/util/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 333
    return-void
.end method

.method static synthetic access$0(Lcom/bitmapfun/util/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/bitmapfun/util/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bitmapfun/util/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/bitmapfun/util/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 630
    sget-object v0, Lcom/bitmapfun/util/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/bitmapfun/util/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 656
    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 660
    :goto_9
    sget-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->FINISHED:Lcom/bitmapfun/util/AsyncTask$Status;

    iput-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mStatus:Lcom/bitmapfun/util/AsyncTask$Status;

    .line 661
    return-void

    .line 658
    :cond_e
    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static init()V
    .registers 1

    .prologue
    .line 296
    sget-object v0, Lcom/bitmapfun/util/AsyncTask;->sHandler:Lcom/bitmapfun/util/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/bitmapfun/util/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 297
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 344
    sget-object v1, Lcom/bitmapfun/util/AsyncTask;->sHandler:Lcom/bitmapfun/util/AsyncTask$InternalHandler;

    .line 345
    new-instance v2, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;-><init>(Lcom/bitmapfun/util/AsyncTask;[Ljava/lang/Object;)V

    .line 344
    invoke-virtual {v1, v5, v2}, Lcom/bitmapfun/util/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/bitmapfun/util/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 337
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_b

    .line 338
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_b
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 301
    sput-object p0, Lcom/bitmapfun/util/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 302
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 493
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/bitmapfun/util/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcom/bitmapfun/util/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/bitmapfun/util/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bitmapfun/util/AsyncTask;
    .registers 5
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/bitmapfun/util/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mStatus:Lcom/bitmapfun/util/AsyncTask$Status;

    sget-object v1, Lcom/bitmapfun/util/AsyncTask$Status;->PENDING:Lcom/bitmapfun/util/AsyncTask$Status;

    if-eq v0, v1, :cond_15

    .line 600
    invoke-static {}, Lcom/bitmapfun/util/AsyncTask;->$SWITCH_TABLE$com$bitmapfun$util$AsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcom/bitmapfun/util/AsyncTask;->mStatus:Lcom/bitmapfun/util/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/bitmapfun/util/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 611
    :cond_15
    sget-object v0, Lcom/bitmapfun/util/AsyncTask$Status;->RUNNING:Lcom/bitmapfun/util/AsyncTask$Status;

    iput-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mStatus:Lcom/bitmapfun/util/AsyncTask$Status;

    .line 613
    invoke-virtual {p0}, Lcom/bitmapfun/util/AsyncTask;->onPreExecute()V

    .line 615
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mWorker:Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 616
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 618
    return-object p0

    .line 602
    :pswitch_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_26
        :pswitch_2e
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/bitmapfun/util/AsyncTask$Status;
    .registers 2

    .prologue
    .line 356
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mStatus:Lcom/bitmapfun/util/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .registers 2

    .prologue
    .line 460
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .registers 1

    .prologue
    .line 447
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/bitmapfun/util/AsyncTask;->onCancelled()V

    .line 432
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 384
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .registers 5
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Lcom/bitmapfun/util/AsyncTask;, "Lcom/bitmapfun/util/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lcom/bitmapfun/util/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 649
    sget-object v0, Lcom/bitmapfun/util/AsyncTask;->sHandler:Lcom/bitmapfun/util/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 650
    new-instance v2, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;-><init>(Lcom/bitmapfun/util/AsyncTask;[Ljava/lang/Object;)V

    .line 649
    invoke-virtual {v0, v1, v2}, Lcom/bitmapfun/util/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 652
    :cond_15
    return-void
.end method
