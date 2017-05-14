.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/io/File;

.field c:[Ljava/io/FileOutputStream;

.field d:Z

.field final synthetic e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 790
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a:Ljava/lang/String;

    .line 792
    invoke-static {p1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->b(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/FileCache;->a(I)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    .line 793
    new-array v0, v1, [Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    .line 794
    return-void
.end method


# virtual methods
.method a(I)Ljava/io/FileOutputStream;
    .registers 5

    .prologue
    .line 806
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    aget-object v0, v0, p1

    if-nez v0, :cond_13

    .line 807
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v0, p1

    .line 808
    :cond_13
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method a()V
    .registers 4

    .prologue
    .line 797
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 798
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    if-eqz v0, :cond_a

    .line 803
    :goto_9
    return-void

    .line 800
    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->b(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/util/FileCache;->a(Ljava/lang/String;[Ljava/io/File;)V

    .line 801
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->c(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    goto :goto_9
.end method

.method b()V
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 813
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->a([Ljava/io/File;)V

    .line 814
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    if-eqz v0, :cond_f

    .line 818
    :goto_e
    return-void

    .line 816
    :cond_f
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->d(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    goto :goto_e
.end method
