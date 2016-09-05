.class public Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
.super Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
.source "HttpClientContext.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;-><init>()V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 2

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 152
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .registers 2

    .prologue
    .line 139
    instance-of v0, p0, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    if-eqz v0, :cond_7

    .line 140
    check-cast p0, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    .line 142
    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object p0, v0

    goto :goto_6
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;)Lcz/msebera/android/httpclient/config/Lookup;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    const-class v0, Lcz/msebera/android/httpclient/config/Lookup;

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/config/Lookup;

    return-object v0
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .registers 3

    .prologue
    .line 159
    const-string/jumbo v0, "http.route"

    const-class v1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/client/AuthCache;)V
    .registers 3

    .prologue
    .line 217
    const-string/jumbo v0, "http.auth.auth-cache"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public b()Lcz/msebera/android/httpclient/client/CookieStore;
    .registers 3

    .prologue
    .line 168
    const-string/jumbo v0, "http.cookie-store"

    const-class v1, Lcz/msebera/android/httpclient/client/CookieStore;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/CookieStore;

    return-object v0
.end method

.method public c()Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 3

    .prologue
    .line 176
    const-string/jumbo v0, "http.cookie-spec"

    const-class v1, Lcz/msebera/android/httpclient/cookie/CookieSpec;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0
.end method

.method public d()Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .registers 3

    .prologue
    .line 180
    const-string/jumbo v0, "http.cookie-origin"

    const-class v1, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    return-object v0
.end method

.method public e()Lcz/msebera/android/httpclient/config/Lookup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const-string/jumbo v0, "http.cookiespec-registry"

    const-class v1, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->b(Ljava/lang/String;Ljava/lang/Class;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcz/msebera/android/httpclient/config/Lookup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-string/jumbo v0, "http.authscheme-registry"

    const-class v1, Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->b(Ljava/lang/String;Ljava/lang/Class;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .registers 3

    .prologue
    .line 205
    const-string/jumbo v0, "http.auth.credentials-provider"

    const-class v1, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    return-object v0
.end method

.method public h()Lcz/msebera/android/httpclient/client/AuthCache;
    .registers 3

    .prologue
    .line 213
    const-string/jumbo v0, "http.auth.auth-cache"

    const-class v1, Lcz/msebera/android/httpclient/client/AuthCache;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/AuthCache;

    return-object v0
.end method

.method public i()Lcz/msebera/android/httpclient/auth/AuthState;
    .registers 3

    .prologue
    .line 221
    const-string/jumbo v0, "http.auth.target-scope"

    const-class v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    return-object v0
.end method

.method public j()Lcz/msebera/android/httpclient/auth/AuthState;
    .registers 3

    .prologue
    .line 225
    const-string/jumbo v0, "http.auth.proxy-scope"

    const-class v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    return-object v0
.end method

.method public k()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .registers 3

    .prologue
    .line 241
    const-string/jumbo v0, "http.request-config"

    const-class v1, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 242
    if-eqz v0, :cond_e

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->a:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto :goto_d
.end method
