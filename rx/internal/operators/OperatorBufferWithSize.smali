.class public final Lrx/internal/operators/OperatorBufferWithSize;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

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
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-gtz p1, :cond_e

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_e
    if-gtz p2, :cond_19

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_19
    iput p1, p0, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    .line 64
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize;->b:I

    if-ne v0, v1, :cond_c

    .line 70
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorBufferWithSize$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V

    .line 130
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorBufferWithSize$2;-><init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V

    goto :goto_b
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 42
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithSize;->a(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method
