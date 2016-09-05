.class Lbolts/Task$9;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->a(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/Task$TaskCompletionSource;

.field final synthetic b:Lbolts/Continuation;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/CancellationToken;

.field final synthetic e:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .registers 6

    .prologue
    .line 535
    iput-object p1, p0, Lbolts/Task$9;->e:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$9;->a:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$9;->b:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$9;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lbolts/Task$9;->d:Lbolts/CancellationToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/Task;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lbolts/Task$9;->a:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$9;->b:Lbolts/Continuation;

    iget-object v2, p0, Lbolts/Task$9;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lbolts/Task$9;->d:Lbolts/CancellationToken;

    invoke-static {v0, v1, p1, v2, v3}, Lbolts/Task;->a(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    .line 539
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lbolts/Task$9;->a(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
