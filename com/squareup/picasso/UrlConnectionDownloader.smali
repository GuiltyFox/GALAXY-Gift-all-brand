.class public Lcom/squareup/picasso/UrlConnectionDownloader;
.super Ljava/lang/Object;
.source "UrlConnectionDownloader.java"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# static fields
.field static volatile a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->b:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/squareup/picasso/UrlConnectionDownloader$1;

    invoke-direct {v0}, Lcom/squareup/picasso/UrlConnectionDownloader$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/UrlConnectionDownloader;->d:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 114
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->a:Ljava/lang/Object;

    if-nez v0, :cond_12

    .line 116
    :try_start_4
    sget-object v1, Lcom/squareup/picasso/UrlConnectionDownloader;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_16

    .line 117
    :try_start_7
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->a:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 118
    invoke-static {p0}, Lcom/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->a:Ljava/lang/Object;

    .line 120
    :cond_11
    monitor-exit v1

    .line 124
    :cond_12
    :goto_12
    return-void

    .line 120
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_16} :catch_16

    .line 121
    :catch_16
    move-exception v0

    goto :goto_12
.end method


# virtual methods
.method public a(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;
    .registers 8

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_b

    .line 62
    iget-object v0, p0, Lcom/squareup/picasso/UrlConnectionDownloader;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/UrlConnectionDownloader;->a(Landroid/content/Context;)V

    .line 65
    :cond_b
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/UrlConnectionDownloader;->a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 66
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 68
    if-eqz p2, :cond_24

    .line 71
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->c(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 72
    const-string/jumbo v0, "only-if-cached,max-age=2147483647"

    .line 90
    :goto_1e
    const-string/jumbo v2, "Cache-Control"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_24
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 94
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_85

    .line 95
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    new-instance v2, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p2, v0}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 74
    :cond_51
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->a(I)Z

    move-result v2

    if-nez v2, :cond_69

    .line 78
    const-string/jumbo v2, "no-cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_69
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->b(I)Z

    move-result v2

    if-nez v2, :cond_80

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7a

    .line 82
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_7a
    const-string/jumbo v2, "no-store"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 100
    :cond_85
    const-string/jumbo v0, "Content-Length"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    .line 101
    const-string/jumbo v0, "X-Android-Response-Source"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;)Z

    move-result v0

    .line 103
    new-instance v4, Lcom/squareup/picasso/Downloader$Response;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/squareup/picasso/Downloader$Response;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v4
.end method

.method protected a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .registers 4

    .prologue
    .line 54
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 55
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 57
    return-object v0
.end method
