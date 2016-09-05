.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
.super Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
.source "RFC2965Spec.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 67
    const-string/jumbo v0, "domain"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 68
    const-string/jumbo v0, "port"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 69
    const-string/jumbo v0, "commenturl"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 70
    const-string/jumbo v0, "discard"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 71
    const-string/jumbo v0, "version"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 72
    return-void
.end method

.method private b([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 14
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
    const/4 v2, 0x0

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    array-length v4, p1

    move v1, v2

    :goto_9
    if-ge v1, v4, :cond_a7

    aget-object v0, p1, v1

    .line 100
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->b()Ljava/lang/String;

    move-result-object v6

    .line 102
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_26

    .line 103
    :cond_1d
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_26
    new-instance v7, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;

    invoke-direct {v7, v5, v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->e(Ljava/lang/String;)V

    .line 108
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->b(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->d(Ljava/lang/String;)V

    .line 109
    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c()I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v7, v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->a([I)V

    .line 111
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->c()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v5

    .line 115
    new-instance v6, Ljava/util/HashMap;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 117
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    :goto_52
    if-ltz v0, :cond_66

    .line 118
    aget-object v8, v5, v0

    .line 119
    invoke-interface {v8}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    .line 121
    :cond_66
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6e
    :goto_6e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/NameValuePair;

    .line 123
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_6e

    .line 129
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_6e

    .line 132
    :cond_9f
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_9

    .line 134
    :cond_a7
    return-object v3
.end method

.method private static c(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->a()Ljava/lang/String;

    move-result-object v3

    .line 198
    const/4 v2, 0x1

    move v0, v1

    .line 199
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_45

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 201
    const/16 v5, 0x2e

    if-eq v4, v5, :cond_19

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_42

    .line 206
    :cond_19
    :goto_19
    if-eqz v1, :cond_41

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    .line 210
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c()I

    move-result v2

    .line 211
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->b()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->d()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object p0, v0

    .line 214
    :cond_41
    return-object p0

    .line 199
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_45
    move v1, v2

    goto :goto_19
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Set-Cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 81
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized cookie header \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3e
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->e()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 85
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->c(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->b([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 4
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
    .line 92
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->c(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->b([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 4

    .prologue
    .line 140
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->c(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 143
    return-void
.end method

.method protected a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/cookie/Cookie;I)V
    .registers 8

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/cookie/Cookie;I)V

    .line 160
    instance-of v0, p2, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_4d

    move-object v0, p2

    .line 162
    check-cast v0, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_4d

    .line 164
    const-string/jumbo v1, "; $Port"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "=\""

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_47

    .line 167
    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->h()[I

    move-result-object v1

    .line 168
    if-eqz v1, :cond_47

    .line 169
    array-length v2, v1

    .line 170
    const/4 v0, 0x0

    :goto_31
    if-ge v0, v2, :cond_47

    .line 171
    if-lez v0, :cond_3b

    .line 172
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 174
    :cond_3b
    aget v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 178
    :cond_47
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 181
    :cond_4d
    return-void
.end method

.method public b()Lcz/msebera/android/httpclient/Header;
    .registers 3

    .prologue
    .line 225
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 226
    const-string/jumbo v1, "Cookie2"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "$Version="

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v1
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 4

    .prologue
    .line 147
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->c(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    const-string/jumbo v0, "rfc2965"

    return-object v0
.end method
