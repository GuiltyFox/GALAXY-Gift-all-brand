.class public Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;
.super Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
.source "CookieRestrictionViolationException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
