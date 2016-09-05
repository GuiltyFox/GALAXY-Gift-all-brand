.class public abstract Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;-><init>()V

    return-void
.end method

.method protected static a(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->b()Ljava/lang/String;

    move-result-object v1

    .line 54
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 55
    if-ltz v0, :cond_15

    .line 56
    if-nez v0, :cond_f

    .line 58
    const/4 v0, 0x1

    .line 60
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_14
    return-object v0

    :cond_15
    move-object v0, v1

    goto :goto_14
.end method

.method protected static b(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcz/msebera/android/httpclient/HeaderElement;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_6c

    aget-object v0, p1, v1

    .line 73
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->b()Ljava/lang/String;

    move-result-object v5

    .line 75
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    .line 76
    :cond_1d
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_26
    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v6, v4, v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->a(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->e(Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->b(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->d(Ljava/lang/String;)V

    .line 84
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->c()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v4

    .line 85
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_65

    .line 86
    aget-object v5, v4, v0

    .line 87
    invoke-interface {v5}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-interface {v5}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v7}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    move-result-object v7

    .line 92
    if-eqz v7, :cond_62

    .line 93
    invoke-interface {v5}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    .line 85
    :cond_62
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 96
    :cond_65
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 98
    :cond_6c
    return-object v2
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 5

    .prologue
    .line 103
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    .line 106
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_14

    .line 108
    :cond_24
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 5

    .prologue
    .line 111
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    .line 114
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 115
    const/4 v0, 0x0

    .line 118
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method
