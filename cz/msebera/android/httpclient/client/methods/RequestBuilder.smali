.class public Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcz/msebera/android/httpclient/ProtocolVersion;

.field private c:Ljava/net/URI;

.field private d:Lcz/msebera/android/httpclient/message/HeaderGroup;

.field private e:Lcz/msebera/android/httpclient/HttpEntity;

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcz/msebera/android/httpclient/client/config/RequestConfig;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .registers 2

    .prologue
    .line 118
    const-string/jumbo v0, "HTTP request"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>()V

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->b(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 123
    if-nez p1, :cond_4

    .line 149
    :goto_3
    return-object p0

    .line 126
    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a:Ljava/lang/String;

    .line 127
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->b()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->b:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 128
    instance-of v0, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v0, :cond_5a

    move-object v0, p1

    .line 129
    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->c:Ljava/net/URI;

    .line 133
    :goto_25
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->d:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_30

    .line 134
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->d:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 136
    :cond_30
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->d:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->a()V

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->d:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->a([Lcz/msebera/android/httpclient/Header;)V

    .line 138
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_69

    move-object v0, p1

    .line 139
    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->e:Lcz/msebera/android/httpclient/HttpEntity;

    .line 143
    :goto_4b
    instance-of v0, p1, Lcz/msebera/android/httpclient/client/methods/Configurable;

    if-eqz v0, :cond_6c

    .line 144
    check-cast p1, Lcz/msebera/android/httpclient/client/methods/Configurable;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->g:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 148
    :goto_57
    iput-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->f:Ljava/util/LinkedList;

    goto :goto_3

    .line 131
    :cond_5a
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->c:Ljava/net/URI;

    goto :goto_25

    .line 141
    :cond_69
    iput-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->e:Lcz/msebera/android/httpclient/HttpEntity;

    goto :goto_4b

    .line 146
    :cond_6c
    iput-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->g:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto :goto_57
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .registers 5

    .prologue
    .line 289
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->c:Ljava/net/URI;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->c:Ljava/net/URI;

    .line 290
    :goto_6
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->e:Lcz/msebera/android/httpclient/HttpEntity;

    .line 291
    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->f:Ljava/util/LinkedList;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    .line 292
    if-nez v1, :cond_62

    const-string/jumbo v2, "POST"

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "PUT"

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a:Ljava/lang/String;

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 294
    :cond_2c
    new-instance v1, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->f:Ljava/util/LinkedList;

    sget-object v3, Lcz/msebera/android/httpclient/protocol/HTTP;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    move-object v2, v0

    .line 303
    :goto_36
    if-nez v1, :cond_76

    .line 304
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;-><init>(Ljava/lang/String;)V

    .line 310
    :goto_3f
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->b:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 311
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 312
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->d:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v1, :cond_54

    .line 313
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->d:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->b()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 315
    :cond_54
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->g:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    .line 316
    return-object v0

    .line 289
    :cond_5a
    const-string/jumbo v0, "/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_6

    .line 297
    :cond_62
    :try_start_62
    new-instance v2, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->f:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a(Ljava/util/List;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a()Ljava/net/URI;
    :try_end_70
    .catch Ljava/net/URISyntaxException; {:try_start_62 .. :try_end_70} :catch_73

    move-result-object v0

    move-object v2, v0

    .line 300
    goto :goto_36

    .line 298
    :catch_73
    move-exception v2

    move-object v2, v0

    goto :goto_36

    .line 306
    :cond_76
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_3f

    :cond_81
    move-object v2, v0

    goto :goto_36
.end method

.method public a(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->c:Ljava/net/URI;

    .line 171
    return-object p0
.end method
