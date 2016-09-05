.class public Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "PreemptiveAuthorizationHttpRequestInterceptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 8

    .prologue
    .line 39
    const-string/jumbo v0, "http.auth.target-scope"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    .line 40
    const-string/jumbo v1, "http.auth.credentials-provider"

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 42
    const-string/jumbo v2, "http.target_host"

    invoke-interface {p2, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpHost;

    .line 44
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 45
    new-instance v3, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 46
    invoke-interface {v1, v3}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_3f

    .line 48
    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 49
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 52
    :cond_3f
    return-void
.end method
