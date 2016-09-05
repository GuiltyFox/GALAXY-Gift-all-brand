.class final Lrx/internal/operators/OperatorConcat$ConcatProducer;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatProducer;->a:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    .line 70
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatProducer;->a:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->a(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;J)V

    .line 75
    return-void
.end method
