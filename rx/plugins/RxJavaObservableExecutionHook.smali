.class public abstract Lrx/plugins/RxJavaObservableExecutionHook;
.super Ljava/lang/Object;
.source "RxJavaObservableExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 103
    return-object p1
.end method

.method public a(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    return-object p1
.end method

.method public a(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    return-object p2
.end method

.method public a(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    return-object p1
.end method

.method public a(Lrx/Subscription;)Lrx/Subscription;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscription;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 88
    return-object p1
.end method
