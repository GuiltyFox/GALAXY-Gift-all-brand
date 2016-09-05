.class final Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 890
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput-object p2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b:Ljava/lang/String;

    .line 892
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->e(Lcom/jakewharton/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c:[J

    .line 893
    return-void
.end method

.method synthetic constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V
    .registers 4

    .prologue
    .line 875
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;J)J
    .registers 4

    .prologue
    .line 875
    iput-wide p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->e:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .registers 2

    .prologue
    .line 875
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->e:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 905
    array-length v0, p1

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->e(Lcom/jakewharton/disklrucache/DiskLruCache;)I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 906
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 910
    :cond_e
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 911
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1f

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 913
    :catch_1f
    move-exception v0

    .line 914
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 916
    :cond_25
    return-void
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Z)Z
    .registers 2

    .prologue
    .line 875
    iput-boolean p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->d:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    .prologue
    .line 919
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c:[J

    return-object v0
.end method

.method static synthetic c(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z
    .registers 2

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)J
    .registers 3

    .prologue
    .line 875
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 6

    .prologue
    .line 923
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->f(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 8

    .prologue
    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_19

    aget-wide v4, v2, v0

    .line 898
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 900
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .registers 6

    .prologue
    .line 927
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->f(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
