.class Lcom/anupcowkur/reservoir/SimpleDiskCache;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupcowkur/reservoir/SimpleDiskCache$1;,
        Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;,
        Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;
    }
.end annotation


# static fields
.field private static final METADATA_IDX:I = 0x1

.field static final OBJECT_SIZE_GREATER_THAN_CACHE_SIZE_MESSAGE:Ljava/lang/String; = "Object size greater than cache size!"

.field private static final VALUE_IDX:I


# instance fields
.field private final diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Ljava/io/File;IJ)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p3, p4}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 32
    return-void
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 130
    .local v3, "m":Ljava/security/MessageDigest;
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 132
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 133
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_20} :catch_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_20} :catch_29

    move-result-object v4

    return-object v4

    .line 134
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    .end local v3    # "m":Ljava/security/MessageDigest;
    :catch_22
    move-exception v2

    .line 135
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 136
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_29
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method static declared-synchronized open(Ljava/io/File;IJ)Lcom/anupcowkur/reservoir/SimpleDiskCache;
    .registers 6
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const-class v1, Lcom/anupcowkur/reservoir/SimpleDiskCache;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/anupcowkur/reservoir/SimpleDiskCache;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/anupcowkur/reservoir/SimpleDiskCache;-><init>(Ljava/io/File;IJ)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private openStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    iget-object v3, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    .line 69
    .local v2, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_start_a
    invoke-direct {p0, p2, v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->writeMetadata(Ljava/util/Map;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V

    .line 70
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v2, v4}, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;-><init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Lcom/anupcowkur/reservoir/SimpleDiskCache$1;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1e

    return-object v3

    .line 72
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1e
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 74
    throw v1
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "annotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "cos":Ljava/io/OutputStream;
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->openStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 105
    if-eqz v0, :cond_11

    .line 106
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 109
    :cond_11
    return-void

    .line 105
    :catchall_12
    move-exception v1

    if-eqz v0, :cond_18

    .line 106
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_18
    throw v1
.end method

.method private toInternalKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeMetadata(Ljava/util/Map;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V
    .registers 7
    .param p2, "editor"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lcom/jakewharton/disklrucache/DiskLruCache$Editor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    const/4 v0, 0x0

    .line 115
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    .line 117
    .end local v0    # "oos":Ljava/io/ObjectOutputStream;
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_10
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1c

    .line 119
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 121
    return-void

    .line 119
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_17
    move-exception v2

    :goto_18
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2

    .end local v0    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1c
    move-exception v2

    move-object v0, v1

    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_18
.end method


# virtual methods
.method bytesUsed()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method contains(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v0

    .line 58
    .local v0, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    if-nez v0, :cond_e

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_d
    return v1

    .line 61
    :cond_e
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 62
    const/4 v1, 0x1

    goto :goto_d
.end method

.method delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 87
    return-void
.end method

.method public destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V

    .line 91
    return-void
.end method

.method getMaxSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getString(Ljava/lang/String;)Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->diskLruCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->toInternalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v0

    .line 42
    .local v0, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    if-nez v0, :cond_e

    .line 43
    const/4 v1, 0x0

    .line 48
    :goto_d
    return-object v1

    .line 46
    :cond_e
    :try_start_e
    new-instance v1, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 48
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    goto :goto_d

    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    throw v1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->getMaxSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 80
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Object size greater than cache size!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method
