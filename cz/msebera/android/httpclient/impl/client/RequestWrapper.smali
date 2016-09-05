.class public Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
.super Lcz/msebera/android/httpclient/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/HttpRequest;

.field private b:Ljava/net/URI;

.field private c:Ljava/lang/String;

.field private d:Lcz/msebera/android/httpclient/ProtocolVersion;

.field private e:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 7

    .prologue
    .line 68
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 69
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->a:Lcz/msebera/android/httpclient/HttpRequest;

    .line 71
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 72
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 74
    instance-of v0, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v0, :cond_35

    move-object v0, p1

    .line 75
    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->b:Ljava/net/URI;

    .line 76
    check-cast p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->c:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->d:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 89
    :goto_31
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->e:I

    .line 90
    return-void

    .line 79
    :cond_35
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    .line 81
    :try_start_39
    new-instance v0, Ljava/net/URI;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->b:Ljava/net/URI;
    :try_end_44
    .catch Ljava/net/URISyntaxException; {:try_start_39 .. :try_end_44} :catch_51

    .line 86
    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->c:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->d:Lcz/msebera/android/httpclient/ProtocolVersion;

    goto :goto_31

    .line 82
    :catch_51
    move-exception v0

    .line 83
    new-instance v2, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid request URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 84
    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public a(Ljava/net/URI;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->b:Ljava/net/URI;

    .line 125
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public abort()V
    .registers 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->a()V

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->a:Lcz/msebera/android/httpclient/HttpRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 96
    return-void
.end method

.method public c()Lcz/msebera/android/httpclient/HttpRequest;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->a:Lcz/msebera/android/httpclient/HttpRequest;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->e:I

    return v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->e:I

    .line 162
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->d:Lcz/msebera/android/httpclient/ProtocolVersion;

    if-nez v0, :cond_e

    .line 109
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->d:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 111
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->d:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method public getRequestLine()Lcz/msebera/android/httpclient/RequestLine;
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v2

    .line 130
    const/4 v0, 0x0

    .line 131
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->b:Ljava/net/URI;

    if-eqz v3, :cond_13

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_13
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1e

    .line 135
    :cond_1b
    const-string/jumbo v0, "/"

    .line 137
    :cond_1e
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lcz/msebera/android/httpclient/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->b:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
