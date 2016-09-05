.class Lcom/squareup/picasso/NetworkRequestHandler;
.super Lcom/squareup/picasso/RequestHandler;
.source "NetworkRequestHandler.java"


# instance fields
.field private final a:Lcom/squareup/picasso/Downloader;

.field private final b:Lcom/squareup/picasso/Stats;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Stats;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/picasso/RequestHandler;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/squareup/picasso/NetworkRequestHandler;->a:Lcom/squareup/picasso/Downloader;

    .line 38
    iput-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->b:Lcom/squareup/picasso/Stats;

    .line 39
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/squareup/picasso/NetworkRequestHandler;->a:Lcom/squareup/picasso/Downloader;

    iget-object v2, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    iget v3, p1, Lcom/squareup/picasso/Request;->c:I

    invoke-interface {v0, v2, v3}, Lcom/squareup/picasso/Downloader;->a(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;

    move-result-object v2

    .line 48
    if-nez v2, :cond_11

    move-object v0, v1

    .line 72
    :goto_10
    return-object v0

    .line 52
    :cond_11
    iget-boolean v0, v2, Lcom/squareup/picasso/Downloader$Response;->c:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 54
    :goto_17
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_27

    .line 56
    new-instance v1, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {v1, v3, v0}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    move-object v0, v1

    goto :goto_10

    .line 52
    :cond_24
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->c:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_17

    .line 59
    :cond_27
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->a()Ljava/io/InputStream;

    move-result-object v3

    .line 60
    if-nez v3, :cond_2f

    move-object v0, v1

    .line 61
    goto :goto_10

    .line 65
    :cond_2f
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne v0, v1, :cond_47

    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->c()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_47

    .line 66
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->a(Ljava/io/InputStream;)V

    .line 67
    new-instance v0, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    const-string/jumbo v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_47
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->c:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne v0, v1, :cond_5c

    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->c()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_5c

    .line 70
    iget-object v1, p0, Lcom/squareup/picasso/NetworkRequestHandler;->b:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->c()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/squareup/picasso/Stats;->a(J)V

    .line 72
    :cond_5c
    new-instance v1, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {v1, v3, v0}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    move-object v0, v1

    goto :goto_10
.end method

.method public a(Lcom/squareup/picasso/Request;)Z
    .registers 4

    .prologue
    .line 42
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .registers 4

    .prologue
    .line 80
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method b()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
