.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lokhttp3/internal/InternalCache;

.field private final b:Lokhttp3/internal/DiskLruCache;


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/DiskLruCache;->close()V

    .line 390
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/DiskLruCache;->flush()V

    .line 386
    return-void
.end method
