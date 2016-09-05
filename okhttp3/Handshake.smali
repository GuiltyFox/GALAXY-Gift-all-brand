.class public final Lokhttp3/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final a:Lokhttp3/TlsVersion;

.field private final b:Lokhttp3/CipherSuite;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    .line 43
    iput-object p2, p0, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    .line 44
    iput-object p3, p0, Lokhttp3/Handshake;->c:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lokhttp3/Handshake;->d:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    .registers 6

    .prologue
    .line 49
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 50
    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_f
    invoke-static {v0}, Lokhttp3/CipherSuite;->a(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v2

    .line 53
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 54
    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_22
    invoke-static {v0}, Lokhttp3/TlsVersion;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v3

    .line 59
    :try_start_26
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_29
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_26 .. :try_end_29} :catch_40

    move-result-object v0

    .line 63
    :goto_2a
    if-eqz v0, :cond_43

    .line 64
    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    :goto_30
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_48

    .line 69
    invoke-static {v1}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 72
    :goto_3a
    new-instance v4, Lokhttp3/Handshake;

    invoke-direct {v4, v3, v2, v0, v1}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    .line 60
    :catch_40
    move-exception v0

    .line 61
    const/4 v0, 0x0

    goto :goto_2a

    .line 65
    :cond_43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_30

    .line 70
    :cond_48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3a
.end method


# virtual methods
.method public a()Lokhttp3/CipherSuite;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lokhttp3/Handshake;->c:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 120
    instance-of v1, p1, Lokhttp3/Handshake;

    if-nez v1, :cond_6

    .line 122
    :cond_5
    :goto_5
    return v0

    .line 121
    :cond_6
    check-cast p1, Lokhttp3/Handshake;

    .line 122
    iget-object v1, p0, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    iget-object v2, p1, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    iget-object v2, p1, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    .line 123
    invoke-virtual {v1, v2}, Lokhttp3/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lokhttp3/Handshake;->c:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/Handshake;->c:Ljava/util/List;

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lokhttp3/Handshake;->d:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/Handshake;->d:Ljava/util/List;

    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 129
    .line 130
    iget-object v0, p0, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->hashCode()I

    move-result v0

    :goto_a
    add-int/lit16 v0, v0, 0x20f

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    invoke-virtual {v1}, Lokhttp3/CipherSuite;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Handshake;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Handshake;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    return v0

    .line 130
    :cond_28
    const/4 v0, 0x0

    goto :goto_a
.end method
