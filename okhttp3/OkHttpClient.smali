.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/Dispatcher;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
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

.field final g:Ljava/net/ProxySelector;

.field final h:Lokhttp3/CookieJar;

.field final i:Lokhttp3/Cache;

.field final j:Lokhttp3/internal/InternalCache;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lokhttp3/internal/tls/CertificateChainCleaner;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lokhttp3/CertificatePinner;

.field final p:Lokhttp3/Authenticator;

.field final q:Lokhttp3/Authenticator;

.field final r:Lokhttp3/ConnectionPool;

.field final s:Lokhttp3/Dns;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    aput-object v1, v0, v2

    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->z:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v2, [Lokhttp3/ConnectionSpec;

    sget-object v2, Lokhttp3/ConnectionSpec;->a:Lokhttp3/ConnectionSpec;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/ConnectionSpec;->b:Lokhttp3/ConnectionSpec;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/Platform;->a()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 74
    sget-object v1, Lokhttp3/ConnectionSpec;->c:Lokhttp3/ConnectionSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3a
    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->A:Ljava/util/List;

    .line 78
    new-instance v0, Lokhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 161
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 162
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 166
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->b:Ljava/net/Proxy;

    .line 167
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 168
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    .line 169
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    .line 170
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    .line 171
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->g:Ljava/net/ProxySelector;

    .line 172
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->h:Lokhttp3/CookieJar;

    .line 173
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->i:Lokhttp3/Cache;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    .line 174
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->j:Lokhttp3/internal/InternalCache;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/internal/InternalCache;

    .line 175
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->k:Ljavax/net/SocketFactory;

    .line 178
    iget-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ConnectionSpec;

    .line 179
    if-nez v1, :cond_53

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_53
    const/4 v0, 0x1

    :goto_54
    move v1, v0

    .line 180
    goto :goto_3f

    :cond_56
    move v0, v2

    .line 179
    goto :goto_54

    .line 182
    :cond_58
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_5e

    if-nez v1, :cond_9d

    .line 183
    :cond_5e
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 184
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 191
    :goto_66
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 192
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/CertificatePinner;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lokhttp3/CertificatePinner;->a(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/CertificatePinner;

    .line 194
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->p:Lokhttp3/Authenticator;

    .line 195
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Lokhttp3/Authenticator;

    .line 196
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->r:Lokhttp3/ConnectionPool;

    .line 197
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->s:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->s:Lokhttp3/Dns;

    .line 198
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->t:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->t:Z

    .line 199
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->u:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->u:Z

    .line 200
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->v:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->v:Z

    .line 201
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->w:I

    iput v0, p0, Lokhttp3/OkHttpClient;->w:I

    .line 202
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->x:I

    iput v0, p0, Lokhttp3/OkHttpClient;->x:I

    .line 203
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->y:I

    iput v0, p0, Lokhttp3/OkHttpClient;->y:I

    .line 204
    return-void

    .line 186
    :cond_9d
    invoke-direct {p0}, Lokhttp3/OkHttpClient;->z()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 187
    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 188
    invoke-static {v0}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_66
.end method

.method synthetic constructor <init>(Lokhttp3/OkHttpClient$Builder;Lokhttp3/OkHttpClient$1;)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    .prologue
    .line 224
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 225
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 226
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_15
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    return-object v0

    .line 227
    :catch_17
    move-exception v0

    .line 228
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic x()Ljava/util/List;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lokhttp3/OkHttpClient;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic y()Ljava/util/List;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lokhttp3/OkHttpClient;->A:Ljava/util/List;

    return-object v0
.end method

.method private z()Ljavax/net/ssl/X509TrustManager;
    .registers 5

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 210
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 211
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 212
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_42

    .line 213
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3b} :catch_3b

    .line 217
    :catch_3b
    move-exception v0

    .line 218
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 216
    :cond_42
    const/4 v1, 0x0

    :try_start_43
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_47
    .catch Ljava/security/GeneralSecurityException; {:try_start_43 .. :try_end_47} :catch_3b

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lokhttp3/OkHttpClient;->w:I

    return v0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Call;
    .registers 3

    .prologue
    .line 345
    new-instance v0, Lokhttp3/RealCall;

    invoke-direct {v0, p0, p1}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lokhttp3/OkHttpClient;->x:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lokhttp3/OkHttpClient;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lokhttp3/OkHttpClient;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lokhttp3/OkHttpClient;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lokhttp3/CookieJar;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lokhttp3/OkHttpClient;->h:Lokhttp3/CookieJar;

    return-object v0
.end method

.method g()Lokhttp3/internal/InternalCache;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    iget-object v0, v0, Lokhttp3/Cache;->a:Lokhttp3/internal/InternalCache;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/internal/InternalCache;

    goto :goto_8
.end method

.method public h()Lokhttp3/Dns;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lokhttp3/OkHttpClient;->s:Lokhttp3/Dns;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lokhttp3/OkHttpClient;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lokhttp3/OkHttpClient;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lokhttp3/CertificatePinner;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public m()Lokhttp3/Authenticator;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lokhttp3/OkHttpClient;->q:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public n()Lokhttp3/Authenticator;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lokhttp3/OkHttpClient;->p:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public o()Lokhttp3/ConnectionPool;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lokhttp3/OkHttpClient;->r:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->t:Z

    return v0
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->u:Z

    return v0
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->v:Z

    return v0
.end method

.method public s()Lokhttp3/Dispatcher;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    return-object v0
.end method
