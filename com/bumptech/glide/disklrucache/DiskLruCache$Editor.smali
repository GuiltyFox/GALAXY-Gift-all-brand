.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final b:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

.field private final c:[Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V
    .registers 4

    .prologue
    .line 710
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 712
    invoke-static {p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->c:[Z

    .line 713
    return-void

    .line 712
    :cond_11
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .registers 4

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 5

    .prologue
    .line 745
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v1

    .line 746
    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 757
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 749
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 750
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 752
    :cond_21
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v0

    .line 753
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 754
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 756
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_11

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 781
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 782
    iput-boolean v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Z

    .line 783
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->a:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->a(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 791
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->d:Z

    if-nez v0, :cond_7

    .line 796
    :try_start_4
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    .line 800
    :cond_7
    :goto_7
    return-void

    .line 797
    :catch_8
    move-exception v0

    goto :goto_7
.end method
