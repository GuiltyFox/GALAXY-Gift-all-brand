.class public Lbolts/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/Continuation",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    invoke-static {}, Lbolts/BoltsExecutors;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbolts/Task;->a:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-static {}, Lbolts/BoltsExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/Task;->c:Ljava/util/concurrent/Executor;

    .line 47
    invoke-static {}, Lbolts/AndroidExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/Task;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/Task;->d:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/Task;->i:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static a()Lbolts/Task$TaskCompletionSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>.TaskCompletionSource;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lbolts/Task;

    invoke-direct {v0}, Lbolts/Task;-><init>()V

    .line 68
    new-instance v1, Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbolts/Task$TaskCompletionSource;-><init>(Lbolts/Task;Lbolts/Task$1;)V

    return-object v1
.end method

.method public static a(Ljava/lang/Exception;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lbolts/Task;->a()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Exception;)V

    .line 143
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->a()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lbolts/Task;->a()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->a()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lbolts/Task;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(Lbolts/Task;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lbolts/Task;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lbolts/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lbolts/Task;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .registers 5

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lbolts/Task;->c(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    return-void
.end method

.method static synthetic a(Lbolts/Task;Z)Z
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lbolts/Task;->e:Z

    return p1
.end method

.method static synthetic b(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .registers 5

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lbolts/Task;->d(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    return-void
.end method

.method static synthetic b(Lbolts/Task;)Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lbolts/Task;->e:Z

    return v0
.end method

.method static synthetic b(Lbolts/Task;Z)Z
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lbolts/Task;->f:Z

    return p1
.end method

.method private static c(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Lbolts/Task$13;

    invoke-direct {v0, p4, p0, p1, p2}, Lbolts/Task$13;-><init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method static synthetic c(Lbolts/Task;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lbolts/Task;->h()V

    return-void
.end method

.method private static d(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 787
    new-instance v0, Lbolts/Task$14;

    invoke-direct {v0, p4, p0, p1, p2}, Lbolts/Task$14;-><init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method public static g()Lbolts/Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lbolts/Task;->a()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->c()V

    .line 152
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->a()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .registers 4

    .prologue
    .line 829
    iget-object v1, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Continuation;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 832
    :try_start_15
    invoke-interface {v0, p0}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1e
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    goto :goto_9

    .line 833
    :catch_19
    move-exception v0

    .line 834
    :try_start_1a
    throw v0

    .line 840
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1b

    throw v0

    .line 835
    :catch_1e
    move-exception v0

    .line 836
    :try_start_1f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 839
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/Task;->i:Ljava/util/List;

    .line 840
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1b

    .line 841
    return-void
.end method


# virtual methods
.method public a(Lbolts/Continuation;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 556
    sget-object v0, Lbolts/Task;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/Task;->a(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbolts/Task;->b(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {}, Lbolts/Task;->a()Lbolts/Task$TaskCompletionSource;

    move-result-object v2

    .line 532
    iget-object v6, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 533
    :try_start_7
    invoke-virtual {p0}, Lbolts/Task;->b()Z

    move-result v7

    .line 534
    if-nez v7, :cond_1b

    .line 535
    iget-object v8, p0, Lbolts/Task;->i:Ljava/util/List;

    new-instance v0, Lbolts/Task$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbolts/Task$9;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_1b
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 544
    if-eqz v7, :cond_21

    .line 545
    invoke-static {v2, p1, p0, p2, p3}, Lbolts/Task;->c(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    .line 547
    :cond_21
    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->a()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 543
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public b(Lbolts/Continuation;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 662
    sget-object v0, Lbolts/Task;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbolts/Task;->c(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Lbolts/Task;->a()Lbolts/Task$TaskCompletionSource;

    move-result-object v2

    .line 586
    iget-object v6, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 587
    :try_start_7
    invoke-virtual {p0}, Lbolts/Task;->b()Z

    move-result v7

    .line 588
    if-nez v7, :cond_1b

    .line 589
    iget-object v8, p0, Lbolts/Task;->i:Ljava/util/List;

    new-instance v0, Lbolts/Task$10;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbolts/Task$10;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_1b
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 598
    if-eqz v7, :cond_21

    .line 599
    invoke-static {v2, p1, p0, p2, p3}, Lbolts/Task;->d(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    .line 601
    :cond_21
    invoke-virtual {v2}, Lbolts/Task$TaskCompletionSource;->a()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 597
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 76
    iget-object v1, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_3
    iget-boolean v0, p0, Lbolts/Task;->e:Z

    monitor-exit v1

    return v0

    .line 78
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public c(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Lbolts/Task$11;

    invoke-direct {v0, p0, p3, p1}, Lbolts/Task$11;-><init>(Lbolts/Task;Lbolts/CancellationToken;Lbolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lbolts/Task;->a(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 85
    iget-object v1, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_3
    iget-boolean v0, p0, Lbolts/Task;->f:Z

    monitor-exit v1

    return v0

    .line 87
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 94
    iget-object v1, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 96
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public f()Ljava/lang/Exception;
    .registers 3

    .prologue
    .line 112
    iget-object v1, p0, Lbolts/Task;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
