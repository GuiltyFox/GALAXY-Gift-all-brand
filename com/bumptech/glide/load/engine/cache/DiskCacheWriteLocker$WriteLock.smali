.class Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# instance fields
.field final a:Ljava/util/concurrent/locks/Lock;

.field b:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;-><init>()V

    return-void
.end method
