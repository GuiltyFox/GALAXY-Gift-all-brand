.class final Lrx/subjects/SubjectSubscriptionManager;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$State",
        "<TT;>;>;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile a:Ljava/lang/Object;

.field b:Z

.field c:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field d:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field e:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field public final f:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->e:Lrx/subjects/SubjectSubscriptionManager$State;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager;->b:Z

    .line 42
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->c:Lrx/functions/Action1;

    .line 44
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->d:Lrx/functions/Action1;

    .line 46
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->e:Lrx/functions/Action1;

    .line 48
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->f:Lrx/internal/operators/NotificationLite;

    .line 52
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 35
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->a(Lrx/Subscriber;)V

    return-void
.end method

.method public a(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;-><init>(Lrx/Observer;)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lrx/subjects/SubjectSubscriptionManager;->a(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 58
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->c:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->a(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Lrx/Subscriber;->c()Z

    move-result v1

    if-nez v1, :cond_22

    .line 60
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->a(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Lrx/Subscriber;->c()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 61
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->b(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 64
    :cond_22
    return-void
.end method

.method a(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$1;

    invoke-direct {v0, p0, p2}, Lrx/subjects/SubjectSubscriptionManager$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->a(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->a(Lrx/Subscription;)V

    .line 73
    return-void
.end method

.method a(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    .line 94
    iget-boolean v1, v0, Lrx/subjects/SubjectSubscriptionManager$State;->a:Z

    if-eqz v1, :cond_11

    .line 95
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->e:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->a(Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x0

    .line 101
    :goto_10
    return v0

    .line 98
    :cond_11
    invoke-virtual {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->a(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->d:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->a(Ljava/lang/Object;)V

    .line 101
    const/4 v0, 0x1

    goto :goto_10
.end method

.method b(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->a:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method b(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    .line 112
    iget-boolean v1, v0, Lrx/subjects/SubjectSubscriptionManager$State;->a:Z

    if-eqz v1, :cond_b

    .line 117
    :cond_a
    :goto_a
    return-void

    .line 115
    :cond_b
    invoke-virtual {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->b(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v1

    .line 116
    if-eq v1, v0, :cond_a

    invoke-virtual {p0, v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_a
.end method

.method b()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->b:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object v0
.end method

.method c(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->b(Ljava/lang/Object;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager;->b:Z

    .line 140
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    .line 141
    iget-boolean v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->a:Z

    if-eqz v0, :cond_13

    .line 142
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->c:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 144
    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->d:Lrx/subjects/SubjectSubscriptionManager$State;

    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->b:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    goto :goto_12
.end method
