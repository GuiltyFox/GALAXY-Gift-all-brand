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
    .param p1, "allowRedirects"    # Z

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
    .registers 18
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p1, :cond_b

    .line 82
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "HTTP response may not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 85
    :cond_b
    const-string/jumbo v12, "location"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 86
    .local v4, "locationHeader":Lcz/msebera/android/httpclient/Header;
    if-nez v4, :cond_3b

    .line 88
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Received redirect response "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 89
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " but no location header"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 94
    :cond_3b
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, " "

    const-string/jumbo v14, "%20"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "location":Ljava/lang/String;
    :try_start_49
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/net/URISyntaxException; {:try_start_49 .. :try_end_4e} :catch_82

    .line 103
    .local v11, "uri":Ljava/net/URI;
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v5

    .line 106
    .local v5, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_d4

    .line 107
    const-string/jumbo v12, "http.protocol.reject-relative-redirect"

    invoke-interface {v5, v12}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9d

    .line 108
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Relative redirect location \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\' not allowed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 99
    .end local v5    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    .end local v11    # "uri":Ljava/net/URI;
    :catch_82
    move-exception v2

    .line 100
    .local v2, "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid redirect URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 112
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .restart local v5    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    .restart local v11    # "uri":Ljava/net/URI;
    :cond_9d
    const-string/jumbo v12, "http.target_host"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcz/msebera/android/httpclient/HttpHost;

    .line 114
    .local v10, "target":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v10, :cond_b3

    .line 115
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Target host not available in the HTTP context"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 119
    :cond_b3
    const-string/jumbo v12, "http.request"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz/msebera/android/httpclient/HttpRequest;

    .line 123
    .local v8, "request":Lcz/msebera/android/httpclient/HttpRequest;
    :try_start_be
    new-instance v9, Ljava/net/URI;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 124
    .local v9, "requestURI":Ljava/net/URI;
    const/4 v12, 0x1

    invoke-static {v9, v10, v12}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    .line 125
    .local v1, "absoluteRequestURI":Ljava/net/URI;
    invoke-static {v1, v11}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_d3
    .catch Ljava/net/URISyntaxException; {:try_start_be .. :try_end_d3} :catch_13a

    move-result-object v11

    .line 131
    .end local v1    # "absoluteRequestURI":Ljava/net/URI;
    .end local v8    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v9    # "requestURI":Ljava/net/URI;
    .end local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_d4
    const-string/jumbo v12, "http.protocol.allow-circular-redirects"

    invoke-interface {v5, v12}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_155

    .line 133
    const-string/jumbo v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .line 136
    .local v6, "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    if-nez v6, :cond_f7

    .line 137
    new-instance v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .end local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    .line 138
    .restart local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    const-string/jumbo v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_f7
    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_150

    .line 144
    :try_start_fd
    new-instance v10, Lcz/msebera/android/httpclient/HttpHost;

    .line 145
    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 146
    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v13

    .line 147
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v12, v13, v14}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .restart local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;
    :try_end_112
    .catch Ljava/net/URISyntaxException; {:try_start_fd .. :try_end_112} :catch_145

    move-result-object v7

    .line 156
    .end local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v7, "redirectURI":Ljava/net/URI;
    :goto_113
    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v12

    if-eqz v12, :cond_152

    .line 157
    new-instance v12, Lcz/msebera/android/httpclient/client/CircularRedirectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Circular redirect to \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcz/msebera/android/httpclient/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 126
    .end local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    .restart local v8    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_13a
    move-exception v2

    .line 127
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 149
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .end local v8    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    :catch_145
    move-exception v2

    .line 150
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 153
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :cond_150
    move-object v7, v11

    .restart local v7    # "redirectURI":Ljava/net/URI;
    goto :goto_113

    .line 160
    :cond_152
    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    .line 164
    .end local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    :cond_155
    return-object v11
.end method

.method public isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 6
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-boolean v2, p0, Lcom/loopj/android/http/MyRedirectHandler;->enableRedirects:Z

    if-nez v2, :cond_6

    .line 73
    :goto_5
    return v1

    .line 62
    :cond_6
    if-nez p1, :cond_11

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "HTTP response may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_11
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    .line 66
    .local v0, "statusCode":I
    packed-switch v0, :pswitch_data_20

    :pswitch_1c
    goto :goto_5

    .line 71
    :pswitch_1d
    const/4 v1, 0x1

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
