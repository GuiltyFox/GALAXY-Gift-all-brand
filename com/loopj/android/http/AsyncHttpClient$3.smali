.class Lcom/loopj/android/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$3;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 8

    .prologue
    .line 254
    const-string/jumbo v0, "http.auth.target-scope"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    .line 255
    const-string/jumbo v1, "http.auth.credentials-provider"

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 257
    const-string/jumbo v2, "http.target_host"

    invoke-interface {p2, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpHost;

    .line 259
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 260
    new-instance v3, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 261
    invoke-interface {v1, v3}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_3f

    .line 263
    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 264
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 267
    :cond_3f
    return-void
.end method
