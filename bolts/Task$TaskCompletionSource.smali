.class public Lbolts/Task$TaskCompletionSource;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final synthetic a:Lbolts/Task;


# direct methods
.method private constructor <init>(Lbolts/Task;)V
    .registers 2

    .prologue
    .line 850
    iput-object p1, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    return-void
.end method

.method synthetic constructor <init>(Lbolts/Task;Lbolts/Task$1;)V
    .registers 3

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lbolts/Task$TaskCompletionSource;-><init>(Lbolts/Task;)V

    return-void
.end method


# virtual methods
.method public a()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 896
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v1}, Lbolts/Task;->a(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 897
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->b(Lbolts/Task;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 898
    const/4 v0, 0x0

    monitor-exit v1

    .line 904
    :goto_12
    return v0

    .line 900
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->a(Lbolts/Task;Z)Z

    .line 901
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2, p1}, Lbolts/Task;->a(Lbolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 902
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->a(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 903
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->c(Lbolts/Task;)V

    .line 904
    monitor-exit v1

    goto :goto_12

    .line 905
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 880
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v1}, Lbolts/Task;->a(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 881
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->b(Lbolts/Task;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 882
    const/4 v0, 0x0

    monitor-exit v1

    .line 888
    :goto_12
    return v0

    .line 884
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->a(Lbolts/Task;Z)Z

    .line 885
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2, p1}, Lbolts/Task;->a(Lbolts/Task;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->a(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 887
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->c(Lbolts/Task;)V

    .line 888
    monitor-exit v1

    goto :goto_12

    .line 889
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public b(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 930
    invoke-virtual {p0, p1}, Lbolts/Task$TaskCompletionSource;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 931
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_f
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lbolts/Task$TaskCompletionSource;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 922
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_f
    return-void
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 864
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v1}, Lbolts/Task;->a(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 865
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->b(Lbolts/Task;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 866
    const/4 v0, 0x0

    monitor-exit v1

    .line 872
    :goto_12
    return v0

    .line 868
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->a(Lbolts/Task;Z)Z

    .line 869
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->b(Lbolts/Task;Z)Z

    .line 870
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->a(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 871
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->c(Lbolts/Task;)V

    .line 872
    monitor-exit v1

    goto :goto_12

    .line 873
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 912
    invoke-virtual {p0}, Lbolts/Task$TaskCompletionSource;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 913
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_f
    return-void
.end method
