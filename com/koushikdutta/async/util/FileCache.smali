.class public Lcom/koushikdutta/async/util/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# static fields
.field static a:Ljava/security/MessageDigest;

.field private static j:Ljava/lang/String;


# instance fields
.field b:Z

.field c:Ljava/util/Random;

.field d:J

.field e:Lcom/koushikdutta/async/util/FileCache$InternalCache;

.field f:Ljava/io/File;

.field g:J

.field h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    const-string/jumbo v0, "MD5"

    sput-object v0, Lcom/koushikdutta/async/util/FileCache;->j:Ljava/lang/String;

    .line 68
    :try_start_5
    sget-object v0, Lcom/koushikdutta/async/util/FileCache;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_d} :catch_18

    .line 75
    :cond_d
    :try_start_d
    sget-object v0, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    sput-object v0, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_d .. :try_end_17} :catch_29

    .line 79
    :goto_17
    return-void

    .line 69
    :catch_18
    move-exception v0

    .line 70
    invoke-static {}, Lcom/koushikdutta/async/util/FileCache;->c()Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;

    .line 71
    sget-object v1, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;

    if-nez v1, :cond_d

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :catch_29
    move-exception v0

    goto :goto_17
.end method

.method public constructor <init>(Ljava/io/File;JZ)V
    .registers 7

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->c:Ljava/util/Random;

    .line 198
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/koushikdutta/async/util/FileCache;->d:J

    .line 228
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$1;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->h:Ljava/util/Comparator;

    .line 279
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache;->f:Ljava/io/File;

    .line 280
    iput-wide p2, p0, Lcom/koushikdutta/async/util/FileCache;->g:J

    .line 281
    iput-boolean p4, p0, Lcom/koushikdutta/async/util/FileCache;->b:Z

    .line 282
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->e:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 285
    invoke-direct {p0}, Lcom/koushikdutta/async/util/FileCache;->d()V

    .line 286
    return-void
.end method

.method public static varargs declared-synchronized a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 82
    const-class v1, Lcom/koushikdutta/async/util/FileCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 83
    array-length v2, p0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_1e

    aget-object v3, p0, v0

    .line 84
    sget-object v4, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 86
    :cond_1e
    sget-object v0, Lcom/koushikdutta/async/util/FileCache;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 87
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_32

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs a([Ljava/io/File;)V
    .registers 4

    .prologue
    .line 107
    if-nez p0, :cond_3

    .line 112
    :cond_2
    return-void

    .line 109
    :cond_3
    array-length v1, p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private static c()Ljava/security/MessageDigest;
    .registers 5

    .prologue
    .line 49
    const-string/jumbo v0, "MD5"

    sget-object v1, Lcom/koushikdutta/async/util/FileCache;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 50
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v3, :cond_3d

    aget-object v0, v2, v1

    .line 51
    invoke-virtual {v0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    .line 52
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/util/FileCache;->j:Ljava/lang/String;

    .line 54
    :try_start_30
    sget-object v0, Lcom/koushikdutta/async/util/FileCache;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_35} :catch_3f

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1e

    .line 62
    :goto_38
    return-object v0

    .line 50
    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 62
    :cond_3d
    const/4 v0, 0x0

    goto :goto_38

    .line 57
    :catch_3f
    move-exception v0

    goto :goto_1e
.end method

.method private d()V
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->b:Z

    if-eqz v0, :cond_d

    .line 266
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$2;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache$2;->start()V

    .line 276
    :goto_c
    return-void

    .line 274
    :cond_d
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/FileCache;->b()V

    goto :goto_c
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 6

    .prologue
    .line 94
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->f:Ljava/io/File;

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/koushikdutta/async/util/FileCache;->c:Ljava/util/Random;

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    return-object v0
.end method

.method public a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->e:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 133
    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->e:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->e(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/io/File;)V
    .registers 8

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->e(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_19

    .line 172
    aget-object v1, p2, v0

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 176
    invoke-static {p2}, Lcom/koushikdutta/async/util/FileCache;->a([Ljava/io/File;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;)V

    .line 183
    :cond_19
    return-void

    .line 180
    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->e:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-direct {v4, p0, v2}, Lcom/koushikdutta/async/util/FileCache$CacheEntry;-><init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V

    invoke-virtual {v1, v3, v4}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public a(I)[Ljava/io/File;
    .registers 5

    .prologue
    .line 99
    new-array v1, p1, [Ljava/io/File;

    .line 100
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_e

    .line 101
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/FileCache;->a()Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 103
    :cond_e
    return-object v1
.end method

.method public a(Ljava/lang/String;I)[Ljava/io/FileInputStream;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 145
    new-array v3, p2, [Ljava/io/FileInputStream;

    move v0, v2

    .line 147
    :goto_4
    if-ge v0, p2, :cond_2e

    .line 148
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v3, v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_18

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 151
    :catch_18
    move-exception v0

    .line 153
    array-length v4, v3

    move v1, v2

    :goto_1b
    if-ge v1, v4, :cond_2a

    aget-object v5, v3, v1

    .line 154
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/Closeable;

    aput-object v5, v6, v2

    invoke-static {v6}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 156
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;)V

    .line 157
    throw v0

    .line 160
    :cond_2e
    return-object v3
.end method

.method b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->i:Z

    .line 245
    :try_start_4
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_40

    move-result-object v0

    .line 246
    if-nez v0, :cond_f

    .line 260
    iput-boolean v4, p0, Lcom/koushikdutta/async/util/FileCache;->i:Z

    .line 262
    :goto_e
    return-void

    .line 248
    :cond_f
    :try_start_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->h:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 254
    new-instance v3, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-direct {v3, p0, v0}, Lcom/koushikdutta/async/util/FileCache$CacheEntry;-><init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V

    .line 255
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->e:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->e:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_40

    goto :goto_20

    .line 260
    :catchall_40
    move-exception v0

    iput-boolean v4, p0, Lcom/koushikdutta/async/util/FileCache;->i:Z

    throw v0

    :cond_44
    iput-boolean v4, p0, Lcom/koushikdutta/async/util/FileCache;->i:Z

    goto :goto_e
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;I)Ljava/io/File;
    .registers 6

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->f:Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4

    .prologue
    .line 137
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/util/FileCache;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->c(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_11
    return-void
.end method
