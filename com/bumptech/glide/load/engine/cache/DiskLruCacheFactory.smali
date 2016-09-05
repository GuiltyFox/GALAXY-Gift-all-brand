.class public Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# instance fields
.field private final a:I

.field private final b:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->a:I

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->b:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->b:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;->a()Ljava/io/File;

    move-result-object v1

    .line 58
    if-nez v1, :cond_a

    .line 66
    :cond_9
    :goto_9
    return-object v0

    .line 62
    :cond_a
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 66
    :cond_1c
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->a:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->a(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    goto :goto_9
.end method
