.class Lcom/jakewharton/disklrucache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/disklrucache/DiskLruCache;
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
.field final synthetic a:Lcom/jakewharton/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    monitor-enter v1

    .line 167
    :try_start_4
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 168
    monitor-exit v1

    .line 176
    :goto_d
    return-object v3

    .line 170
    :cond_e
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->b(Lcom/jakewharton/disklrucache/DiskLruCache;)V

    .line 171
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->c(Lcom/jakewharton/disklrucache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 172
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->d(Lcom/jakewharton/disklrucache/DiskLruCache;)V

    .line 173
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Lcom/jakewharton/disklrucache/DiskLruCache;I)I

    .line 175
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
    .line 164
    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
