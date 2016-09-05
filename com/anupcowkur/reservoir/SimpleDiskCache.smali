.class Lcom/anupcowkur/reservoir/SimpleDiskCache;
.super Ljava/lang/Object;
.source "SimpleDiskCache.java"


# instance fields
.field private final a:Lcom/jakewharton/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Ljava/io/File;IJ)V
    .registers 6

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p3, p4}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 32
    return-void
.end method

.method static declared-synchronized a(Ljava/io/File;IJ)Lcom/anupcowkur/reservoir/SimpleDiskCache;
    .registers 6

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

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;
    .registers 7
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

    .prologue
    .line 67
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->b(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    .line 69
    :try_start_a
    invoke-direct {p0, p2, v1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a(Ljava/util/Map;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V

    .line 70
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    new-instance v2, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/anupcowkur/reservoir/SimpleDiskCache$CacheOutputStream;-><init>(Lcom/anupcowkur/reservoir/SimpleDiskCache;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Lcom/anupcowkur/reservoir/SimpleDiskCache$1;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1e

    return-object v2

    .line 72
    :catch_1e
    move-exception v0

    .line 73
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b()V

    .line 74
    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
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

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/io/OutputStream;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 105
    if-eqz v1, :cond_11

    .line 106
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 109
    :cond_11
    return-void

    .line 105
    :catchall_12
    move-exception v0

    if-eqz v1, :cond_18

    .line 106
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_18
    throw v0
.end method

.method private a(Ljava/util/Map;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V
    .registers 7
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

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 115
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    .line 117
    :try_start_10
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1d

    .line 119
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->a(Ljava/io/OutputStream;)V

    .line 121
    return-void

    .line 119
    :catchall_17
    move-exception v0

    move-object v1, v2

    :goto_19
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1d
    move-exception v0

    goto :goto_19
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 129
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 132
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 133
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_20} :catch_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_20} :catch_29

    move-result-object v0

    return-object v0

    .line 134
    :catch_22
    move-exception v0

    .line 135
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :catch_29
    move-exception v0

    .line 137
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method a()J
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method a(Ljava/lang/String;)Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;
    .registers 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v1

    .line 42
    if-nez v1, :cond_e

    .line 43
    const/4 v0, 0x0

    .line 48
    :goto_d
    return-object v0

    .line 46
    :cond_e
    :try_start_e
    new-instance v0, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anupcowkur/reservoir/SimpleDiskCache$StringEntry;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 48
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    goto :goto_d

    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a()J

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

    invoke-direct {p0, p1, p2, v0}, Lcom/anupcowkur/reservoir/SimpleDiskCache;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method
