.class Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)V
    .registers 3

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->a:Ljavax/net/ssl/X509TrustManager;

    .line 179
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->b:Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;

    .line 180
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->b:Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;->a([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 190
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 192
    :cond_d
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
