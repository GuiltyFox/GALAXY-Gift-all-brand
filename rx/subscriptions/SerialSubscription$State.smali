.class final Lrx/subscriptions/SerialSubscription$State;
.super Ljava/lang/Object;
.source "SerialSubscription.java"


# instance fields
.field final a:Z

.field final b:Lrx/Subscription;


# direct methods
.method constructor <init>(ZLrx/Subscription;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lrx/subscriptions/SerialSubscription$State;->a:Z

    .line 35
    iput-object p2, p0, Lrx/subscriptions/SerialSubscription$State;->b:Lrx/Subscription;

    .line 36
    return-void
.end method


# virtual methods
.method a()Lrx/subscriptions/SerialSubscription$State;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    const/4 v1, 0x1

    iget-object v2, p0, Lrx/subscriptions/SerialSubscription$State;->b:Lrx/Subscription;

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method

.method a(Lrx/Subscription;)Lrx/subscriptions/SerialSubscription$State;
    .registers 4

    .prologue
    .line 43
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/SerialSubscription$State;->a:Z

    invoke-direct {v0, v1, p1}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method
