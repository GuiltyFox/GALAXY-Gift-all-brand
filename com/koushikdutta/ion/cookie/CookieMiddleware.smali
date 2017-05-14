.class public Lcom/koushikdutta/ion/cookie/CookieMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "CookieMiddleware.java"


# instance fields
.field a:Ljava/net/CookieManager;

.field b:Landroid/content/SharedPreferences;

.field c:Lcom/koushikdutta/ion/Ion;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->c:Lcom/koushikdutta/ion/Ion;

    .line 44
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/koushikdutta/async/http/Headers;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/koushikdutta/async/http/Headers;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    const-string/jumbo v3, "Cookie"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string/jumbo v3, "Cookie2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 77
    :cond_2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/util/List;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_8

    .line 80
    :cond_36
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a:Ljava/net/CookieManager;

    if-nez v0, :cond_7

    .line 84
    invoke-virtual {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a()V

    .line 85
    :cond_7
    return-void
.end method


# virtual methods
.method public a()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0, v1, v1}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a:Ljava/net/CookieManager;

    .line 48
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->c:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->c:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v3}, Lcom/koushikdutta/ion/Ion;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-cookies"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->b:Landroid/content/SharedPreferences;

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    :try_start_49
    iget-object v1, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->b:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v5, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 55
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 56
    const/4 v1, 0x1

    .line 57
    array-length v7, v6

    move v3, v2

    :goto_5f
    if-ge v3, v7, :cond_7e

    aget-object v8, v6, v3

    .line 58
    if-eqz v1, :cond_69

    move v1, v2

    .line 57
    :cond_66
    :goto_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 61
    :cond_69
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_66

    .line 62
    invoke-virtual {v5, v8}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_72} :catch_73

    goto :goto_66

    .line 67
    :catch_73
    move-exception v0

    .line 68
    const-string/jumbo v1, "Ion"

    const-string/jumbo v3, "unable to load cookies"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 65
    :cond_7e
    :try_start_7e
    iget-object v1, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a:Ljava/net/CookieManager;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/Headers;->a()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8b} :catch_73

    goto :goto_3d

    .line 71
    :cond_8c
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;)V
    .registers 4

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->b()V

    .line 105
    :try_start_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a(Ljava/net/URI;Lcom/koushikdutta/async/http/Headers;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1b

    .line 109
    :goto_1a
    return-void

    .line 107
    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V
    .registers 5

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->b()V

    .line 91
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a:Ljava/net/CookieManager;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/Headers;->a()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 95
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a(Ljava/util/Map;Lcom/koushikdutta/async/http/Headers;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 99
    :goto_2a
    return-void

    .line 97
    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method public a(Ljava/net/URI;Lcom/koushikdutta/async/http/Headers;)V
    .registers 9

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->b()V

    .line 114
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a:Ljava/net/CookieManager;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/Headers;->a()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 117
    const-string/jumbo v0, "Set-Cookie"

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 132
    :goto_15
    return-void

    .line 120
    :cond_16
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->a:Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 124
    const-string/jumbo v3, "Set-Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_29

    .line 130
    :catch_5c
    move-exception v0

    goto :goto_15

    .line 127
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "HTTP/1.1 200 OK"

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/http/Headers;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_92} :catch_5c

    goto :goto_15
.end method
