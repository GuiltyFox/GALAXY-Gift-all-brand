.class final Lbolts/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .registers 4

    .prologue
    .line 240
    iput-object p1, p0, Lbolts/Task$3;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 243
    iget-object v1, p0, Lbolts/Task$3;->val$ct:Lbolts/CancellationToken;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lbolts/Task$3;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v1}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 244
    iget-object v1, p0, Lbolts/Task$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 255
    :goto_11
    return-void

    .line 249
    :cond_12
    :try_start_12
    iget-object v1, p0, Lbolts/Task$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v2, p0, Lbolts/Task$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_25

    goto :goto_11

    .line 250
    :catch_1e
    move-exception v0

    .line 251
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lbolts/Task$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_11

    .line 252
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_25
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbolts/Task$3;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_11
.end method
