.class Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    .registers 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 75
    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 76
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 77
    if-nez v0, :cond_14

    .line 78
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V

    .line 80
    :cond_14
    return-object v0

    .line 76
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method a(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V
    .registers 5

    .prologue
    .line 84
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 85
    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_12

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 88
    :cond_12
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method
