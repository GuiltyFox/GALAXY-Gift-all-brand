.class public Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocket;
.implements Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;


# static fields
.field static a:Ljavax/net/ssl/SSLContext;

.field static final synthetic t:Z


# instance fields
.field b:Lcom/koushikdutta/async/AsyncSocket;

.field c:Lcom/koushikdutta/async/BufferedDataSink;

.field d:Z

.field e:Ljavax/net/ssl/SSLEngine;

.field f:Z

.field g:Ljavax/net/ssl/HostnameVerifier;

.field h:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

.field i:[Ljava/security/cert/X509Certificate;

.field j:Lcom/koushikdutta/async/callback/WritableCallback;

.field k:Lcom/koushikdutta/async/callback/DataCallback;

.field l:[Ljavax/net/ssl/TrustManager;

.field m:Z

.field n:Z

.field o:Ljava/lang/Exception;

.field final p:Lcom/koushikdutta/async/ByteBufferList;

.field final q:Lcom/koushikdutta/async/callback/DataCallback;

.field r:Lcom/koushikdutta/async/ByteBufferList;

.field s:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    const-class v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_35

    :goto_a
    sput-boolean v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->t:Z

    .line 61
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_37

    .line 62
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_18

    .line 65
    :catch_18
    move-exception v0

    .line 67
    :try_start_19
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Ljavax/net/ssl/SSLContext;

    .line 68
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;

    invoke-direct {v3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;-><init>()V

    aput-object v3, v1, v2

    .line 83
    sget-object v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_41

    .line 90
    :goto_34
    return-void

    :cond_35
    move v0, v1

    .line 30
    goto :goto_a

    .line 63
    :cond_37
    :try_start_37
    const-string/jumbo v0, "Default"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Ljavax/net/ssl/SSLContext;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_18

    goto :goto_34

    .line 85
    :catch_41
    move-exception v1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .registers 10

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Lcom/koushikdutta/async/ByteBufferList;

    .line 161
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->q:Lcom/koushikdutta/async/callback/DataCallback;

    .line 361
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    .line 125
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    .line 126
    iput-object p6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 127
    iput-boolean p7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->m:Z

    .line 128
    iput-object p5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->l:[Ljavax/net/ssl/TrustManager;

    .line 129
    iput-object p4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    .line 131
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->v:Ljava/lang/String;

    .line 132
    iput p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->u:I

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 134
    new-instance v0, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Lcom/koushikdutta/async/BufferedDataSink;

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->q:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    return-void
.end method

.method public static a(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
    .registers 16

    .prologue
    .line 101
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 102
    iput-object p7, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 103
    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;

    invoke-direct {v1, p7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    invoke-interface {p0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 110
    :try_start_16
    iget-object v1, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 111
    iget-object v1, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_24
    .catch Ljavax/net/ssl/SSLException; {:try_start_16 .. :try_end_24} :catch_25

    .line 115
    :goto_24
    return-void

    .line 112
    :catch_25
    move-exception v1

    .line 113
    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 420
    if-eqz v0, :cond_1f

    .line 421
    iput-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 422
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v2, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 423
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v1}, Lcom/koushikdutta/async/AsyncSocket;->a()V

    .line 424
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v1}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 425
    invoke-interface {v0, p1, v3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 432
    :cond_1e
    :goto_1e
    return-void

    .line 429
    :cond_1f
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_1e

    .line 431
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_1e
.end method

.method private a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 267
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_10

    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 272
    :cond_10
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_19

    .line 273
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 276
    :cond_19
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_27

    .line 277
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->q:Lcom/koushikdutta/async/callback/DataCallback;

    new-instance v4, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v4}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-interface {v0, p0, v4}, Lcom/koushikdutta/async/callback/DataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 281
    :cond_27
    :try_start_27
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->f:Z

    if-nez v0, :cond_f0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v4, :cond_3f

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v4, :cond_f0

    .line 282
    :cond_3f
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->m:Z

    if-eqz v0, :cond_cf

    .line 283
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->l:[Ljavax/net/ssl/TrustManager;

    .line 284
    if-nez v0, :cond_ff

    .line 285
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 286
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 287
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    move-object v6, v0

    .line 291
    :goto_5a
    array-length v7, v6

    move v4, v3

    move-object v5, v1

    :goto_5d
    if-ge v4, v7, :cond_fd

    aget-object v0, v6, v4
    :try_end_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_61} :catch_b4
    .catch Ljava/security/GeneralSecurityException; {:try_start_27 .. :try_end_61} :catch_f1
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_27 .. :try_end_61} :catch_f6

    .line 293
    :try_start_61
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 294
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    check-cast v1, [Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->i:[Ljava/security/cert/X509Certificate;

    .line 295
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->i:[Ljava/security/cert/X509Certificate;

    const-string/jumbo v8, "SSL"

    invoke-interface {v0, v1, v8}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->v:Ljava/lang/String;

    if-eqz v0, :cond_9f

    .line 297
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_bb

    .line 298
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->v:Ljava/lang/String;

    iget-object v8, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->i:[Ljava/security/cert/X509Certificate;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->i:[Ljava/security/cert/X509Certificate;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v1, v8, v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/security/GeneralSecurityException; {:try_start_61 .. :try_end_9f} :catch_c9
    .catch Ljavax/net/ssl/SSLException; {:try_start_61 .. :try_end_9f} :catch_fb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_61 .. :try_end_9f} :catch_b4
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_61 .. :try_end_9f} :catch_f6

    :cond_9f
    :goto_9f
    move v0, v2

    .line 315
    :goto_a0
    const/4 v1, 0x1

    :try_start_a1
    iput-boolean v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->f:Z

    .line 316
    if-nez v0, :cond_d2

    .line 317
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLException;

    invoke-direct {v0, v5}, Lcom/koushikdutta/async/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    .line 318
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljava/lang/Exception;)V

    .line 319
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSSLException;->a()Z

    move-result v1

    if-nez v1, :cond_d2

    .line 320
    throw v0
    :try_end_b4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a1 .. :try_end_b4} :catch_b4
    .catch Ljava/security/GeneralSecurityException; {:try_start_a1 .. :try_end_b4} :catch_f1
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_a1 .. :try_end_b4} :catch_f6

    .line 342
    :catch_b4
    move-exception v0

    .line 343
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 302
    :cond_bb
    :try_start_bb
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->g:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->v:Ljava/lang/String;

    iget-object v8, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v0, v1, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    :try_end_c8
    .catch Ljava/security/GeneralSecurityException; {:try_start_bb .. :try_end_c8} :catch_c9
    .catch Ljavax/net/ssl/SSLException; {:try_start_bb .. :try_end_c8} :catch_fb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bb .. :try_end_c8} :catch_b4
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_bb .. :try_end_c8} :catch_f6

    goto :goto_9f

    .line 308
    :catch_c9
    move-exception v0

    .line 291
    :goto_ca
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v5, v0

    goto :goto_5d

    .line 324
    :cond_cf
    const/4 v0, 0x1

    :try_start_d0
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->f:Z

    .line 326
    :cond_d2
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->h:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 329
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 332
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 339
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e()V
    :try_end_f0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d0 .. :try_end_f0} :catch_b4
    .catch Ljava/security/GeneralSecurityException; {:try_start_d0 .. :try_end_f0} :catch_f1
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_d0 .. :try_end_f0} :catch_f6

    .line 351
    :cond_f0
    :goto_f0
    return-void

    .line 345
    :catch_f1
    move-exception v0

    .line 346
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljava/lang/Exception;)V

    goto :goto_f0

    .line 348
    :catch_f6
    move-exception v0

    .line 349
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljava/lang/Exception;)V

    goto :goto_f0

    .line 311
    :catch_fb
    move-exception v0

    goto :goto_ca

    :cond_fd
    move v0, v3

    goto :goto_a0

    :cond_ff
    move-object v6, v0

    goto/16 :goto_5a
.end method

.method public static c()Ljavax/net/ssl/SSLContext;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method


# virtual methods
.method a(I)I
    .registers 3

    .prologue
    .line 355
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 356
    if-nez v0, :cond_8

    .line 357
    const/16 v0, 0x2000

    .line 358
    :cond_8
    return v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->a()V

    .line 256
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Z

    if-eqz v0, :cond_6

    .line 406
    :cond_5
    :goto_5
    return-void

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->c()I

    move-result v0

    if-gtz v0, :cond_5

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Z

    .line 371
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v3

    .line 376
    :goto_1e
    iget-boolean v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->f:Z

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    if-nez v1, :cond_2f

    .line 404
    :cond_28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->w:Z

    .line 405
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_5

    .line 378
    :cond_2f
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    .line 380
    :try_start_33
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->b()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 381
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v4, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 382
    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/ByteBufferList;->a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 383
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 384
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 385
    sget-boolean v4, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->t:Z

    if-nez v4, :cond_7b

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v4

    if-eqz v4, :cond_7b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_5a
    .catch Ljavax/net/ssl/SSLException; {:try_start_33 .. :try_end_5a} :catch_5a

    .line 399
    :catch_5a
    move-exception v4

    .line 400
    :goto_5b
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljava/lang/Exception;)V

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    .line 403
    :goto_61
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v4

    if-ne v2, v4, :cond_71

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v4, :cond_28

    :cond_71
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v2}, Lcom/koushikdutta/async/BufferedDataSink;->c()I

    move-result v2

    if-nez v2, :cond_28

    move-object v2, v1

    goto :goto_1e

    .line 386
    :cond_7b
    :try_start_7b
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v4

    if-lez v4, :cond_8a

    .line 387
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 388
    :cond_8a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I
    :try_end_8d
    .catch Ljavax/net/ssl/SSLException; {:try_start_7b .. :try_end_8d} :catch_5a

    move-result v0

    .line 390
    :try_start_8e
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_a1

    .line 391
    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 392
    const/4 v1, -0x1

    :goto_9d
    move-object v6, v2

    move v2, v1

    move-object v1, v6

    .line 401
    goto :goto_61

    .line 395
    :cond_a1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;
    :try_end_ac
    .catch Ljavax/net/ssl/SSLException; {:try_start_8e .. :try_end_ac} :catch_b5

    move-result-object v0

    .line 396
    :try_start_ad
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_b4
    .catch Ljavax/net/ssl/SSLException; {:try_start_ad .. :try_end_b4} :catch_5a

    goto :goto_9d

    .line 399
    :catch_b5
    move-exception v0

    move-object v4, v0

    move-object v0, v3

    goto :goto_5b
.end method

.method a(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V
    .registers 4

    .prologue
    .line 243
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 244
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 245
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 250
    :goto_c
    return-void

    .line 248
    :cond_d
    invoke-static {p2}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_c
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 462
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->k:Lcom/koushikdutta/async/callback/DataCallback;

    .line 437
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 411
    return-void
.end method

.method public b()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public b(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 472
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->s:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 473
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 457
    return-void
.end method

.method public d_()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->k:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public e()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 232
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->n:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->s:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1c

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->s:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->o:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 234
    :cond_1c
    return-void
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public h()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->s:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->i()Z

    move-result v0

    return v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->j()V

    .line 483
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->k()V

    .line 488
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e()V

    .line 489
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->l()Z

    move-result v0

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 518
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/koushikdutta/async/AsyncSocket;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->b:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method
