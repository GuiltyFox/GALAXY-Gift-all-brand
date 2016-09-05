.class final Lbolts/Task$14;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->d(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
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
    .line 787
    iput-object p1, p0, Lbolts/Task$14;->a:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$14;->c:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$14;->d:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 790
    iget-object v0, p0, Lbolts/Task$14;->a:Lbolts/CancellationToken;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbolts/Task$14;->a:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 791
    iget-object v0, p0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->c()V

    .line 824
    :goto_11
    return-void

    .line 796
    :cond_12
    :try_start_12
    iget-object v0, p0, Lbolts/Task$14;->c:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$14;->d:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 797
    if-nez v0, :cond_2c

    .line 798
    iget-object v0, p0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_24} :catch_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_35

    goto :goto_11

    .line 819
    :catch_25
    move-exception v0

    .line 820
    iget-object v0, p0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->c()V

    goto :goto_11

    .line 800
    :cond_2c
    :try_start_2c
    new-instance v1, Lbolts/Task$14$1;

    invoke-direct {v1, p0}, Lbolts/Task$14$1;-><init>(Lbolts/Task$14;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->a(Lbolts/Continuation;)Lbolts/Task;
    :try_end_34
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2c .. :try_end_34} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_34} :catch_35

    goto :goto_11

    .line 821
    :catch_35
    move-exception v0

    .line 822
    iget-object v1, p0, Lbolts/Task$14;->b:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->b(Ljava/lang/Exception;)V

    goto :goto_11
.end method
