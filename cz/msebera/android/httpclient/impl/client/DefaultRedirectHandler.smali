.class public Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RedirectHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 71
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
    .line 98
    const-string/jumbo v12, "HTTP response"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v12, "location"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 101
    .local v4, "locationHeader":Lcz/msebera/android/httpclient/Header;
    if-nez v4, :cond_38

    .line 103
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Received redirect response "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 104
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

    .line 107
    :cond_38
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "location":Ljava/lang/String;
    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v12}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_64

    .line 109
    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Redirect requested to location \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 114
    :cond_64
    :try_start_64
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/net/URISyntaxException; {:try_start_64 .. :try_end_69} :catch_9d

    .line 119
    .local v11, "uri":Ljava/net/URI;
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v5

    .line 122
    .local v5, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_ea

    .line 123
    const-string/jumbo v12, "http.protocol.reject-relative-redirect"

    invoke-interface {v5, v12}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b8

    .line 124
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

    .line 115
    .end local v5    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    .end local v11    # "uri":Ljava/net/URI;
    :catch_9d
    move-exception v2

    .line 116
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

    .line 128
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .restart local v5    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    .restart local v11    # "uri":Ljava/net/URI;
    :cond_b8
    const-string/jumbo v12, "http.target_host"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcz/msebera/android/httpclient/HttpHost;

    .line 130
    .local v10, "target":Lcz/msebera/android/httpclient/HttpHost;
    const-string/jumbo v12, "Target host"

    invoke-static {v10, v12}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v12, "http.request"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz/msebera/android/httpclient/HttpRequest;

    .line 136
    .local v8, "request":Lcz/msebera/android/httpclient/HttpRequest;
    :try_start_d4
    new-instance v9, Ljava/net/URI;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 137
    .local v9, "requestURI":Ljava/net/URI;
    const/4 v12, 0x1

    invoke-static {v9, v10, v12}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    .line 138
    .local v1, "absoluteRequestURI":Ljava/net/URI;
    invoke-static {v1, v11}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_e9
    .catch Ljava/net/URISyntaxException; {:try_start_d4 .. :try_end_e9} :catch_150

    move-result-object v11

    .line 144
    .end local v1    # "absoluteRequestURI":Ljava/net/URI;
    .end local v8    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v9    # "requestURI":Ljava/net/URI;
    .end local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_ea
    const-string/jumbo v12, "http.protocol.allow-circular-redirects"

    invoke-interface {v5, v12}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16b

    .line 146
    const-string/jumbo v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .line 149
    .local v6, "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    if-nez v6, :cond_10d

    .line 150
    new-instance v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .end local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    .line 151
    .restart local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    const-string/jumbo v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_10d
    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_166

    .line 157
    :try_start_113
    new-instance v10, Lcz/msebera/android/httpclient/HttpHost;

    .line 158
    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 159
    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v13

    .line 160
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v12, v13, v14}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    .restart local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;
    :try_end_128
    .catch Ljava/net/URISyntaxException; {:try_start_113 .. :try_end_128} :catch_15b

    move-result-object v7

    .line 169
    .end local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v7, "redirectURI":Ljava/net/URI;
    :goto_129
    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v12

    if-eqz v12, :cond_168

    .line 170
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

    .line 139
    .end local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    .restart local v8    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_150
    move-exception v2

    .line 140
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 162
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .end local v8    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v10    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    :catch_15b
    move-exception v2

    .line 163
    .restart local v2    # "ex":Ljava/net/URISyntaxException;
    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 166
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :cond_166
    move-object v7, v11

    .restart local v7    # "redirectURI":Ljava/net/URI;
    goto :goto_129

    .line 173
    :cond_168
    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    .line 177
    .end local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    .end local v7    # "redirectURI":Ljava/net/URI;
    :cond_16b
    return-object v11
.end method

.method public isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 9
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const-string/jumbo v5, "HTTP response"

    invoke-static {p1, v5}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    .line 79
    .local v2, "statusCode":I
    packed-switch v2, :pswitch_data_3c

    .line 91
    :cond_13
    :goto_13
    :pswitch_13
    return v3

    .line 83
    :pswitch_14
    const-string/jumbo v5, "http.request"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpRequest;

    .line 85
    .local v1, "request":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v5, "GET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    const-string/jumbo v5, "HEAD"

    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_37
    move v3, v4

    goto :goto_13

    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    :pswitch_39
    move v3, v4

    .line 89
    goto :goto_13

    .line 79
    nop

    :pswitch_data_3c
    .packed-switch 0x12d
        :pswitch_14
        :pswitch_14
        :pswitch_39
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
