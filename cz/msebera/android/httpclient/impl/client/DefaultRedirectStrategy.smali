.class public Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RedirectStrategy;


# static fields
.field public static final b:Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

.field private static final c:[Ljava/lang/String;


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 83
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->b:Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "HEAD"

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 95
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/net/URI;
    .registers 6

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 187
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c()Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_1d

    .line 189
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->c(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 191
    :cond_1d
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lcz/msebera/android/httpclient/util/TextUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 193
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->d(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    .line 195
    :cond_2d
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->a()Ljava/net/URI;
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v0

    return-object v0

    .line 196
    :catch_32
    move-exception v0

    .line 197
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid redirect URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    const-string/jumbo v2, "HTTP request"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v2, "HTTP response"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v2

    .line 105
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v3

    .line 106
    const-string/jumbo v4, "location"

    invoke-interface {p2, v4}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 107
    packed-switch v2, :pswitch_data_3a

    :pswitch_28
    move v0, v1

    .line 116
    :cond_29
    :goto_29
    :pswitch_29
    return v0

    .line 109
    :pswitch_2a
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    if-nez v4, :cond_29

    :cond_32
    move v0, v1

    goto :goto_29

    .line 112
    :pswitch_34
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_29

    .line 107
    nop

    :pswitch_data_3a
    .packed-switch 0x12d
        :pswitch_34
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_34
    .end packed-switch
.end method

.method public b(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .registers 7

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->c(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 218
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string/jumbo v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 220
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .line 228
    :goto_1a
    return-object v0

    .line 221
    :cond_1b
    const-string/jumbo v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 222
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_1a

    .line 224
    :cond_2a
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    .line 225
    const/16 v2, 0x133

    if-ne v0, v2, :cond_43

    .line 226
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->a()Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object v0

    goto :goto_1a

    .line 228
    :cond_43
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_1a
.end method

.method protected b(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 205
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 206
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 207
    const/4 v0, 0x1

    .line 210
    :cond_10
    return v0

    .line 205
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public c(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;
    .registers 10

    .prologue
    .line 124
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v0, "HTTP response"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v2

    .line 131
    const-string/jumbo v0, "location"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 132
    if-nez v0, :cond_44

    .line 134
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received redirect response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

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

    .line 138
    :cond_44
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 140
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Redirect requested to location \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 143
    :cond_70
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->k()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v3

    .line 145
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 150
    :try_start_78
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_118

    .line 151
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->b()Z

    move-result v1

    if-nez v1, :cond_b0

    .line 152
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Relative redirect location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' not allowed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a5
    .catch Ljava/net/URISyntaxException; {:try_start_78 .. :try_end_a5} :catch_a5

    .line 162
    :catch_a5
    move-exception v0

    .line 163
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 156
    :cond_b0
    :try_start_b0
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->o()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 157
    const-string/jumbo v4, "Target host"

    invoke-static {v1, v4}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v4, Ljava/net/URI;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 159
    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    .line 160
    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->a(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_cf
    .catch Ljava/net/URISyntaxException; {:try_start_b0 .. :try_end_cf} :catch_a5

    move-result-object v0

    move-object v1, v0

    .line 166
    :goto_d1
    const-string/jumbo v0, "http.protocol.redirect-locations"

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .line 168
    if-nez v0, :cond_e7

    .line 169
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    .line 170
    const-string/jumbo v2, "http.protocol.redirect-locations"

    invoke-interface {p3, v2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    :cond_e7
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->c()Z

    move-result v2

    if-nez v2, :cond_114

    .line 173
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->a(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 174
    new-instance v0, Lcz/msebera/android/httpclient/client/CircularRedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Circular redirect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_114
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->b(Ljava/net/URI;)V

    .line 178
    return-object v1

    :cond_118
    move-object v1, v0

    goto :goto_d1
.end method
