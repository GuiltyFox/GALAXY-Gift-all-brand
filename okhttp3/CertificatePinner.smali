.class public final Lokhttp3/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# static fields
.field public static final a:Lokhttp3/CertificatePinner;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lokhttp3/internal/tls/CertificateChainCleaner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->a()Lokhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lokhttp3/CertificatePinner;->a:Lokhttp3/CertificatePinner;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lokhttp3/internal/tls/CertificateChainCleaner;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;",
            "Lokhttp3/internal/tls/CertificateChainCleaner;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lokhttp3/CertificatePinner;->b:Ljava/util/List;

    .line 132
    iput-object p2, p0, Lokhttp3/CertificatePinner;->c:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lokhttp3/internal/tls/CertificateChainCleaner;Lokhttp3/CertificatePinner$1;)V
    .registers 4

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/List;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    return-void
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_d

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lokhttp3/CertificatePinner;->b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->b(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 202
    iget-object v0, p0, Lokhttp3/CertificatePinner;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/CertificatePinner$Pin;

    .line 203
    invoke-virtual {v0, p1}, Lokhttp3/CertificatePinner$Pin;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 204
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :cond_27
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 208
    :cond_2b
    return-object v1
.end method

.method a(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, Lokhttp3/CertificatePinner;->c:Lokhttp3/internal/tls/CertificateChainCleaner;

    if-eq v0, p1, :cond_c

    new-instance v0, Lokhttp3/CertificatePinner;

    iget-object v1, p0, Lokhttp3/CertificatePinner;->b:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/List;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    move-object p0, v0

    :cond_c
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lokhttp3/CertificatePinner;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 146
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 166
    :cond_c
    :goto_c
    return-void

    .line 148
    :cond_d
    iget-object v0, p0, Lokhttp3/CertificatePinner;->c:Lokhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v0, :cond_17

    .line 149
    iget-object v0, p0, Lokhttp3/CertificatePinner;->c:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 152
    :cond_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    move v7, v4

    :goto_1c
    if-ge v7, v9, :cond_78

    .line 153
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 159
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move v5, v4

    move-object v2, v6

    move-object v3, v6

    :goto_2b
    if-ge v5, v10, :cond_74

    .line 160
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/CertificatePinner$Pin;

    .line 161
    iget-object v11, v1, Lokhttp3/CertificatePinner$Pin;->b:Ljava/lang/String;

    const-string/jumbo v12, "sha256/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 162
    if-nez v2, :cond_44

    invoke-static {v0}, Lokhttp3/CertificatePinner;->b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v2

    .line 163
    :cond_44
    iget-object v1, v1, Lokhttp3/CertificatePinner$Pin;->c:Lokio/ByteString;

    invoke-virtual {v1, v2}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_4c
    move-object v1, v2

    move-object v2, v3

    .line 159
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2b

    .line 164
    :cond_54
    iget-object v11, v1, Lokhttp3/CertificatePinner$Pin;->b:Ljava/lang/String;

    const-string/jumbo v12, "sha1/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6e

    .line 165
    if-nez v3, :cond_65

    invoke-static {v0}, Lokhttp3/CertificatePinner;->a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v3

    .line 166
    :cond_65
    iget-object v1, v1, Lokhttp3/CertificatePinner$Pin;->c:Lokio/ByteString;

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_c

    .line 168
    :cond_6e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_74
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1c

    .line 174
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Certificate pinning failure!"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n  Peer certificate chain:"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v4

    :goto_90
    if-ge v1, v3, :cond_bd

    .line 178
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 179
    const-string/jumbo v5, "\n    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lokhttp3/CertificatePinner;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_90

    .line 182
    :cond_bd
    const-string/jumbo v0, "\n  Pinned certificates for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    move v1, v4

    :goto_d3
    if-ge v1, v3, :cond_e9

    .line 184
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/CertificatePinner$Pin;

    .line 185
    const-string/jumbo v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d3

    .line 187
    :cond_e9
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
