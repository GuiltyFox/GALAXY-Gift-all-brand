.class public final Lrx/subscriptions/MultipleAssignmentSubscription;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subscriptions/MultipleAssignmentSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    const/4 v2, 0x0

    invoke-static {}, Lrx/subscriptions/Subscriptions;->a()Lrx/Subscription;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lrx/subscriptions/MultipleAssignmentSubscription$State;-><init>(ZLrx/Subscription;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lrx/Subscription;)V
    .registers 5

    .prologue
    .line 78
    if-nez p1, :cond_b

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subscription can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_b
    iget-object v1, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    :cond_d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    .line 86
    iget-boolean v2, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->a:Z

    if-eqz v2, :cond_1b

    .line 87
    invoke-interface {p1}, Lrx/Subscription;->b()V

    .line 93
    :goto_1a
    return-void

    .line 90
    :cond_1b
    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription$State;->a(Lrx/Subscription;)Lrx/subscriptions/MultipleAssignmentSubscription$State;

    move-result-object v2

    .line 92
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a
.end method

.method public b()V
    .registers 4

    .prologue
    .line 58
    iget-object v1, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    .line 61
    iget-boolean v2, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->a:Z

    if-eqz v2, :cond_d

    .line 68
    :goto_c
    return-void

    .line 64
    :cond_d
    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription$State;->a()Lrx/subscriptions/MultipleAssignmentSubscription$State;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    iget-object v0, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->b:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->b()V

    goto :goto_c
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->a:Z

    return v0
.end method
