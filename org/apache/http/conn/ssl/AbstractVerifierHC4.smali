.class public abstract Lorg/apache/http/conn/ssl/AbstractVerifierHC4;
.super Ljava/lang/Object;
.source "AbstractVerifierHC4.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 81
    sget-object v0, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 6
    .param p0, "cn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 242
    const-string/jumbo v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_16

    .line 246
    :cond_15
    :goto_15
    return v1

    :cond_16
    sget-object v2, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_15

    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static countDots(Ljava/lang/String;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 355
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    .line 356
    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 359
    :cond_15
    return v0
.end method

.method static extractCNs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "subjectPrincipal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 267
    if-nez p0, :cond_4

    .line 283
    :cond_3
    :goto_3
    return-object v6

    .line 270
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v2, "cns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->INSTANCE:Lorg/apache/http/conn/ssl/DistinguishedNameParser;

    invoke-virtual {v7, p0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 272
    .local v5, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_53

    .line 273
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 274
    .local v4, "nvp":Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "attribName":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "attribValue":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 277
    new-instance v6, Ljavax/net/ssl/SSLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not a valid X500 distinguished name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :cond_44
    const-string/jumbo v7, "cn"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 280
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 283
    .end local v0    # "attribName":Ljava/lang/String;
    .end local v1    # "attribValue":Ljava/lang/String;
    .end local v4    # "nvp":Lorg/apache/http/NameValuePair;
    :cond_53
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "subjectPrincipal":Ljava/lang/String;
    :try_start_8
    invoke-static {v1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->extractCNs(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    .line 262
    :goto_c
    return-object v2

    .line 261
    :catch_d
    move-exception v0

    .line 262
    .local v0, "ex":Ljavax/net/ssl/SSLException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->isIPAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 298
    const/4 v7, 0x7

    .line 303
    .local v7, "subjectType":I
    :goto_7
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 304
    .local v5, "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 306
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_d
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_10
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_d .. :try_end_10} :catch_50

    move-result-object v1

    .line 310
    :goto_11
    if-eqz v1, :cond_3e

    .line 311
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 312
    .local v0, "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v3, v0

    .line 313
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 314
    .local v8, "type":I
    if-ne v8, v7, :cond_17

    .line 315
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 300
    .end local v0    # "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v7    # "subjectType":I
    .end local v8    # "type":I
    :cond_3c
    const/4 v7, 0x2

    .restart local v7    # "subjectType":I
    goto :goto_7

    .line 320
    .restart local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .restart local v5    # "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_3e
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4e

    .line 321
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    .line 322
    .local v6, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 325
    .end local v6    # "subjectAlts":[Ljava/lang/String;
    :goto_4d
    return-object v6

    :cond_4e
    const/4 v6, 0x0

    goto :goto_4d

    .line 308
    :catch_50
    move-exception v9

    goto :goto_11
.end method

.method private static isIPAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 363
    if-eqz p0, :cond_10

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private normaliseIPv6Address(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 372
    if-eqz p1, :cond_8

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 380
    .end local p1    # "hostname":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p1

    .line 376
    .restart local p1    # "hostname":Ljava/lang/String;
    :cond_9
    :try_start_9
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 377
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-object p1

    goto :goto_8

    .line 378
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :catch_12
    move-exception v1

    .line 379
    .local v1, "uhe":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "HttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected error converting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method


# virtual methods
.method validCountryWildcard(Ljava/lang/String;)Z
    .registers 7
    .param p1, "cn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 250
    const-string/jumbo v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_16

    .line 254
    :cond_15
    :goto_15
    return v1

    :cond_16
    sget-object v2, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_15

    const/4 v1, 0x0

    goto :goto_15
.end method

.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "cns":[Ljava/lang/String;
    invoke-static {p2, p1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ssl"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_b

    .line 93
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "host to verify is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_b
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 97
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    if-nez v2, :cond_25

    .line 101
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 102
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 121
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 122
    if-nez v2, :cond_25

    .line 125
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 129
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 133
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_25
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 134
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    aget-object v3, v0, v4

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 135
    .local v3, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v3}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 136
    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 27
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .param p4, "strictWithSubDomains"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 167
    .local v14, "names":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1d

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_1d

    const/16 v19, 0x0

    aget-object v19, p2, v19

    if-eqz v19, :cond_1d

    .line 168
    const/16 v19, 0x0

    aget-object v19, p2, v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1d
    if-eqz p3, :cond_31

    .line 171
    move-object/from16 v2, p3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_23
    if-ge v9, v11, :cond_31

    aget-object v17, v2, v9

    .line 172
    .local v17, "subjectAlt":Ljava/lang/String;
    if-eqz v17, :cond_2e

    .line 173
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 178
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v17    # "subjectAlt":Ljava/lang/String;
    :cond_31
    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5e

    .line 179
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate for <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "msg":Ljava/lang/String;
    new-instance v19, Ljavax/net/ssl/SSLException;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 184
    .end local v13    # "msg":Ljava/lang/String;
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->normaliseIPv6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "hostName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 190
    .local v12, "match":Z
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13a

    .line 192
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 193
    .local v4, "cn":Ljava/lang/String;
    sget-object v19, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 195
    const-string/jumbo v19, " <"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/16 v19, 0x3e

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_ae

    .line 199
    const-string/jumbo v19, " OR"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_ae
    const-string/jumbo v19, "\\."

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 206
    .local v15, "parts":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_167

    const/16 v19, 0x0

    aget-object v19, v15, v19

    const-string/jumbo v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_167

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->validCountryWildcard(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_167

    invoke-static/range {p1 .. p1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->isIPAddress(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_167

    const/4 v5, 0x1

    .line 210
    .local v5, "doWildcard":Z
    :goto_de
    if-eqz v5, :cond_17d

    .line 211
    const/16 v19, 0x0

    aget-object v6, v15, v19

    .line 212
    .local v6, "firstpart":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_16c

    .line 213
    const/16 v19, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 214
    .local v16, "prefix":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 215
    .local v18, "suffix":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "hostSuffix":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16a

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16a

    const/4 v12, 0x1

    .line 220
    .end local v8    # "hostSuffix":Ljava/lang/String;
    .end local v16    # "prefix":Ljava/lang/String;
    .end local v18    # "suffix":Ljava/lang/String;
    :goto_125
    if-eqz v12, :cond_138

    if-eqz p4, :cond_138

    .line 223
    invoke-static {v7}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->countDots(Ljava/lang/String;)I

    move-result v19

    invoke-static {v4}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->countDots(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17b

    const/4 v12, 0x1

    .line 228
    .end local v6    # "firstpart":Ljava/lang/String;
    :cond_138
    :goto_138
    if-eqz v12, :cond_7a

    .line 232
    .end local v4    # "cn":Ljava/lang/String;
    .end local v5    # "doWildcard":Z
    .end local v15    # "parts":[Ljava/lang/String;
    :cond_13a
    if-nez v12, :cond_18a

    .line 233
    new-instance v19, Ljavax/net/ssl/SSLException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "hostname in certificate didn\'t match: <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "> !="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 206
    .restart local v4    # "cn":Ljava/lang/String;
    .restart local v15    # "parts":[Ljava/lang/String;
    :cond_167
    const/4 v5, 0x0

    goto/16 :goto_de

    .line 216
    .restart local v5    # "doWildcard":Z
    .restart local v6    # "firstpart":Ljava/lang/String;
    .restart local v8    # "hostSuffix":Ljava/lang/String;
    .restart local v16    # "prefix":Ljava/lang/String;
    .restart local v18    # "suffix":Ljava/lang/String;
    :cond_16a
    const/4 v12, 0x0

    goto :goto_125

    .line 218
    .end local v8    # "hostSuffix":Ljava/lang/String;
    .end local v16    # "prefix":Ljava/lang/String;
    .end local v18    # "suffix":Ljava/lang/String;
    :cond_16c
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    goto :goto_125

    .line 223
    :cond_17b
    const/4 v12, 0x0

    goto :goto_138

    .line 226
    .end local v6    # "firstpart":Ljava/lang/String;
    :cond_17d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->normaliseIPv6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_138

    .line 235
    .end local v4    # "cn":Ljava/lang/String;
    .end local v5    # "doWildcard":Z
    .end local v15    # "parts":[Ljava/lang/String;
    :cond_18a
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v3, 0x0

    .line 140
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 141
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 142
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_f

    .line 143
    const/4 v3, 0x1

    .line 146
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "x509":Ljava/security/cert/X509Certificate;
    :goto_e
    return v3

    .line 145
    :catch_f
    move-exception v1

    .line 146
    .local v1, "e":Ljavax/net/ssl/SSLException;
    goto :goto_e
.end method
