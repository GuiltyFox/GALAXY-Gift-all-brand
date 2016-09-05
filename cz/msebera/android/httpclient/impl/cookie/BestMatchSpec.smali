.class public Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Z

.field private c:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

.field private d:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

.field private e:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->b:Z

    .line 67
    return-void

    .line 65
    :cond_b
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_6
.end method

.method private c()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    if-nez v0, :cond_f

    .line 75
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->b:Z

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 77
    :cond_f
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    return-object v0
.end method

.method private d()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->d:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    if-nez v0, :cond_f

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->b:Z

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->d:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 84
    :cond_f
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->d:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    return-object v0
.end method

.method private e()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->e:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    if-nez v0, :cond_d

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->e:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    .line 91
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->e:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a()I

    move-result v0

    return v0
.end method

.method public a(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 12
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
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 97
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->e()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v5

    .line 102
    array-length v6, v5

    move v3, v4

    move v2, v4

    move v0, v4

    :goto_16
    if-ge v3, v6, :cond_31

    aget-object v7, v5, v3

    .line 103
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_24

    move v0, v1

    .line 106
    :cond_24
    const-string/jumbo v8, "expires"

    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_2e

    move v2, v1

    .line 102
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 110
    :cond_31
    if-nez v2, :cond_35

    if-nez v0, :cond_87

    .line 113
    :cond_35
    sget-object v3, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->a:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 116
    instance-of v0, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_62

    move-object v0, p1

    .line 117
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v2

    .line 118
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    .line 119
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->b()I

    move-result v5

    .line 120
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 130
    :goto_51
    new-array v1, v1, [Lcz/msebera/android/httpclient/HeaderElement;

    invoke-virtual {v3, v2, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    aput-object v0, v1, v4

    .line 131
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->e()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 136
    :goto_61
    return-object v0

    .line 122
    :cond_62
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 123
    if-nez v0, :cond_71

    .line 124
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_71
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 127
    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_51

    .line 133
    :cond_87
    const-string/jumbo v0, "Set-Cookie2"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 134
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_61

    .line 136
    :cond_9d
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->d()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_61
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const v1, 0x7fffffff

    .line 174
    const/4 v0, 0x1

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 176
    instance-of v4, v0, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-nez v4, :cond_21

    .line 177
    const/4 v1, 0x0

    .line 179
    :cond_21
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v4

    if-ge v4, v2, :cond_4c

    .line 180
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v0

    :goto_2b
    move v2, v0

    .line 182
    goto :goto_10

    .line 183
    :cond_2d
    if-lez v2, :cond_43

    .line 184
    if-eqz v1, :cond_3a

    .line 185
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 190
    :goto_39
    return-object v0

    .line 187
    :cond_3a
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->d()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_39

    .line 190
    :cond_43
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->e()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_39

    :cond_4c
    move v0, v2

    goto :goto_2b
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 4

    .prologue
    .line 144
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v0

    if-lez v0, :cond_26

    .line 147
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_1e

    .line 148
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 155
    :goto_1d
    return-void

    .line 150
    :cond_1e
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->d()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_1d

    .line 153
    :cond_26
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->e()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_1d
.end method

.method public b()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->b()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 4

    .prologue
    .line 158
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v0

    if-lez v0, :cond_28

    .line 161
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_1f

    .line 162
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->c()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    .line 167
    :goto_1e
    return v0

    .line 164
    :cond_1f
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->d()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_1e

    .line 167
    :cond_28
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->e()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    const-string/jumbo v0, "best-match"

    return-object v0
.end method
