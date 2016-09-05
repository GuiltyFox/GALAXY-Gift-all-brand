.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "RFC2109VersionHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 5

    .prologue
    .line 68
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->j()I

    move-result v0

    if-gez v0, :cond_15

    .line 70
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Cookie version may not be negative"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_15
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 50
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    if-nez p2, :cond_11

    .line 52
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    .line 55
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Blank value for version attribute"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_24
    :try_start_24
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/SetCookie;->a(I)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 63
    return-void

    .line 59
    :catch_2c
    move-exception v0

    .line 60
    new-instance v1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
