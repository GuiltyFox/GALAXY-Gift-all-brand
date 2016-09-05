.class public Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 64
    return-void
.end method

.method private a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/client/CredentialsProvider;)V
    .registers 9

    .prologue
    .line 127
    invoke-interface {p2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 129
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Re-using cached \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 132
    :cond_30
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    sget-object v2, Lcz/msebera/android/httpclient/auth/AuthScope;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {p4, v1}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_59

    .line 136
    const-string/jumbo v1, "BASIC"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 137
    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->b:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p3, v1}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    .line 141
    :goto_4f
    invoke-virtual {p3, p2, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 145
    :goto_52
    return-void

    .line 139
    :cond_53
    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->e:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p3, v1}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    goto :goto_4f

    .line 143
    :cond_59
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "No credentials for preemptive authentication"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_52
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 11

    .prologue
    .line 68
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->h()Lcz/msebera/android/httpclient/client/AuthCache;

    move-result-object v3

    .line 74
    if-nez v3, :cond_1f

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Auth cache not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 120
    :cond_1e
    :goto_1e
    return-void

    .line 79
    :cond_1f
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->g()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v4

    .line 80
    if-nez v4, :cond_2e

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Credentials provider not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1e

    .line 85
    :cond_2e
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v5

    .line 86
    if-nez v5, :cond_3d

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Route info not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1e

    .line 91
    :cond_3d
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->o()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 92
    if-nez v1, :cond_4c

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Target host not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1e

    .line 97
    :cond_4c
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v0

    if-gez v0, :cond_9c

    .line 98
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 99
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v7

    .line 101
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v7, v1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    :goto_67
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->i()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v6

    sget-object v7, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v6, v7, :cond_7e

    .line 106
    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/client/AuthCache;->a(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_7e

    .line 108
    invoke-direct {p0, v0, v6, v1, v4}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/client/CredentialsProvider;)V

    .line 112
    :cond_7e
    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->d()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 113
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->j()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v1

    .line 114
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v2

    sget-object v5, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v2, v5, :cond_1e

    .line 115
    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/client/AuthCache;->a(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_1e

    .line 117
    invoke-direct {p0, v0, v2, v1, v4}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/client/CredentialsProvider;)V

    goto :goto_1e

    :cond_9c
    move-object v0, v1

    goto :goto_67
.end method
