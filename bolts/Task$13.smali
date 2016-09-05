.class final Lbolts/Task$13;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->c(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation


# instance fields
.field final synthetic a:Lbolts/CancellationToken;

.field final synthetic b:Lbolts/Task$TaskCompletionSource;

.field final synthetic c:Lbolts/Continuation;

.field final synthetic d:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .registers 5

    .prologue
    .line 746
    iput-object p1, p0, Lbolts/Task$13;->a:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$13;->b:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$13;->c:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$13;->d:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 749
    iget-object v0, p0, Lbolts/Task$13;->a:Lbolts/CancellationToken;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbolts/Task$13;->a:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 750
    iget-object v0, p0, Lbolts/Task$13;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->c()V

    .line 762
    :goto_11
    return-void

    .line 755
    :cond_12
    :try_start_12
    iget-object v0, p0, Lbolts/Task$13;->c:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$13;->d:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lbolts/Task$13;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_27

    goto :goto_11

    .line 757
    :catch_20
    move-exception v0

    .line 758
    iget-object v0, p0, Lbolts/Task$13;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->c()V

    goto :goto_11

    .line 759
    :catch_27
    move-exception v0

    .line 760
    iget-object v1, p0, Lbolts/Task$13;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Exception;)V

    goto :goto_11
.end method
