.class public Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;
.super Ljava/lang/Object;
.source "ResponseProcessCookies.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 63
    return-void
.end method

.method private static a(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x64

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-interface {p0}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v0, "=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {p0}, Lcz/msebera/android/httpclient/cookie/Cookie;->b()Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_3c

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_39

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_3c
    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v0, ", version:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {p0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v0, ", domain:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {p0}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v0, ", path:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {p0}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string/jumbo v0, ", expiry:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {p0}, Lcz/msebera/android/httpclient/cookie/Cookie;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcz/msebera/android/httpclient/HeaderIterator;Lcz/msebera/android/httpclient/cookie/CookieSpec;Lcz/msebera/android/httpclient/cookie/CookieOrigin;Lcz/msebera/android/httpclient/client/CookieStore;)V
    .registers 12

    .prologue
    .line 107
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 108
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->a()Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 110
    :try_start_a
    invoke-interface {p2, v2, p3}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->a(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;
    :try_end_1e
    .catch Lcz/msebera/android/httpclient/cookie/MalformedCookieException; {:try_start_a .. :try_end_1e} :catch_87

    .line 113
    :try_start_1e
    invoke-interface {p2, v0, p3}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 114
    invoke-interface {p4, v0}, Lcz/msebera/android/httpclient/client/CookieStore;->addCookie(Lcz/msebera/android/httpclient/cookie/Cookie;)V

    .line 116
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 117
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cookie accepted ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V
    :try_end_50
    .catch Lcz/msebera/android/httpclient/cookie/MalformedCookieException; {:try_start_1e .. :try_end_50} :catch_51

    goto :goto_12

    .line 119
    :catch_51
    move-exception v1

    .line 120
    :try_start_52
    iget-object v4, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 121
    iget-object v4, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cookie rejected ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c(Ljava/lang/Object;)V
    :try_end_86
    .catch Lcz/msebera/android/httpclient/cookie/MalformedCookieException; {:try_start_52 .. :try_end_86} :catch_87

    goto :goto_12

    .line 126
    :catch_87
    move-exception v0

    .line 127
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid cookie header: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    :cond_ba
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 7

    .prologue
    .line 67
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->c()Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v1

    .line 74
    if-nez v1, :cond_1f

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Cookie spec not specified in HTTP context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 100
    :cond_1e
    :goto_1e
    return-void

    .line 79
    :cond_1f
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->b()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v2

    .line 80
    if-nez v2, :cond_2e

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Cookie store not specified in HTTP context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1e

    .line 85
    :cond_2e
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->d()Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v0

    .line 86
    if-nez v0, :cond_3d

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Cookie origin not specified in HTTP context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_1e

    .line 90
    :cond_3d
    const-string/jumbo v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v3

    .line 91
    invoke-direct {p0, v3, v1, v0, v2}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a(Lcz/msebera/android/httpclient/HeaderIterator;Lcz/msebera/android/httpclient/cookie/CookieSpec;Lcz/msebera/android/httpclient/cookie/CookieOrigin;Lcz/msebera/android/httpclient/client/CookieStore;)V

    .line 94
    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->a()I

    move-result v3

    if-lez v3, :cond_1e

    .line 97
    const-string/jumbo v3, "Set-Cookie2"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v3

    .line 98
    invoke-direct {p0, v3, v1, v0, v2}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;->a(Lcz/msebera/android/httpclient/HeaderIterator;Lcz/msebera/android/httpclient/cookie/CookieSpec;Lcz/msebera/android/httpclient/cookie/CookieOrigin;Lcz/msebera/android/httpclient/client/CookieStore;)V

    goto :goto_1e
.end method
