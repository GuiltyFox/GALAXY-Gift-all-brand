.class public final Lokhttp3/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field private static final e:Lokhttp3/ResponseBody;


# instance fields
.field final a:Lokhttp3/OkHttpClient;

.field public final b:Lokhttp3/internal/http/StreamAllocation;

.field c:J

.field public final d:Z

.field private final f:Lokhttp3/Response;

.field private g:Lokhttp3/internal/http/HttpStream;

.field private h:Z

.field private final i:Lokhttp3/Request;

.field private j:Lokhttp3/Request;

.field private k:Lokhttp3/Response;

.field private l:Lokhttp3/Response;

.field private m:Lokio/Sink;

.field private n:Lokio/BufferedSink;

.field private final o:Z

.field private final p:Z

.field private q:Lokhttp3/internal/http/CacheRequest;

.field private r:Lokhttp3/internal/http/CacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lokhttp3/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lokhttp3/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpEngine;->e:Lokhttp3/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V
    .registers 11

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->c:J

    .line 173
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    .line 174
    iput-object p2, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    .line 175
    iput-boolean p3, p0, Lokhttp3/internal/http/HttpEngine;->d:Z

    .line 176
    iput-boolean p4, p0, Lokhttp3/internal/http/HttpEngine;->o:Z

    .line 177
    iput-boolean p5, p0, Lokhttp3/internal/http/HttpEngine;->p:Z

    .line 178
    if-eqz p6, :cond_1a

    .line 180
    :goto_13
    iput-object p6, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    .line 181
    iput-object p7, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    .line 182
    iput-object p8, p0, Lokhttp3/internal/http/HttpEngine;->f:Lokhttp3/Response;

    .line 183
    return-void

    .line 178
    :cond_1a
    new-instance p6, Lokhttp3/internal/http/StreamAllocation;

    .line 180
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->o()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-static {p1, p2}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Address;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lokhttp3/internal/http/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V

    goto :goto_13
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_34

    .line 582
    if-lez v1, :cond_15

    .line 583
    const-string/jumbo v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 586
    invoke-virtual {v0}, Lokhttp3/Cookie;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/Cookie;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 588
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Address;
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 1024
    .line 1027
    invoke-virtual {p1}, Lokhttp3/Request;->g()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1028
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 1029
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 1030
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->l()Lokhttp3/CertificatePinner;

    move-result-object v7

    .line 1033
    :goto_13
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->g()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->h()Lokhttp3/Dns;

    move-result-object v3

    .line 1034
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->i()Ljavax/net/SocketFactory;

    move-result-object v4

    .line 1035
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->n()Lokhttp3/Authenticator;

    move-result-object v8

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->d()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->t()Ljava/util/List;

    move-result-object v10

    .line 1036
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->u()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->e()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 1033
    return-object v0

    :cond_45
    move-object v6, v7

    move-object v5, v7

    goto :goto_13
.end method

.method private static a(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 886
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 888
    invoke-virtual {p0}, Lokhttp3/Headers;->a()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_3c

    .line 889
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 890
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 891
    const-string/jumbo v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 888
    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 894
    :cond_2a
    invoke-static {v4}, Lokhttp3/internal/http/OkHeaders;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {p1, v4}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_27

    .line 895
    :cond_36
    sget-object v6, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    invoke-virtual {v6, v2, v4, v5}, Lokhttp3/internal/Internal;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 899
    :cond_3c
    invoke-virtual {p1}, Lokhttp3/Headers;->a()I

    move-result v1

    :goto_40
    if-ge v0, v1, :cond_62

    .line 900
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 901
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 899
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 904
    :cond_52
    invoke-static {v3}, Lokhttp3/internal/http/OkHeaders;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 905
    sget-object v4, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lokhttp3/internal/Internal;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 909
    :cond_62
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lokhttp3/internal/http/HttpEngine;Lokhttp3/Request;)Lokhttp3/Request;
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    return-object p1
.end method

.method private a(Lokhttp3/internal/http/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 7

    .prologue
    .line 804
    if-nez p1, :cond_3

    .line 853
    :cond_2
    :goto_2
    return-object p2

    .line 805
    :cond_3
    invoke-interface {p1}, Lokhttp3/internal/http/CacheRequest;->a()Lokio/Sink;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_2

    .line 808
    invoke-virtual {p2}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v1

    .line 809
    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 811
    new-instance v2, Lokhttp3/internal/http/HttpEngine$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lokhttp3/internal/http/HttpEngine$2;-><init>(Lokhttp3/internal/http/HttpEngine;Lokio/BufferedSource;Lokhttp3/internal/http/CacheRequest;Lokio/BufferedSink;)V

    .line 853
    invoke-virtual {p2}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    .line 854
    invoke-virtual {p2}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object p2

    goto :goto_2
.end method

.method static synthetic a(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    return-object v0
.end method

.method private a(Ljava/io/IOException;Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_7

    .line 418
    :cond_6
    :goto_6
    return v1

    .line 397
    :cond_7
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_15

    .line 398
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    :goto_11
    move v1, v0

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_11

    .line 403
    :cond_15
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_21

    .line 406
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_6

    .line 410
    :cond_21
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    move v1, v0

    .line 418
    goto :goto_6
.end method

.method public static a(Lokhttp3/Response;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 541
    :cond_13
    :goto_13
    return v0

    .line 526
    :cond_14
    invoke-virtual {p0}, Lokhttp3/Response;->b()I

    move-result v2

    .line 527
    const/16 v3, 0x64

    if-lt v2, v3, :cond_20

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_2a

    :cond_20
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x130

    if-eq v2, v3, :cond_2a

    move v0, v1

    .line 530
    goto :goto_13

    .line 536
    :cond_2a
    invoke-static {p0}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    const-string/jumbo v2, "chunked"

    const-string/jumbo v3, "Transfer-Encoding"

    .line 537
    invoke-virtual {p0, v3}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_44
    move v0, v1

    .line 538
    goto :goto_13
.end method

.method private static a(Lokhttp3/Response;Lokhttp3/Response;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 863
    invoke-virtual {p1}, Lokhttp3/Response;->b()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_a

    .line 879
    :cond_9
    :goto_9
    return v0

    .line 870
    :cond_a
    invoke-virtual {p0}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v1

    const-string/jumbo v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 871
    if-eqz v1, :cond_30

    .line 872
    invoke-virtual {p1}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v2

    const-string/jumbo v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 873
    if-eqz v2, :cond_30

    .line 874
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    .line 879
    :cond_30
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Lokhttp3/Request;)Lokhttp3/Request;
    .registers 6

    .prologue
    .line 551
    invoke-virtual {p1}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 553
    const-string/jumbo v1, "Host"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 554
    const-string/jumbo v1, "Host"

    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 557
    :cond_1c
    const-string/jumbo v1, "Connection"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 558
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 561
    :cond_2e
    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_43

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http/HttpEngine;->h:Z

    .line 563
    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 566
    :cond_43
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->f()Lokhttp3/CookieJar;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/CookieJar;->a(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v1

    .line 567
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    .line 568
    const-string/jumbo v2, "Cookie"

    invoke-direct {p0, v1}, Lokhttp3/internal/http/HttpEngine;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 571
    :cond_61
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_74

    .line 572
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lokhttp3/internal/Version;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 575
    :cond_74
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 3

    .prologue
    .line 302
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 303
    invoke-virtual {p0}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object p0

    .line 302
    :cond_15
    return-object p0
.end method

.method static synthetic b(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/Response;
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->l()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private c(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 6

    .prologue
    .line 498
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->h:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "gzip"

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    const-string/jumbo v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 511
    :cond_16
    :goto_16
    return-object p1

    .line 502
    :cond_17
    invoke-virtual {p1}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 506
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {p1}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 507
    invoke-virtual {p1}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->b()Lokhttp3/Headers$Builder;

    move-result-object v1

    const-string/jumbo v2, "Content-Encoding"

    .line 508
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    const-string/jumbo v2, "Content-Length"

    .line 509
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->b(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v1

    .line 511
    invoke-virtual {p1}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v2

    .line 512
    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    .line 513
    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object p1

    goto :goto_16
.end method

.method private i()Z
    .registers 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->o:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    .line 290
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 289
    :goto_11
    return v0

    .line 290
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private j()Lokhttp3/internal/http/HttpStream;
    .registers 7

    .prologue
    .line 295
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v5, 0x1

    .line 296
    :goto_10
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->a()I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    .line 297
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->b()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->c()I

    move-result v3

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    .line 298
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->r()Z

    move-result v4

    .line 296
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/http/StreamAllocation;->a(IIIZZ)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    return-object v0

    .line 295
    :cond_2f
    const/4 v5, 0x0

    goto :goto_10
.end method

.method private k()V
    .registers 4

    .prologue
    .line 422
    sget-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->a(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v0

    .line 423
    if-nez v0, :cond_b

    .line 439
    :cond_a
    :goto_a
    return-void

    .line 426
    :cond_b
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-static {v1, v2}, Lokhttp3/internal/http/CacheStrategy;->a(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 427
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 429
    :try_start_21
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/internal/InternalCache;->b(Lokhttp3/Request;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_a

    .line 430
    :catch_27
    move-exception v0

    goto :goto_a

    .line 438
    :cond_29
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-interface {v0, v1}, Lokhttp3/internal/InternalCache;->a(Lokhttp3/Response;)Lokhttp3/internal/http/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->q:Lokhttp3/internal/http/CacheRequest;

    goto :goto_a
.end method

.method private l()Lokhttp3/Response;
    .registers 5

    .prologue
    .line 773
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v0}, Lokhttp3/internal/http/HttpStream;->b()V

    .line 775
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v0}, Lokhttp3/internal/http/HttpStream;->a()Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    .line 776
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    .line 777
    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->b()Lokhttp3/internal/io/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/io/RealConnection;->d()Lokhttp3/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/internal/http/HttpEngine;->c:J

    .line 778
    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->a(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->b(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    .line 782
    iget-boolean v1, p0, Lokhttp3/internal/http/HttpEngine;->p:Z

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lokhttp3/Response;->b()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_4f

    .line 783
    :cond_3d
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    .line 784
    invoke-interface {v2, v0}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    .line 788
    :cond_4f
    const-string/jumbo v1, "close"

    invoke-virtual {v0}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v2

    const-string/jumbo v3, "Connection"

    invoke-virtual {v2, v3}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    const-string/jumbo v1, "close"

    const-string/jumbo v2, "Connection"

    .line 789
    invoke-virtual {v0, v2}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 790
    :cond_73
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->d()V

    .line 793
    :cond_78
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http/StreamAllocation;->a(Ljava/io/IOException;)V

    .line 362
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->r()Z

    move-result v1

    if-nez v1, :cond_f

    .line 381
    :cond_e
    :goto_e
    return-object v0

    .line 366
    :cond_f
    if-eqz p3, :cond_15

    instance-of v1, p3, Lokhttp3/internal/http/RetryableSink;

    if-eqz v1, :cond_e

    .line 370
    :cond_15
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/HttpEngine;->a(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 374
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 378
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->f()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v6

    .line 381
    new-instance v0, Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    iget-boolean v3, p0, Lokhttp3/internal/http/HttpEngine;->d:Z

    iget-boolean v4, p0, Lokhttp3/internal/http/HttpEngine;->o:Z

    iget-boolean v5, p0, Lokhttp3/internal/http/HttpEngine;->p:Z

    move-object v7, p3

    check-cast v7, Lokhttp3/internal/http/RetryableSink;

    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->f:Lokhttp3/Response;

    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    goto :goto_e
.end method

.method public a()V
    .registers 7

    .prologue
    .line 196
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->r:Lokhttp3/internal/http/CacheStrategy;

    if-eqz v0, :cond_5

    .line 280
    :cond_4
    :goto_4
    return-void

    .line 197
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 199
    :cond_f
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v1

    .line 201
    sget-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v2}, Lokhttp3/internal/Internal;->a(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_9e

    .line 203
    invoke-interface {v2, v1}, Lokhttp3/internal/InternalCache;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 206
    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 207
    new-instance v3, Lokhttp3/internal/http/CacheStrategy$Factory;

    invoke-direct {v3, v4, v5, v1, v0}, Lokhttp3/internal/http/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    invoke-virtual {v3}, Lokhttp3/internal/http/CacheStrategy$Factory;->a()Lokhttp3/internal/http/CacheStrategy;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http/HttpEngine;->r:Lokhttp3/internal/http/CacheStrategy;

    .line 208
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->r:Lokhttp3/internal/http/CacheStrategy;

    iget-object v3, v3, Lokhttp3/internal/http/CacheStrategy;->a:Lokhttp3/Request;

    iput-object v3, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    .line 209
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->r:Lokhttp3/internal/http/CacheStrategy;

    iget-object v3, v3, Lokhttp3/internal/http/CacheStrategy;->b:Lokhttp3/Response;

    iput-object v3, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    .line 211
    if-eqz v2, :cond_45

    .line 212
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->r:Lokhttp3/internal/http/CacheStrategy;

    invoke-interface {v2, v3}, Lokhttp3/internal/InternalCache;->a(Lokhttp3/internal/http/CacheStrategy;)V

    .line 215
    :cond_45
    if-eqz v0, :cond_52

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    if-nez v2, :cond_52

    .line 216
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 220
    :cond_52
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    if-nez v2, :cond_a0

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    if-nez v2, :cond_a0

    .line 221
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    .line 222
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->f:Lokhttp3/Response;

    .line 223
    invoke-static {v1}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->c(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    .line 224
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 225
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(I)Lokhttp3/Response$Builder;

    move-result-object v0

    const-string/jumbo v1, "Unsatisfiable Request (only-if-cached)"

    .line 226
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/http/HttpEngine;->e:Lokhttp3/ResponseBody;

    .line 227
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/internal/http/HttpEngine;->c:J

    .line 228
    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->a(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->b(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    goto/16 :goto_4

    .line 203
    :cond_9e
    const/4 v0, 0x0

    goto :goto_23

    .line 235
    :cond_a0
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    if-nez v2, :cond_d4

    .line 236
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    .line 237
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->f:Lokhttp3/Response;

    .line 238
    invoke-static {v1}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->c(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    .line 239
    invoke-static {v1}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->b(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    .line 241
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->c(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    goto/16 :goto_4

    .line 248
    :cond_d4
    :try_start_d4
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->j()Lokhttp3/internal/http/HttpStream;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    .line 249
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v2, p0}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/internal/http/HttpEngine;)V

    .line 251
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 252
    invoke-static {v1}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Request;)J

    move-result-wide v2

    .line 253
    iget-boolean v1, p0, Lokhttp3/internal/http/HttpEngine;->d:Z

    if-eqz v1, :cond_128

    .line 254
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_108

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_fd
    .catchall {:try_start_d4 .. :try_end_fd} :catchall_fd

    .line 276
    :catchall_fd
    move-exception v1

    if-eqz v0, :cond_107

    .line 277
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    :cond_107
    throw v1

    .line 259
    :cond_108
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_11f

    .line 261
    :try_start_10e
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-interface {v1, v4}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;)V

    .line 262
    new-instance v1, Lokhttp3/internal/http/RetryableSink;

    long-to-int v2, v2

    invoke-direct {v1, v2}, Lokhttp3/internal/http/RetryableSink;-><init>(I)V

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    goto/16 :goto_4

    .line 266
    :cond_11f
    new-instance v1, Lokhttp3/internal/http/RetryableSink;

    invoke-direct {v1}, Lokhttp3/internal/http/RetryableSink;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    goto/16 :goto_4

    .line 269
    :cond_128
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-interface {v1, v4}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;)V

    .line 270
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-interface {v1, v4, v2, v3}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;
    :try_end_139
    .catchall {:try_start_10e .. :try_end_139} :catchall_fd

    goto/16 :goto_4
.end method

.method public a(Lokhttp3/Headers;)V
    .registers 5

    .prologue
    .line 913
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->f()Lokhttp3/CookieJar;

    move-result-object v0

    sget-object v1, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    if-ne v0, v1, :cond_b

    .line 919
    :cond_a
    :goto_a
    return-void

    .line 915
    :cond_b
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/Cookie;->a(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 916
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 918
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->f()Lokhttp3/CookieJar;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lokhttp3/CookieJar;->a(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_a
.end method

.method public a(Lokhttp3/HttpUrl;)Z
    .registers 5

    .prologue
    .line 1017
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1019
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()I

    move-result v2

    if-ne v1, v2, :cond_2e

    .line 1020
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 1018
    :goto_2d
    return v0

    .line 1020
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method a(Lokhttp3/Request;)Z
    .registers 3

    .prologue
    .line 317
    invoke-virtual {p1}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 5

    .prologue
    .line 312
    iget-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 313
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->c:J

    .line 314
    return-void
.end method

.method public c()Lokhttp3/Response;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 347
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    return-object v0
.end method

.method public d()Lokhttp3/Connection;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->b()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->c()V

    .line 447
    return-void
.end method

.method public f()Lokhttp3/internal/http/StreamAllocation;
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->n:Lokio/BufferedSink;

    if-eqz v0, :cond_19

    .line 469
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->n:Lokio/BufferedSink;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 474
    :cond_9
    :goto_9
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    if-eqz v0, :cond_23

    .line 475
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 481
    :goto_16
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    return-object v0

    .line 470
    :cond_19
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    if-eqz v0, :cond_9

    .line 471
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    goto :goto_9

    .line 478
    :cond_23
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/StreamAllocation;->a(Ljava/io/IOException;)V

    goto :goto_16
.end method

.method public g()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 596
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    if-eqz v0, :cond_7

    .line 686
    :cond_6
    :goto_6
    return-void

    .line 599
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    if-nez v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    if-nez v0, :cond_18

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_18
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    if-eqz v0, :cond_6

    .line 608
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->p:Z

    if-eqz v0, :cond_a4

    .line 609
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;)V

    .line 610
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->l()Lokhttp3/Response;

    move-result-object v0

    .line 648
    :goto_2b
    invoke-virtual {v0}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Headers;)V

    .line 651
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    if-eqz v1, :cond_144

    .line 652
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Response;Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 653
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    .line 654
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->f:Lokhttp3/Response;

    .line 655
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->c(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    .line 656
    invoke-virtual {v2}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    .line 657
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->b(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 658
    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    .line 660
    invoke-virtual {v0}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 661
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->e()V

    .line 665
    sget-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->a(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v0

    .line 666
    invoke-interface {v0}, Lokhttp3/internal/InternalCache;->a()V

    .line 667
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/InternalCache;->a(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 668
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->c(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    goto/16 :goto_6

    .line 611
    :cond_a4
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->o:Z

    if-nez v0, :cond_be

    .line 612
    new-instance v0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    .line 613
    invoke-virtual {v3}, Lokhttp3/internal/http/StreamAllocation;->b()Lokhttp3/internal/io/RealConnection;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;Lokhttp3/Connection;)V

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    goto/16 :goto_2b

    .line 616
    :cond_be
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->n:Lokio/BufferedSink;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->n:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d7

    .line 617
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->n:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->e()Lokio/BufferedSink;

    .line 621
    :cond_d7
    iget-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_113

    .line 622
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Request;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10c

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    instance-of v0, v0, Lokhttp3/internal/http/RetryableSink;

    if-eqz v0, :cond_10c

    .line 624
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    check-cast v0, Lokhttp3/internal/http/RetryableSink;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryableSink;->b()J

    move-result-wide v0

    .line 625
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string/jumbo v3, "Content-Length"

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    .line 629
    :cond_10c
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->j:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/Request;)V

    .line 633
    :cond_113
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    if-eqz v0, :cond_12f

    .line 634
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->n:Lokio/BufferedSink;

    if-eqz v0, :cond_135

    .line 636
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->n:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 640
    :goto_120
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    instance-of v0, v0, Lokhttp3/internal/http/RetryableSink;

    if-eqz v0, :cond_12f

    .line 641
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->g:Lokhttp3/internal/http/HttpStream;

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    check-cast v0, Lokhttp3/internal/http/RetryableSink;

    invoke-interface {v1, v0}, Lokhttp3/internal/http/HttpStream;->a(Lokhttp3/internal/http/RetryableSink;)V

    .line 645
    :cond_12f
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->l()Lokhttp3/Response;

    move-result-object v0

    goto/16 :goto_2b

    .line 638
    :cond_135
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->close()V

    goto :goto_120

    .line 671
    :cond_13b
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->g()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    .line 675
    :cond_144
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    .line 676
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->f:Lokhttp3/Response;

    .line 677
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->c(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->k:Lokhttp3/Response;

    .line 678
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->b(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 679
    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->b(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->a(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    .line 682
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-static {v0}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 683
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->k()V

    .line 684
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->q:Lokhttp3/internal/http/CacheRequest;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/internal/http/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->c(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    goto/16 :goto_6
.end method

.method public h()Lokhttp3/Request;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 927
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 928
    :cond_b
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->b:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->b()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_27

    .line 930
    invoke-interface {v0}, Lokhttp3/Connection;->a()Lokhttp3/Route;

    move-result-object v0

    .line 932
    :goto_17
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->b()I

    move-result v2

    .line 934
    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v3

    .line 935
    sparse-switch v2, :sswitch_data_10a

    .line 1008
    :cond_26
    :goto_26
    return-object v1

    :cond_27
    move-object v0, v1

    .line 930
    goto :goto_17

    .line 937
    :sswitch_29
    if-eqz v0, :cond_40

    .line 938
    invoke-virtual {v0}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 940
    :goto_2f
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_47

    .line 941
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_40
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    .line 939
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->d()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2f

    .line 943
    :cond_47
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->n()Lokhttp3/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-interface {v1, v0, v2}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v1

    goto :goto_26

    .line 946
    :sswitch_54
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->m()Lokhttp3/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    invoke-interface {v1, v0, v2}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v1

    goto :goto_26

    .line 952
    :sswitch_61
    const-string/jumbo v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string/jumbo v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 961
    :cond_73
    :sswitch_73
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->q()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 963
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->l:Lokhttp3/Response;

    const-string/jumbo v2, "Location"

    invoke-virtual {v0, v2}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_26

    .line 965
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_26

    .line 971
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-virtual {v4}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 972
    if-nez v2, :cond_ae

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->p()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 975
    :cond_ae
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 976
    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 977
    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 978
    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 982
    :goto_c6
    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 983
    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 984
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 990
    :cond_d8
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 991
    const-string/jumbo v1, "Authorization"

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 994
    :cond_e4
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->a(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v1

    goto/16 :goto_26

    .line 980
    :cond_ee
    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_c6

    .line 1000
    :sswitch_f2
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->m:Lokio/Sink;

    instance-of v0, v0, Lokhttp3/internal/http/RetryableSink;

    if-eqz v0, :cond_107

    :cond_fc
    const/4 v0, 0x1

    .line 1001
    :goto_fd
    iget-boolean v2, p0, Lokhttp3/internal/http/HttpEngine;->o:Z

    if-eqz v2, :cond_103

    if-eqz v0, :cond_26

    .line 1005
    :cond_103
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->i:Lokhttp3/Request;

    goto/16 :goto_26

    .line 1000
    :cond_107
    const/4 v0, 0x0

    goto :goto_fd

    .line 935
    nop

    :sswitch_data_10a
    .sparse-switch
        0x12c -> :sswitch_73
        0x12d -> :sswitch_73
        0x12e -> :sswitch_73
        0x12f -> :sswitch_73
        0x133 -> :sswitch_61
        0x134 -> :sswitch_61
        0x191 -> :sswitch_54
        0x197 -> :sswitch_29
        0x198 -> :sswitch_f2
    .end sparse-switch
.end method
