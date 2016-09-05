.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965VersionAttributeHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 5

    .prologue
    .line 80
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_22

    .line 82
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_22

    check-cast p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string/jumbo v0, "version"

    .line 83
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 84
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_22
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    if-nez p2, :cond_11

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_11
    :try_start_11
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_20

    move-result v0

    .line 69
    :goto_15
    if-gez v0, :cond_23

    .line 70
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Invalid cookie version."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catch_20
    move-exception v0

    .line 67
    const/4 v0, -0x1

    goto :goto_15

    .line 72
    :cond_23
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/SetCookie;->a(I)V

    .line 73
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 4

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method
