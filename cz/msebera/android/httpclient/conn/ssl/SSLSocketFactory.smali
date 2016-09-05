.class public Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private volatile hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 145
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 148
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 151
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)V
    .registers 4

    .prologue
    .line 306
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 306
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 5

    .prologue
    .line 294
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 294
    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V
    .registers 9

    .prologue
    .line 206
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p5}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p3, :cond_22

    .line 209
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_12
    invoke-virtual {v1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V

    .line 213
    return-void

    .line 209
    :cond_22
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 10

    .prologue
    .line 227
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p5}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p3, :cond_22

    .line 230
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_12
    invoke-virtual {v1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p4, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 227
    invoke-direct {p0, v0, p7}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 234
    return-void

    .line 230
    :cond_22
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 9

    .prologue
    .line 247
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p5}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p3, :cond_22

    .line 250
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_12
    invoke-virtual {v1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 247
    invoke-direct {p0, v0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 254
    return-void

    .line 250
    :cond_22
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 4

    .prologue
    .line 281
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 281
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 272
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p2, :cond_18

    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_a
    invoke-virtual {v1, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 272
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 276
    return-void

    .line 273
    :cond_18
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .registers 6

    .prologue
    .line 261
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p2, :cond_1c

    .line 262
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_a
    invoke-virtual {v1, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p3}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 261
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 266
    return-void

    .line 262
    :cond_1c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .registers 3

    .prologue
    .line 313
    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 320
    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 321
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    .line 322
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    .line 324
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 331
    const-string/jumbo v0, "SSL context"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 333
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 6

    .prologue
    .line 343
    const-string/jumbo v0, "SSL context"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 345
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-direct {p0, p1, v0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    .line 354
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 6

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const-string/jumbo v0, "SSL socket factory"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 365
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    .line 366
    iput-object p3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    .line 367
    if-eqz p4, :cond_1a

    :goto_14
    iput-object p4, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    .line 369
    return-void

    .line 367
    :cond_1a
    sget-object p4, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    goto :goto_14
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    .registers 3

    .prologue
    .line 162
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    .line 163
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sget-object v2, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-object v0
.end method

.method public static getSystemSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    .registers 5

    .prologue
    .line 184
    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    .line 185
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    const-string/jumbo v2, "https.protocols"

    .line 186
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https.cipherSuites"

    .line 187
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {v1, v0, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-object v1
.end method

.method private internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 496
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 498
    :cond_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 499
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 501
    :cond_12
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 502
    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p2, p1}, Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 568
    return-void

    .line 563
    :catch_6
    move-exception v0

    .line 565
    :try_start_7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 566
    :goto_a
    throw v0

    .line 565
    :catch_b
    move-exception v1

    goto :goto_a
.end method


# virtual methods
.method public connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .registers 10

    .prologue
    .line 517
    const-string/jumbo v0, "HTTP host"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 518
    const-string/jumbo v0, "Remote address"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    if-eqz p2, :cond_29

    move-object v1, p2

    .line 520
    :goto_f
    if-eqz p5, :cond_14

    .line 521
    invoke-virtual {v1, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 524
    :cond_14
    :try_start_14
    invoke-virtual {v1, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_2e

    .line 533
    instance-of v0, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_33

    move-object v0, v1

    .line 534
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 535
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 536
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 539
    :goto_28
    return-object v1

    .line 519
    :cond_29
    invoke-virtual {p0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v1

    goto :goto_f

    .line 525
    :catch_2e
    move-exception v0

    .line 527
    :try_start_2f
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_40

    .line 530
    :goto_32
    throw v0

    .line 539
    :cond_33
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v1

    goto :goto_28

    .line 528
    :catch_40
    move-exception v1

    goto :goto_32
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 11

    .prologue
    .line 461
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    if-eqz v0, :cond_26

    .line 462
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    invoke-interface {v0, p2}, Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    .line 466
    :goto_b
    const/4 v0, 0x0

    .line 467
    if-nez p4, :cond_10

    if-lez p5, :cond_17

    .line 468
    :cond_10
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_2c

    :goto_14
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 470
    :cond_17
    new-instance v2, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    new-instance v3, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v3, p2, p3}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v1, p3}, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;I)V

    .line 472
    invoke-virtual {p0, p1, v2, v0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 464
    :cond_26
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    .line 468
    :cond_2c
    const/4 p5, 0x0

    goto :goto_14
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 12

    .prologue
    .line 392
    const-string/jumbo v0, "Remote address"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    instance-of v0, p2, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    if-eqz v0, :cond_2c

    move-object v0, p2

    .line 396
    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    .line 400
    :goto_17
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    .line 401
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->e(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    .line 402
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 403
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 398
    :cond_2c
    new-instance v3, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    const-string/jumbo v2, "https"

    invoke-direct {v3, v0, v1, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_17
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 6

    .prologue
    .line 435
    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .registers 7

    .prologue
    .line 548
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 553
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 554
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 555
    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 556
    return-object v0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .prologue
    .line 443
    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 3

    .prologue
    .line 377
    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 506
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 507
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .prologue
    .line 479
    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 421
    const-string/jumbo v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    const-string/jumbo v2, "Socket not created by this factory"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_16
    const-string/jumbo v2, "Socket is closed"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 424
    return v1

    .line 423
    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected prepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    .prologue
    .line 492
    return-void
.end method

.method public setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .registers 3

    .prologue
    .line 447
    const-string/jumbo v0, "Hostname verifier"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    .line 449
    return-void
.end method
