.class Lbolts/Task$14$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/Task$14;


# direct methods
.method constructor <init>(Lbolts/Task$14;)V
    .registers 2

    .prologue
    .line 800
    iput-object p1, p0, Lbolts/Task$14$1;->a:Lbolts/Task$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/Task;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v0, p0, Lbolts/Task$14$1;->a:Lbolts/Task$14;

    iget-object v0, v0, Lbolts/Task$14;->a:Lbolts/CancellationToken;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbolts/Task$14$1;->a:Lbolts/Task$14;

    iget-object v0, v0, Lbolts/Task$14;->a:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 804
    iget-object v0, p0, Lbolts/Task$14$1;->a:Lbolts/Task$14;

    iget-object v0, v0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->c()V

    .line 815
    :goto_18
    return-object v2

    .line 808
    :cond_19
    invoke-virtual {p1}, Lbolts/Task;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 809
    iget-object v0, p0, Lbolts/Task$14$1;->a:Lbolts/Task$14;

    iget-object v0, v0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->c()V

    goto :goto_18

    .line 810
    :cond_27
    invoke-virtual {p1}, Lbolts/Task;->d()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 811
    iget-object v0, p0, Lbolts/Task$14$1;->a:Lbolts/Task$14;

    iget-object v0, v0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Exception;)V

    goto :goto_18

    .line 813
    :cond_39
    iget-object v0, p0, Lbolts/Task$14$1;->a:Lbolts/Task$14;

    iget-object v0, v0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 800
    invoke-virtual {p0, p1}, Lbolts/Task$14$1;->a(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
