.class final Lokhttp3/internal/Jdk9Platform;
.super Lokhttp3/internal/Platform;
.source "Jdk9Platform.java"


# instance fields
.field final a:Ljava/lang/reflect/Method;

.field final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/Platform;-><init>()V

    .line 35
    iput-object p1, p0, Lokhttp3/internal/Jdk9Platform;->a:Ljava/lang/reflect/Method;

    .line 36
    iput-object p2, p0, Lokhttp3/internal/Jdk9Platform;->b:Ljava/lang/reflect/Method;

    .line 37
    return-void
.end method

.method public static b()Lokhttp3/internal/Jdk9Platform;
    .registers 5

    .prologue
    .line 85
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-string/jumbo v1, "setApplicationProtocols"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 87
    const-class v0, Ljavax/net/ssl/SSLSocket;

    const-string/jumbo v2, "getApplicationProtocol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    new-instance v0, Lokhttp3/internal/Jdk9Platform;

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_22} :catch_23

    .line 94
    :goto_22
    return-object v0

    .line 90
    :catch_23
    move-exception v0

    .line 94
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/Jdk9Platform;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    if-eqz v0, :cond_16

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_1f

    move-result v1

    if-eqz v1, :cond_17

    .line 64
    :cond_16
    const/4 v0, 0x0

    .line 67
    :cond_17
    return-object v0

    .line 68
    :catch_18
    move-exception v0

    .line 69
    :goto_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :catch_1f
    move-exception v0

    goto :goto_19
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 4

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 45
    invoke-static {p3}, Lokhttp3/internal/Jdk9Platform;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lokhttp3/internal/Jdk9Platform;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    .line 47
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_20} :catch_28

    .line 54
    return-void

    .line 51
    :catch_21
    move-exception v0

    .line 52
    :goto_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :catch_28
    move-exception v0

    goto :goto_22
.end method
