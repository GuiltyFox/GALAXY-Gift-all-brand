.class final Lrx/internal/schedulers/ScheduledAction$Remover;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field final a:Lrx/internal/schedulers/ScheduledAction;

.field final b:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/ScheduledAction;Lrx/subscriptions/CompositeSubscription;)V
    .registers 3

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 160
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->a:Lrx/internal/schedulers/ScheduledAction;

    .line 161
    iput-object p2, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->b:Lrx/subscriptions/CompositeSubscription;

    .line 162
    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/schedulers/ScheduledAction$Remover;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->b(Lrx/Subscription;)V

    .line 174
    :cond_f
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->c()Z

    move-result v0

    return v0
.end method
