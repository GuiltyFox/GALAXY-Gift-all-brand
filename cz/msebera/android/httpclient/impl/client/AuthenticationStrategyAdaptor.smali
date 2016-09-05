.class Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;
.super Ljava/lang/Object;
.source "AuthenticationStrategyAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/AuthenticationStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final b:Lcz/msebera/android/httpclient/client/AuthenticationHandler;


# direct methods
.method private a(Lcz/msebera/android/httpclient/auth/AuthScheme;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->d()Z

    move-result v1

    if-nez v1, :cond_a

    .line 165
    :cond_9
    :goto_9
    return v0

    .line 163
    :cond_a
    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string/jumbo v2, "Digest"

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_20
    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->b:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    return-object v0
.end method

.method public a(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Queue;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/Header;",
            ">;",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const-string/jumbo v0, "Map of auth challenges"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v0, "Host"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v0, "HTTP response"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "HTTP context"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 97
    const-string/jumbo v0, "http.auth.credentials-provider"

    invoke-interface {p4, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 99
    if-nez v0, :cond_32

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Credentials provider not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    move-object v0, v2

    .line 127
    :goto_31
    return-object v0

    .line 106
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->b:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    invoke-interface {v1, p1, p3, p4}, Lcz/msebera/android/httpclient/client/AuthenticationHandler;->a(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    :try_end_37
    .catch Lcz/msebera/android/httpclient/auth/AuthenticationException; {:try_start_32 .. :try_end_37} :catch_70

    move-result-object v3

    .line 113
    invoke-interface {v3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v1

    .line 114
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/Header;

    .line 115
    invoke-interface {v3, v1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a(Lcz/msebera/android/httpclient/Header;)V

    .line 117
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 118
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v5

    .line 120
    invoke-interface {v3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->b()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-interface {v3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_6e

    .line 125
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthOption;

    invoke-direct {v1, v3, v0}, Lcz/msebera/android/httpclient/auth/AuthOption;-><init>(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_6e
    move-object v0, v2

    .line 127
    goto :goto_31

    .line 107
    :catch_70
    move-exception v0

    .line 108
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 109
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_82
    move-object v0, v2

    .line 111
    goto :goto_31
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 8

    .prologue
    .line 132
    const-string/jumbo v0, "http.auth.auth-cache"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/AuthCache;

    .line 133
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 134
    if-nez v0, :cond_1c

    .line 135
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>()V

    .line 136
    const-string/jumbo v1, "http.auth.auth-cache"

    invoke-interface {p3, v1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_1c
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 139
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 142
    :cond_4c
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/client/AuthCache;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 144
    :cond_4f
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 5

    .prologue
    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->b:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/client/AuthenticationHandler;->a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method

.method public b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->b:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/client/AuthenticationHandler;->b(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 8

    .prologue
    .line 148
    const-string/jumbo v0, "http.auth.auth-cache"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/AuthCache;

    .line 149
    if-nez v0, :cond_c

    .line 157
    :goto_b
    return-void

    .line 152
    :cond_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 153
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing from cache \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 156
    :cond_3c
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/client/AuthCache;->b(Lcz/msebera/android/httpclient/HttpHost;)V

    goto :goto_b
.end method
