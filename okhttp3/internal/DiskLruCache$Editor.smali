.class public final Lokhttp3/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/DiskLruCache;

.field private final b:Lokhttp3/internal/DiskLruCache$Entry;

.field private final c:[Z

.field private d:Z


# direct methods
.method static synthetic a(Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Entry;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->b:Lokhttp3/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/internal/DiskLruCache$Editor;)[Z
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->c:[Z

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    .prologue
    .line 857
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->b:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_2b

    .line 858
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->a:Lokhttp3/internal/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->a(Lokhttp3/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 860
    :try_start_11
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->a:Lokhttp3/internal/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->b(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->b:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->d(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->a(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_2c

    .line 858
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 865
    :cond_25
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->b:Lokhttp3/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Editor;

    .line 867
    :cond_2b
    return-void

    .line 861
    :catch_2c
    move-exception v1

    goto :goto_22
.end method

.method public b()V
    .registers 4

    .prologue
    .line 943
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->a:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 944
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->d:Z

    if-eqz v0, :cond_10

    .line 945
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 951
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    .line 947
    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->b:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 948
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->a:Lokhttp3/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lokhttp3/internal/DiskLruCache;->a(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V

    .line 950
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->d:Z

    .line 951
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_d

    .line 952
    return-void
.end method
