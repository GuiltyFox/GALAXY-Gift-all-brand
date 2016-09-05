.class public Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;
.super Ljava/lang/Object;
.source "DualCacheDiskBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    .line 24
    return-void
.end method

.method private a(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(I)V

    .line 83
    if-nez p3, :cond_2e

    .line 84
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;)V

    .line 90
    :goto_e
    if-nez p2, :cond_15

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a(Z)Ljava/io/File;

    move-result-object p2

    .line 95
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a()I

    move-result v1

    const/4 v2, 0x1

    int-to-long v4, p1

    invoke-static {p2, v1, v2, v4, v5}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Lcom/jakewharton/disklrucache/DiskLruCache;)V

    .line 96
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v0, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2b} :catch_3b

    .line 101
    :goto_2b
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    return-object v0

    .line 86
    :cond_2e
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;)V

    .line 87
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v0, p3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)V

    goto :goto_e

    .line 97
    :catch_3b
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method private a(Z)Ljava/io/File;
    .registers 5

    .prologue
    .line 71
    .line 72
    if-eqz p1, :cond_26

    .line 73
    invoke-static {}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dualcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 77
    :goto_25
    return-object v0

    .line 75
    :cond_26
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dualcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_25
.end method


# virtual methods
.method public a(IZ)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a(Z)Ljava/io/File;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    return-object v0
.end method
