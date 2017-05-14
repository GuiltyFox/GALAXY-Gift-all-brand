.class Lrx/internal/operators/OperatorMap$1;
.super Lrx/Subscriber;
.source "OperatorMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMap;->a(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/Subscriber;

.field final synthetic b:Lrx/internal/operators/OperatorMap;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMap;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 39
    iput-object p1, p0, Lrx/internal/operators/OperatorMap$1;->b:Lrx/internal/operators/OperatorMap;

    iput-object p3, p0, Lrx/internal/operators/OperatorMap$1;->a:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$1;->a:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$1;->a:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorMap$1;->b:Lrx/internal/operators/OperatorMap;

    invoke-static {v1}, Lrx/internal/operators/OperatorMap;->a(Lrx/internal/operators/OperatorMap;)Lrx/functions/Func1;

    move-result-object v1

    invoke-interface {v1, p1}, Lrx/functions/Func1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 58
    :goto_f
    return-void

    .line 55
    :catch_10
    move-exception v0

    .line 56
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lrx/internal/operators/OperatorMap$1;->a:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->m_()V

    .line 44
    return-void
.end method
