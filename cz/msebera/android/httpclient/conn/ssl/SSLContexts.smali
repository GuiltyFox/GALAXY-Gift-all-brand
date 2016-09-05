.class public Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;
.super Ljava/lang/Object;
.source "SSLContexts.java"


# direct methods
.method public static a()Ljavax/net/ssl/SSLContext;
    .registers 4

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_d} :catch_19

    .line 56
    return-object v0

    .line 57
    :catch_e
    move-exception v0

    .line 58
    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_19
    move-exception v0

    .line 60
    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 1

    .prologue
    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;-><init>()V

    return-object v0
.end method
