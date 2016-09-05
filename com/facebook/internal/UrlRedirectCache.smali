.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static volatile urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 7

    .prologue
    .line 90
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 104
    :cond_4
    :goto_4
    return-void

    .line 94
    :cond_5
    const/4 v0, 0x0

    .line 96
    :try_start_6
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_23
    .catchall {:try_start_6 .. :try_end_13} :catchall_28

    move-result-object v0

    .line 98
    :try_start_14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_23
    .catchall {:try_start_14 .. :try_end_1f} :catchall_30

    .line 102
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    .line 99
    :catch_23
    move-exception v1

    .line 102
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_28
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2c
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_30
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2c
.end method

.method static clearCache()V
    .registers 6

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 112
    :goto_7
    return-void

    .line 109
    :catch_8
    move-exception v0

    .line 110
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

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

.method static declared-synchronized getCache()Lcom/facebook/internal/FileLruCache;
    .registers 4

    .prologue
    .line 44
    const-class v1, Lcom/facebook/internal/UrlRedirectCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v0, :cond_15

    .line 45
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 47
    :cond_15
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    if-nez p0, :cond_5

    .line 86
    :goto_4
    return-object v0

    .line 55
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    :try_start_9
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_5f
    .catchall {:try_start_9 .. :try_end_c} :catchall_52

    move-result-object v4

    move-object v3, v2

    move-object v2, v0

    .line 61
    :goto_f
    :try_start_f
    sget-object v5, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_44

    .line 62
    const/4 v3, 0x1

    .line 65
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_62
    .catchall {:try_start_f .. :try_end_1d} :catchall_5c

    .line 66
    const/16 v2, 0x80

    :try_start_1f
    new-array v2, v2, [C

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    :goto_26
    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    if-lez v6, :cond_38

    .line 70
    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_33
    .catchall {:try_start_1f .. :try_end_32} :catchall_5a

    goto :goto_26

    .line 81
    :catch_33
    move-exception v2

    .line 83
    :goto_34
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    .line 72
    :cond_38
    :try_start_38
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_33
    .catchall {:try_start_38 .. :try_end_3e} :catchall_5a

    move-result-object v2

    move v8, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v8

    .line 76
    goto :goto_f

    .line 78
    :cond_44
    if-eqz v1, :cond_4e

    .line 79
    :try_start_46
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_62
    .catchall {:try_start_46 .. :try_end_49} :catchall_5c

    move-result-object v0

    .line 83
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :cond_4e
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_52
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_56
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_5a
    move-exception v0

    goto :goto_56

    :catchall_5c
    move-exception v0

    move-object v1, v2

    goto :goto_56

    .line 81
    :catch_5f
    move-exception v1

    move-object v1, v0

    goto :goto_34

    :catch_62
    move-exception v1

    move-object v1, v2

    goto :goto_34
.end method
