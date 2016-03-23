.class Lcom/bitmapfun/util/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/bitmapfun/util/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/bitmapfun/util/DiskLruCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bitmapfun/util/DiskLruCache;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/bitmapfun/util/DiskLruCache$1;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/bitmapfun/util/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$1;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    monitor-enter v1

    .line 275
    :try_start_4
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$1;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    # getter for: Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->access$000(Lcom/bitmapfun/util/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 276
    monitor-exit v1

    .line 284
    :goto_d
    return-object v3

    .line 278
    :cond_e
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$1;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->access$100(Lcom/bitmapfun/util/DiskLruCache;)V

    .line 279
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$1;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->access$200(Lcom/bitmapfun/util/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 280
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$1;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->access$300(Lcom/bitmapfun/util/DiskLruCache;)V

    .line 281
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$1;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    const/4 v2, 0x0

    # setter for: Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/bitmapfun/util/DiskLruCache;->access$402(Lcom/bitmapfun/util/DiskLruCache;I)I

    .line 283
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
