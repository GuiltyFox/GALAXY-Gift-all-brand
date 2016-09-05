.class public Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 74
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 202
    :goto_1f
    return-void

    .line 86
    :cond_20
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->b()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v5

    .line 90
    if-nez v5, :cond_33

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Cookie store not specified in HTTP context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1f

    .line 96
    :cond_33
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->e()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v6

    .line 97
    if-nez v6, :cond_42

    .line 98
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "CookieSpec registry not specified in HTTP context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1f

    .line 103
    :cond_42
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->o()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    .line 104
    if-nez v7, :cond_51

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Target host not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1f

    .line 110
    :cond_51
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v8

    .line 111
    if-nez v8, :cond_60

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Connection route not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1f

    .line 116
    :cond_60
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->k()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->a()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1e3

    .line 119
    const-string/jumbo v0, "best-match"

    move-object v1, v0

    .line 121
    :goto_6e
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CookieSpec selected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 126
    :cond_8f
    instance-of v0, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v0, :cond_e5

    move-object v0, p1

    .line 127
    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 134
    :goto_9a
    if-eqz v0, :cond_f6

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_a0
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v2

    .line 137
    if-gez v2, :cond_b2

    .line 138
    invoke-interface {v8}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v2

    .line 141
    :cond_b2
    new-instance v7, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    if-ltz v2, :cond_f8

    .line 144
    :goto_b6
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/TextUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_fa

    .line 145
    :goto_bc
    invoke-interface {v8}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->g()Z

    move-result v8

    invoke-direct {v7, v9, v2, v0, v8}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 148
    invoke-interface {v6, v1}, Lcz/msebera/android/httpclient/config/Lookup;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    .line 149
    if-nez v0, :cond_fe

    .line 150
    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported cookie policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_e5
    :try_start_e5
    new-instance v0, Ljava/net/URI;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v9

    invoke-interface {v9}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/net/URISyntaxException; {:try_start_e5 .. :try_end_f2} :catch_f3

    goto :goto_9a

    .line 131
    :catch_f3
    move-exception v0

    move-object v0, v2

    goto :goto_9a

    :cond_f6
    move-object v0, v2

    .line 134
    goto :goto_a0

    :cond_f8
    move v2, v3

    .line 141
    goto :goto_b6

    .line 144
    :cond_fa
    const-string/jumbo v0, "/"

    goto :goto_bc

    .line 152
    :cond_fe
    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_119
    :goto_119
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 159
    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/cookie/Cookie;->a(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_161

    .line 160
    invoke-interface {v1, v0, v7}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v6

    if-eqz v6, :cond_119

    .line 161
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v6

    if-eqz v6, :cond_15d

    .line 162
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cookie "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " match "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 164
    :cond_15d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_119

    .line 167
    :cond_161
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v6

    if-eqz v6, :cond_119

    .line 168
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cookie "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " expired"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_119

    .line 173
    :cond_18a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 174
    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_198
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    .line 176
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_198

    .line 180
    :cond_1a8
    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->a()I

    move-result v4

    .line 181
    if-lez v4, :cond_1d5

    .line 183
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b2
    :goto_1b2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 184
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v5

    if-ne v4, v5, :cond_1c8

    instance-of v0, v0, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-nez v0, :cond_1b2

    .line 185
    :cond_1c8
    const/4 v3, 0x1

    goto :goto_1b2

    .line 189
    :cond_1ca
    if-eqz v3, :cond_1d5

    .line 190
    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->b()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1d5

    .line 193
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 200
    :cond_1d5
    const-string/jumbo v0, "http.cookie-spec"

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string/jumbo v0, "http.cookie-origin"

    invoke-interface {p2, v0, v7}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_1e3
    move-object v1, v0

    goto/16 :goto_6e
.end method
