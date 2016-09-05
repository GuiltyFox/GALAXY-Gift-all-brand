.class Lcom/loopj/android/http/MyRedirectHandler;
.super Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;
.source "MyRedirectHandler.java"


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final enableRedirects:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/loopj/android/http/MyRedirectHandler;->enableRedirects:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getLocationURI(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;
    .registers 9

    .prologue
    .line 81
    if-nez p1, :cond_b

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_b
    const-string/jumbo v0, "location"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 86
    if-nez v0, :cond_39

    .line 88
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received redirect response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but no location header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_39
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :try_start_47
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/net/URISyntaxException; {:try_start_47 .. :try_end_4c} :catch_80

    .line 103
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v3

    .line 106
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_14d

    .line 107
    const-string/jumbo v0, "http.protocol.reject-relative-redirect"

    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 108
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Relative redirect location \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :catch_80
    move-exception v0

    .line 100
    new-instance v2, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid redirect URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 112
    :cond_9b
    const-string/jumbo v0, "http.target_host"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 114
    if-nez v0, :cond_af

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Target host not available in the HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_af
    const-string/jumbo v1, "http.request"

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpRequest;

    .line 123
    :try_start_b8
    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x1

    invoke-static {v4, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    .line 125
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_cd
    .catch Ljava/net/URISyntaxException; {:try_start_b8 .. :try_end_cd} :catch_131

    move-result-object v0

    move-object v1, v0

    .line 131
    :goto_cf
    const-string/jumbo v0, "http.protocol.allow-circular-redirects"

    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 133
    const-string/jumbo v0, "http.protocol.redirect-locations"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .line 136
    if-nez v0, :cond_ee

    .line 137
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    .line 138
    const-string/jumbo v2, "http.protocol.redirect-locations"

    invoke-interface {p2, v2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_ee
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_147

    .line 144
    :try_start_f4
    new-instance v2, Lcz/msebera/android/httpclient/HttpHost;

    .line 145
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 147
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;
    :try_end_109
    .catch Ljava/net/URISyntaxException; {:try_start_f4 .. :try_end_109} :catch_13c

    move-result-object v2

    .line 156
    :goto_10a
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a(Ljava/net/URI;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 157
    new-instance v0, Lcz/msebera/android/httpclient/client/CircularRedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Circular redirect to \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catch_131
    move-exception v0

    .line 127
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_13c
    move-exception v0

    .line 150
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_147
    move-object v2, v1

    .line 153
    goto :goto_10a

    .line 160
    :cond_149
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b(Ljava/net/URI;)V

    .line 164
    :cond_14c
    return-object v1

    :cond_14d
    move-object v1, v2

    goto :goto_cf
.end method

.method public isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-boolean v1, p0, Lcom/loopj/android/http/MyRedirectHandler;->enableRedirects:Z

    if-nez v1, :cond_6

    .line 73
    :goto_5
    return v0

    .line 62
    :cond_6
    if-nez p1, :cond_11

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_11
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v1

    .line 66
    packed-switch v1, :pswitch_data_20

    :pswitch_1c
    goto :goto_5

    .line 71
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_5

    .line 66
    nop

    :pswitch_data_20
    .packed-switch 0x12d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
