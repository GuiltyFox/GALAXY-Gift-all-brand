.class public final Lrx/internal/schedulers/ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/util/SubscriptionList;

.field final b:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->b:Lrx/functions/Action0;

    .line 40
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/SubscriptionList;

    .line 41
    return-void
.end method

.method public constructor <init>(Lrx/functions/Action0;Lrx/subscriptions/CompositeSubscription;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->b:Lrx/functions/Action0;

    .line 44
    new-instance v0, Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/subscriptions/CompositeSubscription;)V

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/SubscriptionList;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Future;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$FutureCompleter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lrx/internal/schedulers/ScheduledAction$FutureCompleter;-><init>(Lrx/internal/schedulers/ScheduledAction;Ljava/util/concurrent/Future;Lrx/internal/schedulers/ScheduledAction$1;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->a(Lrx/Subscription;)V

    .line 101
    return-void
.end method

.method public a(Lrx/subscriptions/CompositeSubscription;)V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/subscriptions/CompositeSubscription;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->a(Lrx/Subscription;)V

    .line 112
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 80
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->b()V

    .line 82
    :cond_d
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->a:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->c()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/schedulers/ScheduledAction;->lazySet(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->b:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->a()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_10
    .catchall {:try_start_0 .. :try_end_c} :catchall_42

    .line 68
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->b()V

    .line 70
    :goto_f
    return-void

    .line 56
    :catch_10
    move-exception v0

    .line 59
    :try_start_11
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_38

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 64
    :goto_1e
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->a()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->b()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->a(Ljava/lang/Throwable;)V

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_42

    .line 68
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->b()V

    goto :goto_f

    .line 62
    :cond_38
    :try_start_38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_42

    move-object v0, v1

    goto :goto_1e

    .line 68
    :catchall_42
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->b()V

    throw v0
.end method
