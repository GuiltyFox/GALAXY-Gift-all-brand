.class Lcom/koushikdutta/async/http/AsyncHttpRequest$1;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Lorg/apache/http/RequestLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpRequest;->a()Lorg/apache/http/RequestLine;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 30
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 41
    const-string/jumbo v0, "%s %s HTTP/1.1"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_22
    return-object v0

    .line 42
    :cond_23
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_38

    .line 44
    :cond_35
    const-string/jumbo v0, "/"

    .line 45
    :cond_38
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_62

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_62
    const-string/jumbo v1, "%s %s HTTP/1.1"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;->a:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method
