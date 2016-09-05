.class public Lcom/loopj/android/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_MAX_RETRIES:I = 0x5

.field public static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field public static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"

.field public static log:Lcom/loopj/android/http/LogInterface;


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectTimeout:I

.field private final httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

.field private final httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private isUrlEncodingEnabled:Z

.field private maxConnections:I

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/loopj/android/http/RequestHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseTimeout:I

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    new-instance v0, Lcom/loopj/android/http/LogHandler;

    invoke-direct {v0}, Lcom/loopj/android/http/LogHandler;-><init>()V

    sput-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 147
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 148
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 156
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 157
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 9

    .prologue
    const/16 v2, 0x2710

    const/16 v6, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    .line 138
    iput v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    .line 139
    iput v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    .line 141
    iput-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 187
    new-instance v2, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 189
    iget v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;J)V

    .line 190
    new-instance v3, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    iget v4, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V

    .line 191
    invoke-static {v2, v6}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 193
    iget v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 194
    iget v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->c(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 195
    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    .line 196
    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 198
    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->c:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 200
    invoke-virtual {p0, p1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->createConnectionManager(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/params/BasicHttpParams;)Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v3

    .line 201
    if-eqz v3, :cond_a3

    :goto_46
    const-string/jumbo v4, "Custom implementation of #createConnectionManager(SchemeRegistry, BasicHttpParams) returned null"

    invoke-static {v0, v4}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpClient;->getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 204
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 207
    new-instance v0, Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;

    new-instance v4, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 208
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    .line 209
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient$1;

    invoke-direct {v2, p0}, Lcom/loopj/android/http/AsyncHttpClient$1;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 232
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient$2;

    invoke-direct {v2, p0}, Lcom/loopj/android/http/AsyncHttpClient$2;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 251
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient$3;

    invoke-direct {v2, p0}, Lcom/loopj/android/http/AsyncHttpClient$3;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    .line 270
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/loopj/android/http/RetryHandler;

    const/4 v2, 0x5

    const/16 v3, 0x5dc

    invoke-direct {v1, v2, v3}, Lcom/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    .line 271
    return-void

    :cond_a3
    move v0, v1

    .line 201
    goto :goto_46
.end method

.method public constructor <init>(ZII)V
    .registers 5

    .prologue
    .line 177
    invoke-static {p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getDefaultSchemeRegistry(ZII)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V
    .registers 3

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    return-void
.end method

.method private addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
    .registers 3

    .prologue
    .line 1592
    if-eqz p2, :cond_5

    .line 1593
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 1596
    :cond_5
    return-object p1
.end method

.method public static allowRetryExceptionClass(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 312
    if-eqz p0, :cond_5

    .line 313
    invoke-static {p0}, Lcom/loopj/android/http/RetryHandler;->addClassToWhitelist(Ljava/lang/Class;)V

    .line 315
    :cond_5
    return-void
.end method

.method public static blockRetryExceptionClass(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 318
    if-eqz p0, :cond_5

    .line 319
    invoke-static {p0}, Lcom/loopj/android/http/RetryHandler;->addClassToBlacklist(Ljava/lang/Class;)V

    .line 321
    :cond_5
    return-void
.end method

.method private cancelRequests(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loopj/android/http/RequestHandle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 908
    if-eqz p1, :cond_16

    .line 909
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    .line 910
    invoke-virtual {v0, p2}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_6

    .line 913
    :cond_16
    return-void
.end method

.method public static endEntityViaReflection(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 8

    .prologue
    .line 426
    instance-of v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    if-eqz v0, :cond_30

    .line 428
    const/4 v1, 0x0

    .line 429
    :try_start_5
    const-class v0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 430
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-ge v2, v4, :cond_42

    aget-object v0, v3, v2

    .line 431
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wrappedEntity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 436
    :goto_1f
    if-eqz v0, :cond_30

    .line 437
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 438
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntity;

    .line 439
    if-eqz v0, :cond_30

    .line 440
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->consumeContent()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_35

    .line 447
    :cond_30
    :goto_30
    return-void

    .line 430
    :cond_31
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 443
    :catch_35
    move-exception v0

    .line 444
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "wrappedEntity consume"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_42
    move-object v0, v1

    goto :goto_1f
.end method

.method private static getDefaultSchemeRegistry(ZII)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 281
    if-eqz p0, :cond_e

    .line 282
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_e
    if-ge p1, v3, :cond_1d

    .line 286
    const/16 p1, 0x50

    .line 287
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "Invalid HTTP port number specified, defaulting to 80"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1d
    if-ge p2, v3, :cond_2c

    .line 291
    const/16 p2, 0x1bb

    .line 292
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_2c
    if-eqz p0, :cond_52

    .line 299
    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getFixedSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 304
    :goto_32
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 305
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->a()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 306
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    invoke-direct {v2, v3, v0, p2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 308
    return-object v1

    .line 301
    :cond_52
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_32
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 332
    if-nez p1, :cond_4

    .line 333
    const/4 v0, 0x0

    .line 360
    :cond_3
    :goto_3
    return-object v0

    .line 335
    :cond_4
    if-eqz p0, :cond_8f

    .line 337
    :try_start_6
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_36} :catch_83

    move-result-object p1

    move-object v0, p1

    .line 347
    :goto_38
    if-eqz p2, :cond_3

    .line 350
    invoke-virtual {p2}, Lcom/loopj/android/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 354
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string/jumbo v0, "&"

    :goto_69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 341
    :catch_83
    move-exception v0

    .line 343
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "getUrlWithQueryString encoding URL"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8f
    move-object v0, p1

    goto :goto_38

    .line 355
    :cond_91
    const-string/jumbo v0, "?"

    goto :goto_69
.end method

.method public static isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    if-nez p0, :cond_6

    .line 386
    :goto_5
    return v1

    .line 374
    :cond_6
    new-array v3, v5, [B

    move v2, v1

    .line 377
    :goto_9
    if-ge v2, v5, :cond_19

    .line 378
    rsub-int/lit8 v4, v2, 0x2

    :try_start_d
    invoke-virtual {p0, v3, v2, v4}, Ljava/io/PushbackInputStream;->read([BII)I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_30

    move-result v4

    .line 379
    if-gez v4, :cond_17

    .line 383
    invoke-virtual {p0, v3, v1, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_5

    .line 380
    :cond_17
    add-int/2addr v2, v4

    .line 381
    goto :goto_9

    .line 383
    :cond_19
    invoke-virtual {p0, v3, v1, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 385
    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 386
    const v3, 0x8b1f

    if-ne v3, v2, :cond_35

    :goto_2e
    move v1, v0

    goto :goto_5

    .line 383
    :catchall_30
    move-exception v0

    invoke-virtual {p0, v3, v1, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    throw v0

    :cond_35
    move v0, v1

    .line 386
    goto :goto_2e
.end method

.method private paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1563
    .line 1566
    if-eqz p1, :cond_7

    .line 1567
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/loopj/android/http/RequestParams;->getEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    .line 1577
    :cond_7
    :goto_7
    return-object v0

    .line 1569
    :catch_8
    move-exception v1

    .line 1570
    if-eqz p2, :cond_10

    .line 1571
    const/4 v2, 0x0

    invoke-interface {p2, v2, v0, v0, v1}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_7

    .line 1573
    :cond_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method

.method public static silentCloseInputStream(Ljava/io/InputStream;)V
    .registers 5

    .prologue
    .line 396
    if-eqz p0, :cond_5

    .line 397
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 402
    :cond_5
    :goto_5
    return-void

    .line 399
    :catch_6
    move-exception v0

    .line 400
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Cannot close input stream"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static silentCloseOutputStream(Ljava/io/OutputStream;)V
    .registers 5

    .prologue
    .line 411
    if-eqz p0, :cond_5

    .line 412
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 417
    :cond_5
    :goto_5
    return-void

    .line 414
    :catch_6
    move-exception v0

    .line 415
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Cannot close output stream"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 782
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    return-void
.end method

.method public cancelAllRequests(Z)V
    .registers 5

    .prologue
    .line 925
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 926
    if-eqz v0, :cond_a

    .line 927
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    .line 928
    invoke-virtual {v0, p1}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_1c

    .line 932
    :cond_2c
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 933
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    .line 886
    if-nez p1, :cond_e

    .line 887
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "Passed null Context to cancelRequests"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :goto_d
    return-void

    .line 891
    :cond_e
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 892
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_30

    .line 895
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient$4;-><init>(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V

    .line 901
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_d

    .line 903
    :cond_30
    invoke-direct {p0, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    goto :goto_d
.end method

.method public cancelRequestsByTAG(Ljava/lang/Object;Z)V
    .registers 7

    .prologue
    .line 945
    if-nez p1, :cond_e

    .line 946
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "cancelRequestsByTAG, passed TAG is null, cannot proceed"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_d
    return-void

    .line 949
    :cond_e
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 950
    if-eqz v0, :cond_18

    .line 951
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    .line 952
    invoke-virtual {v0}, Lcom/loopj/android/http/RequestHandle;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 953
    invoke-virtual {v0, p2}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_2a
.end method

.method public clearCredentialsProvider()V
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->E()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a()V

    .line 873
    return-void
.end method

.method protected createConnectionManager(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/params/BasicHttpParams;)Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 4

    .prologue
    .line 579
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p2, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .prologue
    .line 1391
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 1392
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcom/loopj/android/http/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1433
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1434
    if-eqz p3, :cond_10

    invoke-virtual {v3, p3}, Lcom/loopj/android/http/HttpDelete;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1435
    :cond_10
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 12

    .prologue
    .line 1405
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 1406
    if-eqz p3, :cond_e

    invoke-virtual {v3, p3}, Lcom/loopj/android/http/HttpDelete;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1407
    :cond_e
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    .prologue
    .line 1377
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 1418
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1419
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v0, p0

    move-object v5, p3

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    .line 1420
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 12

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v3, Lcom/loopj/android/http/HttpGet;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    .prologue
    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcom/loopj/android/http/HttpGet;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1093
    new-instance v3, Lcom/loopj/android/http/HttpGet;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1094
    if-eqz p3, :cond_10

    invoke-interface {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1095
    :cond_10
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    .prologue
    .line 1052
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1037
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 680
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    return v0
.end method

.method protected getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 568
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lcz/msebera/android/httpclient/client/HttpClient;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lcz/msebera/android/httpclient/protocol/HttpContext;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    return-object v0
.end method

.method public getLogInterface()Lcom/loopj/android/http/LogInterface;
    .registers 2

    .prologue
    .line 516
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    return-object v0
.end method

.method public getLoggingLevel()I
    .registers 2

    .prologue
    .line 497
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/LogInterface;->getLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getMaxConnections()I
    .registers 2

    .prologue
    .line 643
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getResponseTimeout()I
    .registers 2

    .prologue
    .line 703
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    return v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected getURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 3

    .prologue
    .line 1542
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 12

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v3, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    .prologue
    .line 995
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1023
    new-instance v3, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 1024
    if-eqz p3, :cond_10

    invoke-interface {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1025
    :cond_10
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    .prologue
    .line 982
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 970
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public isLoggingEnabled()Z
    .registers 2

    .prologue
    .line 477
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/LogInterface;->isLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isUrlEncodingEnabled()Z
    .registers 2

    .prologue
    .line 1581
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method protected newAsyncHttpRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;
    .registers 8

    .prologue
    .line 1468
    new-instance v0, Lcom/loopj/android/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/loopj/android/http/AsyncHttpRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    return-object v0
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .prologue
    .line 1328
    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1345
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPatch;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/client/methods/HttpPatch;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 14

    .prologue
    .line 1364
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPatch;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpPatch;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 1365
    if-eqz p3, :cond_12

    invoke-virtual {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1366
    :cond_12
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    .prologue
    .line 1315
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1303
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .prologue
    .line 1152
    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 14

    .prologue
    .line 1187
    new-instance v3, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 1188
    if-eqz p4, :cond_12

    invoke-direct {p0, p4, p6}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 1189
    :cond_12
    if-eqz p3, :cond_17

    invoke-virtual {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1190
    :cond_17
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 14

    .prologue
    .line 1211
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 1212
    if-eqz p3, :cond_12

    invoke-virtual {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1213
    :cond_12
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    .prologue
    .line 1139
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1124
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .prologue
    .line 1249
    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPut;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 14

    .prologue
    .line 1286
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPut;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 1287
    if-eqz p3, :cond_12

    invoke-virtual {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1288
    :cond_12
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    .prologue
    .line 1236
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1224
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public removeAllHeaders()V
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 773
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    return-void
.end method

.method protected sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .prologue
    .line 1484
    if-nez p3, :cond_b

    .line 1485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HttpUriRequest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_b
    if-nez p5, :cond_16

    .line 1489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ResponseHandler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_16
    invoke-interface {p5}, Lcom/loopj/android/http/ResponseHandlerInterface;->getUseSynchronousMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p5}, Lcom/loopj/android/http/ResponseHandlerInterface;->getUsePoolThread()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1496
    :cond_2b
    if-eqz p4, :cond_4e

    .line 1497
    instance-of v0, p3, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v0, :cond_a5

    move-object v0, p3

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "Content-Type"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1498
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "Passed contentType will be ignored because HttpEntity sets content type"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :cond_4e
    :goto_4e
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setRequestHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1505
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    .line 1507
    invoke-virtual/range {p0 .. p6}, Lcom/loopj/android/http/AsyncHttpClient;->newAsyncHttpRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;

    move-result-object v0

    .line 1508
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1509
    new-instance v1, Lcom/loopj/android/http/RequestHandle;

    invoke-direct {v1, v0}, Lcom/loopj/android/http/RequestHandle;-><init>(Lcom/loopj/android/http/AsyncHttpRequest;)V

    .line 1511
    if-eqz p6, :cond_af

    .line 1514
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    monitor-enter v2

    .line 1515
    :try_start_6f
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1516
    if-nez v0, :cond_87

    .line 1517
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1518
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_6f .. :try_end_88} :catchall_ac

    .line 1522
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1525
    :cond_8f
    :goto_8f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1526
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {v0}, Lcom/loopj/android/http/RequestHandle;->shouldBeGarbageCollected()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1527
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8f

    .line 1500
    :cond_a5
    const-string/jumbo v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 1520
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    .line 1532
    :cond_af
    return-object v1
.end method

.method public setAuthenticationPreemptive(Z)V
    .registers 5

    .prologue
    .line 859
    if-eqz p1, :cond_e

    .line 860
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-direct {v1}, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    .line 864
    :goto_d
    return-void

    .line 862
    :cond_e
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    const-class v1, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Ljava/lang/Class;)V

    goto :goto_d
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 803
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;)V
    .registers 5

    .prologue
    .line 826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;Z)V

    .line 827
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;Z)V
    .registers 6

    .prologue
    .line 839
    new-instance v0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0, p3, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 841
    invoke-virtual {p0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->setAuthenticationPreemptive(Z)V

    .line 842
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 814
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;Z)V

    .line 815
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 6

    .prologue
    .line 690
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_6

    const/16 p1, 0x2710

    :cond_6
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    .line 691
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    .line 692
    iget v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;J)V

    .line 693
    iget v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->c(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 694
    return-void
.end method

.method public setCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)V
    .registers 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const-string/jumbo v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method public setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 6

    .prologue
    .line 845
    if-nez p2, :cond_e

    .line 846
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "AsyncHttpClient"

    const-string/jumbo v2, "Provided credentials are null, not setting"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :goto_d
    return-void

    .line 849
    :cond_e
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->E()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    if-nez p1, :cond_18

    sget-object p1, Lcz/msebera/android/httpclient/auth/AuthScope;->d:Lcz/msebera/android/httpclient/auth/AuthScope;

    :cond_18
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    goto :goto_d
.end method

.method public setEnableRedirects(Z)V
    .registers 2

    .prologue
    .line 613
    invoke-virtual {p0, p1, p1, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    .line 614
    return-void
.end method

.method public setEnableRedirects(ZZ)V
    .registers 4

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    .line 606
    return-void
.end method

.method public setEnableRedirects(ZZZ)V
    .registers 7

    .prologue
    .line 592
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    const-string/jumbo v2, "http.protocol.reject-relative-redirect"

    if-nez p2, :cond_26

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v1, v2, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 593
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.protocol.allow-circular-redirects"

    invoke-interface {v0, v1, p3}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 594
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/loopj/android/http/MyRedirectHandler;

    invoke-direct {v1, p1}, Lcom/loopj/android/http/MyRedirectHandler;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    .line 595
    return-void

    .line 592
    :cond_26
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setLogInterface(Lcom/loopj/android/http/LogInterface;)V
    .registers 2

    .prologue
    .line 526
    if-eqz p1, :cond_4

    .line 527
    sput-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    .line 529
    :cond_4
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 3

    .prologue
    .line 487
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/LogInterface;->setLoggingEnabled(Z)V

    .line 488
    return-void
.end method

.method public setLoggingLevel(I)V
    .registers 3

    .prologue
    .line 507
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/LogInterface;->setLoggingLevel(I)V

    .line 508
    return-void
.end method

.method public setMaxConnections(I)V
    .registers 5

    .prologue
    .line 652
    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    .line 653
    const/16 p1, 0xa

    .line 654
    :cond_5
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    .line 655
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    .line 656
    new-instance v1, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V

    .line 657
    return-void
.end method

.method public setMaxRetriesAndTimeout(II)V
    .registers 5

    .prologue
    .line 764
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/loopj/android/http/RetryHandler;

    invoke-direct {v1, p1, p2}, Lcom/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    .line 765
    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 725
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 726
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    .line 727
    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 728
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 739
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->E()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p3, p4}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 742
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 743
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    .line 744
    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 745
    return-void
.end method

.method public setRedirectHandler(Lcz/msebera/android/httpclient/client/RedirectHandler;)V
    .registers 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    .line 625
    return-void
.end method

.method public setResponseTimeout(I)V
    .registers 4

    .prologue
    .line 713
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_6

    const/16 p1, 0x2710

    :cond_6
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    .line 714
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    .line 715
    iget v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 716
    return-void
.end method

.method public setSSLSocketFactory(Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;)V
    .registers 6

    .prologue
    .line 754
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->r()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 755
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .prologue
    .line 559
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 560
    return-void
.end method

.method public setTimeout(I)V
    .registers 3

    .prologue
    .line 668
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_6

    const/16 p1, 0x2710

    .line 669
    :cond_6
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setConnectTimeout(I)V

    .line 670
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setResponseTimeout(I)V

    .line 671
    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .registers 2

    .prologue
    .line 1552
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 1553
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->q()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    .line 635
    return-void
.end method
