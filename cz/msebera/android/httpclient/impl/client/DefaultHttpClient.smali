.class public Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0, v0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 3

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 128
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 2

    .prologue
    .line 179
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->c:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 180
    sget-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    .line 182
    const/16 v0, 0x2000

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 183
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    .line 184
    return-void
.end method


# virtual methods
.method protected a()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .prologue
    .line 157
    new-instance v0, Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;-><init>()V

    .line 158
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->a(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 159
    return-object v0
.end method

.method protected b()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;-><init>()V

    .line 207
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 209
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 210
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 212
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 213
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 214
    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 216
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 217
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 219
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 220
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 221
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->b(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 222
    return-object v0
.end method
