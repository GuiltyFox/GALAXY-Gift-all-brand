.class public Lcom/bzbs/lib/http/okhttp/SslTrustFactory;
.super Ljava/lang/Object;
.source "SslTrustFactory.java"


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/SslTrustFactory;->a:Ljava/io/InputStream;

    .line 21
    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 28
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private b(Ljava/io/InputStream;)Ljavax/net/ssl/SSLContext;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 35
    :try_start_1
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_43

    move-result-object v0

    .line 38
    :try_start_8
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3e

    move-result-object v0

    .line 41
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 45
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 47
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 48
    const-string/jumbo v3, "ca"

    invoke-virtual {v2, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 51
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 56
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 62
    :goto_3d
    return-object v0

    .line 41
    :catchall_3e
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_43

    .line 59
    :catch_43
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 62
    goto :goto_3d
.end method


# virtual methods
.method public a()Ljavax/net/ssl/SSLContext;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/SslTrustFactory;->a:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/http/okhttp/SslTrustFactory;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bzbs/lib/http/okhttp/SslTrustFactory;->b(Ljava/io/InputStream;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method
