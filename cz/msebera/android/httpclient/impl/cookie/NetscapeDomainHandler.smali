.class public Lcz/msebera/android/httpclient/impl/cookie/NetscapeDomainHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;
.source "NetscapeDomainHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    .line 48
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 84
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string/jumbo v1, ".COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, ".EDU"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, ".NET"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, ".GOV"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, ".MIL"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, ".ORG"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, ".INT"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_45
    const/4 v0, 0x1

    :goto_46
    return v0

    :cond_47
    const/4 v0, 0x0

    goto :goto_46
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 7

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 55
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->a()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 58
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "."

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 60
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDomainHandler;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 61
    const/4 v2, 0x2

    if-ge v0, v2, :cond_75

    .line 62
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" violates the Netscape cookie specification for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "special domains"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_51
    const/4 v2, 0x3

    if-ge v0, v2, :cond_75

    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" violates the Netscape cookie specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_75
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 5

    .prologue
    .line 96
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->a()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v1

    .line 100
    if-nez v1, :cond_18

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_17
    return v0

    :cond_18
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_17
.end method
