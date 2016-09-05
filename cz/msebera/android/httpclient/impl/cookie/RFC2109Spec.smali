.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
.super Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# static fields
.field private static final a:Lcz/msebera/android/httpclient/cookie/CookiePathComparator;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:[Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a:Lcz/msebera/android/httpclient/cookie/CookiePathComparator;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 74
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;-><init>()V

    .line 75
    if-eqz p1, :cond_5f

    .line 76
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->c:[Ljava/lang/String;

    .line 80
    :goto_d
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->d:Z

    .line 81
    const-string/jumbo v0, "version"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 82
    const-string/jumbo v0, "path"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 83
    const-string/jumbo v0, "domain"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 84
    const-string/jumbo v0, "max-age"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 85
    const-string/jumbo v0, "secure"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 86
    const-string/jumbo v0, "comment"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 87
    const-string/jumbo v0, "expires"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->c:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 89
    return-void

    .line 78
    :cond_5f
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->c:[Ljava/lang/String;

    goto :goto_d
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
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
    .line 140
    const v0, 0x7fffffff

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 143
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v3

    if-ge v3, v1, :cond_6d

    .line 144
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v0

    :goto_1e
    move v1, v0

    .line 146
    goto :goto_8

    .line 147
    :cond_20
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 148
    const-string/jumbo v0, "Cookie"

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v0, ": "

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "$Version="

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 153
    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v2, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/cookie/Cookie;I)V

    goto :goto_48

    .line 157
    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0

    :cond_6d
    move v0, v1

    goto :goto_1e
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 8
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
    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 165
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v3

    .line 166
    new-instance v4, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 167
    const-string/jumbo v5, "Cookie: "

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v5, "$Version="

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v5, "; "

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v4, v0, v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/cookie/Cookie;I)V

    .line 172
    new-instance v0, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 174
    :cond_49
    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 228
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
    .line 98
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 101
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized cookie header \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
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

    .line 104
    :cond_3e
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->e()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 4
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
    .line 123
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    sget-object v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a:Lcz/msebera/android/httpclient/cookie/CookiePathComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    .line 132
    :cond_18
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->d:Z

    if-eqz v0, :cond_21

    .line 133
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 135
    :goto_20
    return-object v0

    :cond_21
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_20
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 6

    .prologue
    .line 111
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v0

    .line 113
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    .line 114
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1c
    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 117
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2e
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 120
    return-void
.end method

.method protected a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/cookie/Cookie;I)V
    .registers 6

    .prologue
    .line 210
    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 212
    instance-of v0, p2, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_31

    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string/jumbo v1, "path"

    .line 213
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 214
    const-string/jumbo v0, "; "

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "$Path"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    :cond_31
    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 219
    instance-of v0, p2, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_57

    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string/jumbo v1, "domain"

    .line 220
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 221
    const-string/jumbo v0, "; "

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, "$Domain"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    :cond_57
    return-void
.end method

.method protected a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/16 v1, 0x22

    .line 188
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 190
    if-eqz p3, :cond_18

    .line 191
    if-lez p4, :cond_19

    .line 192
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 193
    invoke-virtual {p1, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 199
    :cond_18
    :goto_18
    return-void

    .line 196
    :cond_19
    invoke-virtual {p1, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public b()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    const-string/jumbo v0, "rfc2109"

    return-object v0
.end method
