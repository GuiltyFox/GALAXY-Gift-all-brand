.class public Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;
.super Ljava/lang/Object;
.source "BasicPathHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 6

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;->b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal path attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\". Path of origin: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3a
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 52
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-static {p2}, Lcz/msebera/android/httpclient/util/TextUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_c
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/cookie/SetCookie;->e(Ljava/lang/String;)V

    .line 54
    return-void

    .line 53
    :cond_10
    const-string/jumbo p2, "/"

    goto :goto_c
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->b()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1b

    .line 71
    const-string/jumbo v0, "/"

    .line 73
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_34

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_34
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 79
    if-eqz v3, :cond_5d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_5d

    .line 80
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_5b

    move v0, v1

    .line 84
    :goto_5a
    return v0

    :cond_5b
    move v0, v2

    .line 81
    goto :goto_5a

    :cond_5d
    move v0, v3

    goto :goto_5a
.end method
