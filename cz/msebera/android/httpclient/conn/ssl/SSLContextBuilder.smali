.class public Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->b:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->c:Ljava/util/Set;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public a(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 104
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 105
    if-eqz v3, :cond_38

    .line 106
    if-eqz p2, :cond_2b

    move v1, v2

    .line 107
    :goto_15
    array-length v0, v3

    if-ge v1, v0, :cond_2b

    .line 108
    aget-object v0, v3, v1

    .line 109
    instance-of v4, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_27

    .line 110
    new-instance v4, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v4, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;-><init>(Ljavax/net/ssl/X509TrustManager;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)V

    aput-object v4, v3, v1

    .line 107
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 115
    :cond_2b
    array-length v0, v3

    :goto_2c
    if-ge v2, v0, :cond_38

    aget-object v1, v3, v2

    .line 116
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->c:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 119
    :cond_38
    return-object p0
.end method

.method public a(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 4

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;[CLcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    .line 132
    return-object p0
.end method

.method public a(Ljava/security/KeyStore;[CLcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 143
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_38

    .line 145
    if-eqz p3, :cond_2b

    move v1, v2

    .line 146
    :goto_15
    array-length v0, v3

    if-ge v1, v0, :cond_2b

    .line 147
    aget-object v0, v3, v1

    .line 148
    instance-of v4, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_27

    .line 149
    new-instance v4, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v4, v0, p3}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;-><init>(Ljavax/net/ssl/X509KeyManager;Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)V

    aput-object v4, v3, v1

    .line 146
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 154
    :cond_2b
    array-length v0, v3

    :goto_2c
    if-ge v2, v0, :cond_38

    aget-object v1, v3, v2

    .line 155
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->b:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 158
    :cond_38
    return-object p0
.end method

.method public a(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->d:Ljava/security/SecureRandom;

    .line 95
    return-object p0
.end method

.method public a()Ljavax/net/ssl/SSLContext;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a:Ljava/lang/String;

    :goto_7
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 164
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->b:Ljava/util/Set;

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->b:Ljava/util/Set;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    move-object v1, v0

    :goto_24
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->c:Ljava/util/Set;

    .line 166
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->c:Ljava/util/Set;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/TrustManager;

    :goto_3c
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->d:Ljava/security/SecureRandom;

    .line 164
    invoke-virtual {v3, v1, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 168
    return-object v3

    .line 162
    :cond_42
    const-string/jumbo v0, "TLS"

    goto :goto_7

    :cond_46
    move-object v1, v2

    .line 165
    goto :goto_24

    :cond_48
    move-object v0, v2

    .line 166
    goto :goto_3c
.end method
