.class public Lcz/msebera/android/httpclient/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/protocol/RequestContent;->a:Z

    .line 81
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 9

    .prologue
    .line 85
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_34

    .line 87
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/protocol/RequestContent;->a:Z

    if-eqz v0, :cond_35

    .line 88
    const-string/jumbo v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "Content-Length"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 98
    :cond_1a
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->b()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    move-object v0, p1

    .line 99
    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 100
    if-nez v0, :cond_59

    .line 101
    const-string/jumbo v0, "Content-Length"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_34
    :goto_34
    return-void

    .line 91
    :cond_35
    const-string/jumbo v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 92
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    const-string/jumbo v1, "Transfer-encoding header already present"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_47
    const-string/jumbo v0, "Content-Length"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 95
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    const-string/jumbo v1, "Content-Length header already present"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_59
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_c2

    .line 106
    :cond_69
    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->b:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/ProtocolVersion;->c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 107
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chunked transfer encoding not allowed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_8b
    const-string/jumbo v1, "Transfer-Encoding"

    const-string/jumbo v2, "chunked"

    invoke-interface {p1, v1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_94
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_aa

    const-string/jumbo v1, "Content-Type"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 117
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 120
    :cond_aa
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 122
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto/16 :goto_34

    .line 112
    :cond_c2
    const-string/jumbo v1, "Content-Length"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94
.end method
