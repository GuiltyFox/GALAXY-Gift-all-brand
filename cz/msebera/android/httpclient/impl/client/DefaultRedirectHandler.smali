.class public Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RedirectHandler;


# annotations
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
    .registers 9

    .prologue
    .line 98
    const-string/jumbo v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v0, "location"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 101
    if-nez v0, :cond_34

    .line 103
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received redirect response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
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

    .line 107
    :cond_34
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 109
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Redirect requested to location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 114
    :cond_60
    :try_start_60
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/net/URISyntaxException; {:try_start_60 .. :try_end_65} :catch_99

    .line 119
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v3

    .line 122
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_161

    .line 123
    const-string/jumbo v0, "http.protocol.reject-relative-redirect"

    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 124
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

    .line 115
    :catch_99
    move-exception v0

    .line 116
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

    .line 128
    :cond_b4
    const-string/jumbo v0, "http.target_host"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 130
    const-string/jumbo v1, "Target host"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "http.request"

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpRequest;

    .line 136
    :try_start_cc
    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x1

    invoke-static {v4, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    .line 138
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_e1
    .catch Ljava/net/URISyntaxException; {:try_start_cc .. :try_end_e1} :catch_145

    move-result-object v0

    move-object v1, v0

    .line 144
    :goto_e3
    const-string/jumbo v0, "http.protocol.allow-circular-redirects"

    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 146
    const-string/jumbo v0, "http.protocol.redirect-locations"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .line 149
    if-nez v0, :cond_102

    .line 150
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    .line 151
    const-string/jumbo v2, "http.protocol.redirect-locations"

    invoke-interface {p2, v2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_102
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15b

    .line 157
    :try_start_108
    new-instance v2, Lcz/msebera/android/httpclient/HttpHost;

    .line 158
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 160
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;
    :try_end_11d
    .catch Ljava/net/URISyntaxException; {:try_start_108 .. :try_end_11d} :catch_150

    move-result-object v2

    .line 169
    :goto_11e
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a(Ljava/net/URI;)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 170
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

    .line 139
    :catch_145
    move-exception v0

    .line 140
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 162
    :catch_150
    move-exception v0

    .line 163
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_15b
    move-object v2, v1

    .line 166
    goto :goto_11e

    .line 173
    :cond_15d
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b(Ljava/net/URI;)V

    .line 177
    :cond_160
    return-object v1

    :cond_161
    move-object v1, v2

    goto :goto_e3
.end method

.method public isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    const-string/jumbo v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    .line 79
    packed-switch v0, :pswitch_data_3e

    :pswitch_13
    move v0, v1

    .line 91
    :goto_14
    return v0

    .line 83
    :pswitch_15
    const-string/jumbo v0, "http.request"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    .line 85
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string/jumbo v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string/jumbo v3, "HEAD"

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_38
    move v0, v2

    goto :goto_14

    :cond_3a
    move v0, v1

    goto :goto_14

    :pswitch_3c
    move v0, v2

    .line 89
    goto :goto_14

    .line 79
    :pswitch_data_3e
    .packed-switch 0x12d
        :pswitch_15
        :pswitch_15
        :pswitch_3c
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method
