.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# instance fields
.field a:Lokhttp3/Dispatcher;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lokhttp3/CookieJar;

.field i:Lokhttp3/Cache;

.field j:Lokhttp3/internal/InternalCache;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lokhttp3/internal/tls/CertificateChainCleaner;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lokhttp3/CertificatePinner;

.field p:Lokhttp3/Authenticator;

.field q:Lokhttp3/Authenticator;

.field r:Lokhttp3/ConnectionPool;

.field s:Lokhttp3/Dns;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    .line 380
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 381
    invoke-static {}, Lokhttp3/OkHttpClient;->x()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/List;

    .line 382
    invoke-static {}, Lokhttp3/OkHttpClient;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/List;

    .line 383
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Ljava/net/ProxySelector;

    .line 384
    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/CookieJar;

    .line 385
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->k:Ljavax/net/SocketFactory;

    .line 386
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 387
    sget-object v0, Lokhttp3/CertificatePinner;->a:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/CertificatePinner;

    .line 388
    sget-object v0, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/Authenticator;

    .line 389
    sget-object v0, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/Authenticator;

    .line 390
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/ConnectionPool;

    .line 391
    sget-object v0, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->s:Lokhttp3/Dns;

    .line 392
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->t:Z

    .line 393
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->u:Z

    .line 394
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->v:Z

    .line 395
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 396
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 397
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 398
    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 434
    cmp-long v0, p1, v4

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_f
    if-nez p3, :cond_1a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1a
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 437
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_2e
    cmp-long v2, v0, v4

    if-nez v2, :cond_3f

    cmp-long v2, p1, v4

    if-lez v2, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_3f
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 440
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .registers 5

    .prologue
    .line 553
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_b
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/Platform;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 555
    if-nez v0, :cond_42

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to extract the trust manager on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_42
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 560
    invoke-static {v0}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 561
    return-object p0
.end method

.method public a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    return-object p0
.end method

.method public a()Lokhttp3/OkHttpClient;
    .registers 3

    .prologue
    .line 788
    new-instance v0, Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;Lokhttp3/OkHttpClient$1;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 448
    cmp-long v0, p1, v4

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_f
    if-nez p3, :cond_1a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1a
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 451
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_2e
    cmp-long v2, v0, v4

    if-nez v2, :cond_3f

    cmp-long v2, p1, v4

    if-lez v2, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_3f
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 454
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 462
    cmp-long v0, p1, v4

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_f
    if-nez p3, :cond_1a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_1a
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 465
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_2e
    cmp-long v2, v0, v4

    if-nez v2, :cond_3f

    cmp-long v2, p1, v4

    if-lez v2, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_3f
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 468
    return-object p0
.end method
