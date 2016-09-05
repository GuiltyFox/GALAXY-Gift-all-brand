.class public final Lrx/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

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


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method private constructor <init>(ZI)V
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean p1, p0, Lrx/internal/operators/OperatorMerge;->a:Z

    .line 95
    iput p2, p0, Lrx/internal/operators/OperatorMerge;->b:I

    .line 96
    return-void
.end method

.method synthetic constructor <init>(ZILrx/internal/operators/OperatorMerge$1;)V
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorMerge;-><init>(ZI)V

    return-void
.end method

.method public static a(Z)Lrx/internal/operators/OperatorMerge;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/OperatorMerge",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p0, :cond_5

    .line 73
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderDelayErrors;->a:Lrx/internal/operators/OperatorMerge;

    .line 75
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderNoDelay;->a:Lrx/internal/operators/OperatorMerge;

    goto :goto_4
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
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge;->a:Z

    iget v2, p0, Lrx/internal/operators/OperatorMerge;->b:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;-><init>(Lrx/Subscriber;ZI)V

    .line 101
    new-instance v1, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    .line 102
    iput-object v1, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 104
    invoke-virtual {p1, v0}, Lrx/Subscriber;->a(Lrx/Subscription;)V

    .line 105
    invoke-virtual {p1, v1}, Lrx/Subscriber;->a(Lrx/Producer;)V

    .line 107
    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 55
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge;->a(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method
