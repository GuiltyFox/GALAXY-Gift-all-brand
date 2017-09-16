.class final Lcom/google/android/gms/tasks/zzh;
.super Lcom/google/android/gms/tasks/Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/tasks/zzg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzg",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->b:Lcom/google/android/gms/tasks/zzg;

    return-void
.end method

.method private d()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    const-string/jumbo v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private e()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(ZLjava/lang/Object;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private f()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->b:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzg;->a(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_8

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->b:Lcom/google/android/gms/tasks/zzg;

    new-instance v1, Lcom/google/android/gms/tasks/zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzg;->a(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->f()V

    return-object p0
.end method

.method public a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->b:Lcom/google/android/gms/tasks/zzg;

    new-instance v1, Lcom/google/android/gms/tasks/zze;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zze;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzg;->a(Lcom/google/android/gms/tasks/zzf;)V

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->f()V

    return-object p0
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    const-string/jumbo v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->e:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->b:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzg;->a(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->b:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzg;->a(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public a()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->e:Ljava/lang/Exception;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzh;->d()V

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzh;->e:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)Z
    .registers 5

    const/4 v0, 0x1

    const-string/jumbo v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-boolean v2, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    monitor-exit v1

    :goto_10
    return v0

    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/zzh;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->e:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1d

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->b:Lcom/google/android/gms/tasks/zzg;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/tasks/zzg;->a(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_10

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public c()Ljava/lang/Exception;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->e:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
