.class public Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "ConscryptMiddleware.java"


# static fields
.field static final a:Ljava/lang/Object;

.field static b:Z

.field static c:Z


# instance fields
.field d:Z

.field e:Z

.field f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

.field g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;)V
    .registers 4

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->e:Z

    .line 107
    iput-object p2, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->g:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 38
    :try_start_0
    sget-object v1, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1d

    .line 39
    :try_start_3
    sget-boolean v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->b:Z

    if-eqz v0, :cond_9

    .line 40
    monitor-exit v1

    .line 77
    :goto_8
    return-void

    .line 42
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->b:Z

    .line 45
    const-string/jumbo v0, "GmsCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->c:Z

    .line 47
    monitor-exit v1

    goto :goto_8

    .line 73
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 75
    :catch_1d
    move-exception v0

    goto :goto_8

    .line 50
    :cond_1f
    :try_start_1f
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 51
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1a

    move-result-object v2

    .line 53
    :try_start_27
    const-string/jumbo v3, "com.google.android.gms.security.ProviderInstaller"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 54
    const-string/jumbo v4, "installIfNeeded"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 55
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_47} :catch_67
    .catchall {:try_start_27 .. :try_end_47} :catchall_1a

    .line 66
    :goto_47
    :try_start_47
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 67
    const-string/jumbo v4, "GmsCore_OpenSSL"

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    .line 68
    const-string/jumbo v5, "GmsCore_OpenSSL"

    invoke-static {v5}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 69
    array-length v3, v3

    invoke-static {v4, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 70
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->setDefault(Ljavax/net/ssl/SSLContext;)V

    .line 71
    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->c:Z

    .line 73
    monitor-exit v1

    goto :goto_8

    .line 57
    :catch_67
    move-exception v3

    .line 58
    const-string/jumbo v3, "com.google.android.gms"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.gms.common.security.ProviderInstallerImpl"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "insertProvider"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_47 .. :try_end_94} :catchall_1a

    goto :goto_47
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 3

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->e:Z

    if-nez v0, :cond_6

    .line 114
    const/4 v0, 0x0

    .line 118
    :goto_5
    return-object v0

    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->a()V

    .line 118
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/SimpleMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    goto :goto_5
.end method

.method public a()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->a(Landroid/content/Context;)V

    .line 83
    sget-boolean v1, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->c:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->d:Z

    if-nez v1, :cond_3f

    iget-boolean v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->e:Z

    if-eqz v1, :cond_3f

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->d:Z

    .line 88
    :try_start_15
    const-string/jumbo v1, "TLS"

    const-string/jumbo v2, "GmsCore_OpenSSL"

    invoke-static {v1, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_42

    move-result-object v0

    .line 92
    :goto_1f
    if-nez v0, :cond_28

    .line 93
    :try_start_21
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 94
    :cond_28
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 96
    iget-object v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-static {}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    if-ne v1, v2, :cond_3f

    .line 97
    iget-object v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->f:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Ljavax/net/ssl/SSLContext;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_40

    .line 102
    :cond_3f
    :goto_3f
    return-void

    .line 99
    :catch_40
    move-exception v0

    goto :goto_3f

    .line 90
    :catch_42
    move-exception v1

    goto :goto_1f
.end method
