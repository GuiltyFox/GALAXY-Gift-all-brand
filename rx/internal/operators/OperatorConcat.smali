.class public final Lrx/internal/operators/OperatorConcat;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorConcat$1;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat;-><init>()V

    return-void
.end method

.method public static a()Lrx/internal/operators/OperatorConcat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorConcat",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lrx/internal/operators/OperatorConcat$Holder;->a:Lrx/internal/operators/OperatorConcat;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 57
    new-instance v1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 58
    invoke-virtual {p1, v1}, Lrx/Subscriber;->a(Lrx/Subscription;)V

    .line 59
    new-instance v2, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-direct {v2, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;-><init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V

    .line 60
    new-instance v0, Lrx/internal/operators/OperatorConcat$ConcatProducer;

    invoke-direct {v0, v2}, Lrx/internal/operators/OperatorConcat$ConcatProducer;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    .line 61
    invoke-virtual {p1, v0}, Lrx/Subscriber;->a(Lrx/Producer;)V

    .line 62
    return-object v2
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 40
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorConcat;->a(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method
