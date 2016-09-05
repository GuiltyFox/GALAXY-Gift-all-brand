.class Lcom/facebook/internal/ImageResponseCache;
.super Ljava/lang/Object;
.source "ImageResponseCache.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static volatile imageCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/internal/ImageResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCache(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 117
    :goto_7
    return-void

    .line 114
    :catch_8
    move-exception v0

    .line 115
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clearCache failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    .registers 5

    .prologue
    .line 47
    const-class v1, Lcom/facebook/internal/ImageResponseCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    if-nez v0, :cond_15

    .line 48
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    .line 50
    :cond_15
    sget-object v0, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;
    .registers 7

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_15

    .line 58
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 60
    :try_start_9
    invoke-static {p1}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_16

    move-result-object v0

    .line 68
    :cond_15
    :goto_15
    return-object v0

    .line 62
    :catch_16
    move-exception v1

    .line 63
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method static interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 6

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_30

    .line 77
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 80
    :try_start_19
    invoke-static {v1}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 81
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v2

    .line 85
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;

    invoke-direct {v3, v0, p1}, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 84
    invoke-virtual {v2, v1, v3}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2f} :catch_31

    move-result-object v0

    .line 92
    :cond_30
    :goto_30
    return-object v0

    .line 88
    :catch_31
    move-exception v1

    goto :goto_30
.end method

.method private static isCDNURL(Landroid/net/Uri;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 96
    if-eqz p0, :cond_23

    .line 97
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "fbcdn.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 108
    :cond_10
    :goto_10
    return v0

    .line 103
    :cond_11
    const-string/jumbo v2, "fbcdn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v2, "akamaihd.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 108
    :cond_23
    const/4 v0, 0x0

    goto :goto_10
.end method
