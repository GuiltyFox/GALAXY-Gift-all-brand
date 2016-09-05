.class public abstract Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;
.super Ljava/lang/Object;
.source "AbstractVerifier.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


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

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->b:[Ljava/lang/String;

    .line 81
    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 88
    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :try_start_8
    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->b(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 262
    :goto_c
    return-object v0

    .line 261
    :catch_d
    move-exception v0

    .line 262
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 322
    const/4 v0, 0x7

    move v2, v0

    .line 327
    :goto_9
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 330
    :try_start_e
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_11
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_e .. :try_end_11} :catch_3f

    move-result-object v0

    .line 334
    :goto_12
    if-eqz v0, :cond_42

    .line 335
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 337
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 338
    if-ne v1, v2, :cond_18

    .line 339
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 324
    :cond_3c
    const/4 v0, 0x2

    move v2, v0

    goto :goto_9

    .line 332
    :catch_3f
    move-exception v0

    move-object v0, v3

    goto :goto_12

    .line 344
    :cond_42
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 345
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 346
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 349
    :goto_51
    return-object v0

    :cond_52
    move-object v0, v3

    goto :goto_51
.end method

.method static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 267
    if-nez p0, :cond_4

    .line 306
    :cond_3
    :goto_3
    return-object v0

    .line 270
    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 293
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_11
    :goto_11
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 295
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 296
    const-string/jumbo v4, "CN="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 297
    if-ltz v4, :cond_11

    .line 298
    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 301
    :cond_2e
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 303
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3
.end method

.method public static c(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 377
    move v1, v0

    .line 378
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    .line 380
    add-int/lit8 v1, v1, 0x1

    .line 378
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 383
    :cond_15
    return v1
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 387
    if-eqz p0, :cond_10

    .line 388
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 389
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->d(Ljava/lang/String;)Z

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

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 396
    if-eqz p1, :cond_8

    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 404
    :cond_8
    :goto_8
    return-object p1

    .line 400
    :cond_9
    :try_start_9
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-object p1

    goto :goto_8

    .line 402
    :catch_12
    move-exception v0

    .line 403
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected error converting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_8
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 5

    .prologue
    .line 152
    invoke-static {p2}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .registers 5

    .prologue
    .line 92
    if-nez p1, :cond_b

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host to verify is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_b
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 97
    if-nez v0, :cond_25

    .line 101
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 121
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 122
    if-nez v0, :cond_25

    .line 125
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 129
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 133
    :cond_25
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 135
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 136
    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 167
    if-eqz p2, :cond_15

    array-length v0, p2

    if-lez v0, :cond_15

    aget-object v0, p2, v1

    if-eqz v0, :cond_15

    .line 168
    aget-object v0, p2, v1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_15
    if-eqz p3, :cond_25

    .line 171
    array-length v4, p3

    move v0, v1

    :goto_19
    if-ge v0, v4, :cond_25

    aget-object v5, p3, v0

    .line 172
    if-eqz v5, :cond_22

    .line 173
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 178
    :cond_25
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Certificate for <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 195
    const-string/jumbo v0, " <"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/16 v0, 0x3e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 199
    const-string/jumbo v0, " OR"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_90
    const-string/jumbo v0, "\\."

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 206
    array-length v0, v7

    const/4 v8, 0x3

    if-lt v0, v8, :cond_11c

    aget-object v0, v7, v1

    const-string/jumbo v8, "*"

    .line 207
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 208
    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11c

    move v0, v2

    .line 210
    :goto_b3
    if-eqz v0, :cond_12b

    .line 211
    aget-object v0, v7, v1

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_120

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11e

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    move v0, v2

    .line 220
    :goto_e4
    if-eqz v0, :cond_f3

    if-eqz p4, :cond_f3

    .line 223
    invoke-static {v5}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v6}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->c(Ljava/lang/String;)I

    move-result v6

    if-ne v0, v6, :cond_129

    move v0, v2

    .line 228
    :cond_f3
    :goto_f3
    if-eqz v0, :cond_64

    .line 232
    :cond_f5
    if-nez v0, :cond_134

    .line 233
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hostname in certificate didn\'t match: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> !="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11c
    move v0, v1

    .line 208
    goto :goto_b3

    :cond_11e
    move v0, v1

    .line 216
    goto :goto_e4

    .line 218
    :cond_120
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e4

    :cond_129
    move v0, v1

    .line 223
    goto :goto_f3

    .line 226
    :cond_12b
    invoke-direct {p0, v6}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f3

    .line 235
    :cond_134
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 250
    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_16

    .line 254
    :cond_15
    :goto_15
    return v0

    :cond_16
    sget-object v2, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 140
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 141
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 142
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_f

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_e
    return v0

    .line 145
    :catch_f
    move-exception v0

    move v0, v1

    .line 146
    goto :goto_e
.end method
