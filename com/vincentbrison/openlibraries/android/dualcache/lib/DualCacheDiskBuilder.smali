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
.field private mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
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
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    .local p1, "dualCache":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    .line 24
    return-void
.end method

.method private getDefaultDiskCacheFolder(Z)Ljava/io/File;
    .registers 6
    .param p1, "usePrivateFiles"    # Z

    .prologue
    .line 71
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "folder":Ljava/io/File;
    if-eqz p1, :cond_27

    .line 73
    invoke-static {}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dualcache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->getCacheId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 77
    :goto_26
    return-object v0

    .line 75
    :cond_27
    new-instance v0, Ljava/io/File;

    .end local v0    # "folder":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->getContext()Landroid/content/Context;

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

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->getCacheId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "folder":Ljava/io/File;
    goto :goto_26
.end method

.method private useCustomSerializerInDiskIfProvided(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 10
    .param p1, "maxDiskSize"    # I
    .param p2, "diskCacheFolder"    # Ljava/io/File;
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
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    .local p3, "serializer":Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer<TT;>;"
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v1, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setDiskCacheSizeInBytes(I)V

    .line 83
    if-nez p3, :cond_2e

    .line 84
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setDiskMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;)V

    .line 90
    :goto_e
    if-nez p2, :cond_15

    .line 91
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->getDefaultDiskCacheFolder(Z)Ljava/io/File;

    move-result-object p2

    .line 95
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    iget-object v2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->getAppVersion()I

    move-result v2

    const/4 v3, 0x1

    int-to-long v4, p1

    invoke-static {p2, v2, v3, v4, v5}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setDiskLruCache(Lcom/jakewharton/disklrucache/DiskLruCache;)V

    .line 96
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v1, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setDiskCacheFolder(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2b} :catch_3b

    .line 101
    :goto_2b
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    return-object v1

    .line 86
    :cond_2e
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v2, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setDiskMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;)V

    .line 87
    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v1, p3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setDiskSerializer(Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)V

    goto :goto_e

    .line 97
    :catch_3b
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->logError(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method


# virtual methods
.method public noDisk()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->getRAMMode()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    move-result-object v0

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ram cache layer and the disk cache layer are disable. You have to use at least one of those layers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_17
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setDiskMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;)V

    .line 114
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    return-object v0
.end method

.method public useCustomSerializerInDisk(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 5
    .param p1, "maxDiskSize"    # I
    .param p2, "diskCacheFolder"    # Ljava/io/File;
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
    .line 46
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    .local p3, "serializer":Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->useCustomSerializerInDiskIfProvided(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    return-object v0
.end method

.method public useCustomSerializerInDisk(IZLcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 6
    .param p1, "maxDiskSize"    # I
    .param p2, "usePrivateFiles"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    .local p3, "serializer":Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer<TT;>;"
    invoke-direct {p0, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->getDefaultDiskCacheFolder(Z)Ljava/io/File;

    move-result-object v0

    .line 35
    .local v0, "folder":Ljava/io/File;
    invoke-direct {p0, p1, v0, p3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->useCustomSerializerInDiskIfProvided(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v1

    return-object v1
.end method

.method public useDefaultSerializerInDisk(ILjava/io/File;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 4
    .param p1, "maxDiskSize"    # I
    .param p2, "diskCacheFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            ")",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->useCustomSerializerInDiskIfProvided(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    return-object v0
.end method

.method public useDefaultSerializerInDisk(IZ)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 5
    .param p1, "maxDiskSize"    # I
    .param p2, "usePrivateFiles"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder<TT;>;"
    invoke-direct {p0, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->getDefaultDiskCacheFolder(Z)Ljava/io/File;

    move-result-object v0

    .line 57
    .local v0, "folder":Ljava/io/File;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->useCustomSerializerInDiskIfProvided(ILjava/io/File;Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v1

    return-object v1
.end method
