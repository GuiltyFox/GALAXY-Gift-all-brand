.class public Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;
.super Ljava/lang/Object;
.source "ResponseAuthCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 68
    return-void
.end method

.method private cache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .registers 7
    .param p1, "authCache"    # Lcz/msebera/android/httpclient/client/AuthCache;
    .param p2, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "authScheme"    # Lcz/msebera/android/httpclient/auth/AuthScheme;

    .prologue
    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caching \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' auth scheme for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 141
    :cond_30
    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/client/AuthCache;->put(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 142
    return-void
.end method

.method private isCachable(Lcz/msebera/android/httpclient/auth/AuthState;)Z
    .registers 6
    .param p1, "authState"    # Lcz/msebera/android/httpclient/auth/AuthState;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 128
    .local v0, "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v3

    if-nez v3, :cond_e

    .line 133
    :cond_d
    :goto_d
    return v2

    .line 131
    :cond_e
    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "schemeName":Ljava/lang/String;
    const-string/jumbo v3, "Basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string/jumbo v3, "Digest"

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_24
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private uncache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .registers 7
    .param p1, "authCache"    # Lcz/msebera/android/httpclient/client/AuthCache;
    .param p2, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "authScheme"    # Lcz/msebera/android/httpclient/auth/AuthScheme;

    .prologue
    .line 145
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing from cache \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' auth scheme for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 149
    :cond_30
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/client/AuthCache;->remove(Lcz/msebera/android/httpclient/HttpHost;)V

    .line 150
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 14
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const-string/jumbo v8, "HTTP request"

    invoke-static {p1, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v8, "HTTP context"

    invoke-static {p2, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v8, "http.auth.auth-cache"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/AuthCache;

    .line 76
    .local v0, "authCache":Lcz/msebera/android/httpclient/client/AuthCache;
    const-string/jumbo v8, "http.target_host"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpHost;

    .line 77
    .local v5, "target":Lcz/msebera/android/httpclient/HttpHost;
    const-string/jumbo v8, "http.auth.target-scope"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/auth/AuthState;

    .line 78
    .local v7, "targetState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v5, :cond_9b

    if-eqz v7, :cond_9b

    .line 79
    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_50

    .line 80
    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Target auth state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 82
    :cond_50
    invoke-direct {p0, v7}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->isCachable(Lcz/msebera/android/httpclient/auth/AuthState;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 83
    const-string/jumbo v8, "http.scheme-registry"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 85
    .local v4, "schemeRegistry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v8

    if-gez v8, :cond_7f

    .line 86
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v3

    .line 87
    .local v3, "scheme":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    new-instance v6, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v9

    invoke-virtual {v3, v9}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->resolvePort(I)I

    move-result v9

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v6, "target":Lcz/msebera/android/httpclient/HttpHost;
    move-object v5, v6

    .line 90
    .end local v3    # "scheme":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .end local v6    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_7f
    if-nez v0, :cond_8c

    .line 91
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;

    .end local v0    # "authCache":Lcz/msebera/android/httpclient/client/AuthCache;
    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>()V

    .line 92
    .restart local v0    # "authCache":Lcz/msebera/android/httpclient/client/AuthCache;
    const-string/jumbo v8, "http.auth.auth-cache"

    invoke-interface {p2, v8, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_8c
    sget-object v8, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v9

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_11a

    .line 104
    .end local v4    # "schemeRegistry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    :cond_9b
    :goto_9b
    const-string/jumbo v8, "http.proxy_host"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpHost;

    .line 105
    .local v1, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    const-string/jumbo v8, "http.auth.proxy-scope"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/auth/AuthState;

    .line 106
    .local v2, "proxyState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v1, :cond_f8

    if-eqz v2, :cond_f8

    .line 107
    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 108
    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Proxy auth state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 110
    :cond_d6
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->isCachable(Lcz/msebera/android/httpclient/auth/AuthState;)Z

    move-result v8

    if-eqz v8, :cond_f8

    .line 111
    if-nez v0, :cond_e9

    .line 112
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;

    .end local v0    # "authCache":Lcz/msebera/android/httpclient/client/AuthCache;
    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>()V

    .line 113
    .restart local v0    # "authCache":Lcz/msebera/android/httpclient/client/AuthCache;
    const-string/jumbo v8, "http.auth.auth-cache"

    invoke-interface {p2, v8, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_e9
    sget-object v8, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v9

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_122

    .line 124
    :cond_f8
    :goto_f8
    return-void

    .line 96
    .end local v1    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .end local v2    # "proxyState":Lcz/msebera/android/httpclient/auth/AuthState;
    .restart local v4    # "schemeRegistry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    :pswitch_f9
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->cache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_9b

    .line 99
    :pswitch_101
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->uncache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_9b

    .line 117
    .end local v4    # "schemeRegistry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .restart local v1    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v2    # "proxyState":Lcz/msebera/android/httpclient/auth/AuthState;
    :pswitch_109
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v1, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->cache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_f8

    .line 120
    :pswitch_111
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v1, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->uncache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_f8

    .line 94
    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_101
    .end packed-switch

    .line 115
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_109
        :pswitch_111
    .end packed-switch
.end method
