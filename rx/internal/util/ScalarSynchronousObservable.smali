.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lrx/Observable;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 51
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable;->b:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method static synthetic a(Lrx/internal/util/ScalarSynchronousObservable;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->a(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
