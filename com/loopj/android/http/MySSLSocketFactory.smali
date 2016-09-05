.class public Lcom/loopj/android/http/MySSLSocketFactory;
.super Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
.source "MySSLSocketFactory.java"


# instance fields
.field final sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 59
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 73
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/MySSLSocketFactory$1;-><init>(Lcom/loopj/android/http/MySSLSocketFactory;)V

    .line 85
    iget-object v1, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 86
    return-void
.end method

.method public static getFixedSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 152
    :try_start_0
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getKeystore()Ljava/security/KeyStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 153
    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 158
    :goto_e
    return-object v0

    .line 154
    :catch_f
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_e
.end method

.method public static getKeystore()Ljava/security/KeyStore;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 136
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v0

    .line 137
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_17

    .line 141
    :goto_e
    return-object v0

    .line 138
    :catch_f
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 139
    :goto_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 138
    :catch_17
    move-exception v1

    goto :goto_13
.end method

.method public static getKeystoreOfCA(Ljava/io/InputStream;)Ljava/security/KeyStore;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 97
    .line 100
    :try_start_1
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 101
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_d} :catch_30
    .catchall {:try_start_1 .. :try_end_d} :catchall_42

    .line 102
    :try_start_d
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_10
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_10} :catch_5e
    .catchall {:try_start_d .. :try_end_10} :catchall_5b

    move-result-object v0

    .line 107
    if-eqz v2, :cond_16

    .line 108
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_2b

    .line 116
    :cond_16
    :goto_16
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    .line 119
    :try_start_1a
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_4e

    move-result-object v1

    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_20
    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 121
    const-string/jumbo v2, "ca"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_56

    move-object v0, v1

    .line 125
    :goto_2a
    return-object v0

    .line 110
    :catch_2b
    move-exception v2

    .line 111
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 103
    :catch_30
    move-exception v0

    move-object v2, v1

    .line 104
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5b

    .line 107
    if-eqz v2, :cond_3a

    .line 108
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3c

    :cond_3a
    move-object v0, v1

    .line 112
    goto :goto_16

    .line 110
    :catch_3c
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 113
    goto :goto_16

    .line 106
    :catchall_42
    move-exception v0

    .line 107
    :goto_43
    if-eqz v1, :cond_48

    .line 108
    :try_start_45
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 112
    :cond_48
    :goto_48
    throw v0

    .line 110
    :catch_49
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 122
    :catch_4e
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 123
    :goto_52
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    .line 122
    :catch_56
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_52

    .line 106
    :catchall_5b
    move-exception v0

    move-object v1, v2

    goto :goto_43

    .line 103
    :catch_5e
    move-exception v0

    goto :goto_32
.end method

.method public static getNewHttpClient(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    .registers 7

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 171
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 172
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->a()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 173
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 175
    new-instance v2, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 176
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->c:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 177
    const-string/jumbo v0, "UTF-8"

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    .line 179
    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 181
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    .line 183
    :goto_42
    return-object v0

    .line 182
    :catch_43
    move-exception v0

    .line 183
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_42
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public fixHttpsURLConnection()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 202
    return-void
.end method
