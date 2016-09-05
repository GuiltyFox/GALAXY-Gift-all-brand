.class final Lrx/subscriptions/MultipleAssignmentSubscription$State;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"


# instance fields
.field final a:Z

.field final b:Lrx/Subscription;


# direct methods
.method constructor <init>(ZLrx/Subscription;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->a:Z

    .line 37
    iput-object p2, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->b:Lrx/Subscription;

    .line 38
    return-void
.end method


# virtual methods
.method a()Lrx/subscriptions/MultipleAssignmentSubscription$State;
    .registers 4

    .prologue
    .line 41
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    const/4 v1, 0x1

    iget-object v2, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->b:Lrx/Subscription;

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/MultipleAssignmentSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method

.method a(Lrx/Subscription;)Lrx/subscriptions/MultipleAssignmentSubscription$State;
    .registers 4

    .prologue
    .line 45
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->a:Z

    invoke-direct {v0, v1, p1}, Lrx/subscriptions/MultipleAssignmentSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method
