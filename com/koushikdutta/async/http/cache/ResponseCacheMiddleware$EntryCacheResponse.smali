.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;
.super Ljava/net/CacheResponse;
.source "ResponseCacheMiddleware.java"


# instance fields
.field private final a:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

.field private final b:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V
    .registers 3

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 692
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    .line 693
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->b:Ljava/io/FileInputStream;

    .line 694
    return-void
.end method


# virtual methods
.method public a()Ljava/io/FileInputStream;
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public synthetic getBody()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;->a:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;->b(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/cache/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
