.class Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v1

    .line 163
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 164
    monitor-exit v1

    .line 172
    :goto_d
    return-object v3

    .line 166
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->b(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->c(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I

    .line 171
    :cond_26
    monitor-exit v1

    goto :goto_d

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
