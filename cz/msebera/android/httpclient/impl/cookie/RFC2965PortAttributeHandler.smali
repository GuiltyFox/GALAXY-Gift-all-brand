.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static a(I[I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 94
    .line 95
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget v3, p1, v1

    .line 96
    if-ne p0, v3, :cond_b

    .line 97
    const/4 v0, 0x1

    .line 101
    :cond_a
    return v0

    .line 95
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)[I
    .registers 5

    .prologue
    .line 66
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v2, v0, [I

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_f
    :try_start_f
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 71
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 72
    aget v3, v2, v0

    if-gez v3, :cond_4f

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Invalid Port attribute."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_30} :catch_30

    .line 77
    :catch_30
    move-exception v0

    .line 78
    new-instance v1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Port attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 81
    :cond_52
    return-object v2
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 6

    .prologue
    .line 125
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c()I

    move-result v1

    .line 128
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_33

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string/jumbo v2, "port"

    .line 129
    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 130
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->h()[I

    move-result-object v0

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;->a(I[I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 131
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_33
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 109
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_1f

    .line 111
    check-cast p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    .line 112
    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 113
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/SetCookie2;->a([I)V

    .line 117
    :cond_1f
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 144
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c()I

    move-result v2

    .line 147
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_35

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string/jumbo v3, "port"

    .line 148
    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 149
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->h()[I

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v1

    .line 157
    :goto_28
    return v0

    .line 153
    :cond_29
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->h()[I

    move-result-object v0

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;->a(I[I)Z

    move-result v0

    if-nez v0, :cond_35

    move v0, v1

    .line 154
    goto :goto_28

    .line 157
    :cond_35
    const/4 v0, 0x1

    goto :goto_28
.end method
