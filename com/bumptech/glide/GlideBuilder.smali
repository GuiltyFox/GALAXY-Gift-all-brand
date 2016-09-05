.class public Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bumptech/glide/load/engine/Engine;

.field private c:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private d:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/bumptech/glide/load/DecodeFormat;

.field private h:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/Glide;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_18

    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    new-instance v1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->e:Ljava/util/concurrent/ExecutorService;

    .line 173
    :cond_18
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_23

    .line 174
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->f:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_23
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v1, :cond_3f

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_86

    .line 180
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->b()I

    move-result v1

    .line 181
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 187
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    if-nez v1, :cond_4e

    .line 188
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 191
    :cond_4e
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    if-nez v0, :cond_5b

    .line 192
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 195
    :cond_5b
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/load/engine/Engine;

    if-nez v0, :cond_6e

    .line 196
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/load/engine/Engine;

    .line 199
    :cond_6e
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/DecodeFormat;

    if-nez v0, :cond_76

    .line 200
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->d:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/DecodeFormat;

    .line 203
    :cond_76
    new-instance v0, Lcom/bumptech/glide/Glide;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/Glide;-><init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-object v0

    .line 183
    :cond_86
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    goto :goto_3f
.end method
