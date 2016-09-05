.class public Lcom/squareup/picasso/OkHttpDownloader;
.super Ljava/lang/Object;
.source "OkHttpDownloader.java"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# instance fields
.field private final a:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Ljava/io/File;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/squareup/picasso/OkHttpDownloader;->a:Lcom/squareup/okhttp/OkHttpClient;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 55
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Ljava/io/File;J)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .registers 6

    .prologue
    .line 76
    invoke-static {}, Lcom/squareup/picasso/OkHttpDownloader;->a()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 78
    :try_start_7
    iget-object v0, p0, Lcom/squareup/picasso/OkHttpDownloader;->a:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v1, Lcom/squareup/okhttp/Cache;

    invoke-direct {v1, p1, p2, p3}, Lcom/squareup/okhttp/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    .line 81
    :goto_11
    return-void

    .line 79
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private static a()Lcom/squareup/okhttp/OkHttpClient;
    .registers 6

    .prologue
    const-wide/16 v4, 0x4e20

    .line 31
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 32
    const-wide/16 v2, 0x3a98

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 33
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;
    .registers 9

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p2, :cond_b

    .line 98
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 99
    sget-object v0, Lcom/squareup/okhttp/CacheControl;->FORCE_CACHE:Lcom/squareup/okhttp/CacheControl;

    .line 112
    :cond_b
    :goto_b
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 113
    if-eqz v0, :cond_1d

    .line 114
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Request$Builder;->cacheControl(Lcom/squareup/okhttp/CacheControl;)Lcom/squareup/okhttp/Request$Builder;

    .line 117
    :cond_1d
    iget-object v0, p0, Lcom/squareup/picasso/OkHttpDownloader;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 119
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_78

    .line 120
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 121
    new-instance v2, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p2, v0}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 101
    :cond_5c
    new-instance v0, Lcom/squareup/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/CacheControl$Builder;-><init>()V

    .line 102
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->a(I)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 103
    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl$Builder;->noCache()Lcom/squareup/okhttp/CacheControl$Builder;

    .line 105
    :cond_6a
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->b(I)Z

    move-result v1

    if-nez v1, :cond_73

    .line 106
    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl$Builder;->noStore()Lcom/squareup/okhttp/CacheControl$Builder;

    .line 108
    :cond_73
    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl$Builder;->build()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    goto :goto_b

    .line 125
    :cond_78
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->cacheResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    .line 127
    :goto_7f
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    .line 128
    new-instance v2, Lcom/squareup/picasso/Downloader$Response;

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/squareup/picasso/Downloader$Response;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v2

    .line 125
    :cond_91
    const/4 v0, 0x0

    goto :goto_7f
.end method
