.class final Lokhttp3/internal/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:[Ljava/io/File;

.field private final d:[Ljava/io/File;

.field private e:Z

.field private f:Lokhttp3/internal/DiskLruCache$Editor;

.field private g:J


# direct methods
.method static synthetic a(Lokhttp3/internal/DiskLruCache$Entry;J)J
    .registers 4

    .prologue
    .line 966
    iput-wide p1, p0, Lokhttp3/internal/DiskLruCache$Entry;->g:J

    return-wide p1
.end method

.method static synthetic a(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->f:Lokhttp3/internal/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic a(Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Editor;
    .registers 2

    .prologue
    .line 966
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$Entry;->f:Lokhttp3/internal/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic a(Lokhttp3/internal/DiskLruCache$Entry;Z)Z
    .registers 2

    .prologue
    .line 966
    iput-boolean p1, p0, Lokhttp3/internal/DiskLruCache$Entry;->e:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/DiskLruCache$Entry;)[J
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->b:[J

    return-object v0
.end method

.method static synthetic c(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->c:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->d:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/internal/DiskLruCache$Entry;)Z
    .registers 2

    .prologue
    .line 966
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Entry;->e:Z

    return v0
.end method


# virtual methods
.method a(Lokio/BufferedSink;)V
    .registers 8

    .prologue
    .line 1019
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Entry;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_14

    aget-wide v4, v1, v0

    .line 1020
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lokio/BufferedSink;->l(J)Lokio/BufferedSink;

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1022
    :cond_14
    return-void
.end method
