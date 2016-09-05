.class Lbolts/Task$11;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->c(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/CancellationToken;

.field final synthetic b:Lbolts/Continuation;

.field final synthetic c:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/CancellationToken;Lbolts/Continuation;)V
    .registers 4

    .prologue
    .line 638
    iput-object p1, p0, Lbolts/Task$11;->c:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$11;->a:Lbolts/CancellationToken;

    iput-object p3, p0, Lbolts/Task$11;->b:Lbolts/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/Task;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lbolts/Task$11;->a:Lbolts/CancellationToken;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbolts/Task$11;->a:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 642
    invoke-static {}, Lbolts/Task;->g()Lbolts/Task;

    move-result-object v0

    .line 650
    :goto_10
    return-object v0

    .line 645
    :cond_11
    invoke-virtual {p1}, Lbolts/Task;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 646
    invoke-virtual {p1}, Lbolts/Task;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->a(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    goto :goto_10

    .line 647
    :cond_20
    invoke-virtual {p1}, Lbolts/Task;->c()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 648
    invoke-static {}, Lbolts/Task;->g()Lbolts/Task;

    move-result-object v0

    goto :goto_10

    .line 650
    :cond_2b
    iget-object v0, p0, Lbolts/Task$11;->b:Lbolts/Continuation;

    invoke-virtual {p1, v0}, Lbolts/Task;->a(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_10
.end method

.method public synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lbolts/Task$11;->a(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
