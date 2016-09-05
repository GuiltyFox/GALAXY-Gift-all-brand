.class Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorConcat$ConcatSubscriber;-><init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;->a:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;->a:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 103
    return-void
.end method
