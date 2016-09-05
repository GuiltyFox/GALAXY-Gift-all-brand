.class Lrx/internal/operators/OperatorBufferWithSize$1;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize;->a(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lrx/Subscriber;

.field final synthetic c:Lrx/internal/operators/OperatorBufferWithSize;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 70
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->c:Lrx/internal/operators/OperatorBufferWithSize;

    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->b:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->b:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public a(Lrx/Producer;)V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->b:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorBufferWithSize$1$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->a(Lrx/Producer;)V

    .line 93
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
    .line 97
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    if-nez v0, :cond_f

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->c:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    .line 100
    :cond_f
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->c:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->a:I

    if-ne v0, v1, :cond_2a

    .line 102
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    .line 104
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->b:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V

    .line 106
    :cond_2a
    return-void
.end method

.method public i_()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->a:Ljava/util/List;

    .line 118
    if-eqz v0, :cond_c

    .line 120
    :try_start_7
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->b:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_12

    .line 126
    :cond_c
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->b:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->i_()V

    .line 127
    :goto_11
    return-void

    .line 121
    :catch_12
    move-exception v0

    .line 122
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_11
.end method
