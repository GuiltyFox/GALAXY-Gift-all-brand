.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965CommentUrlAttributeHandler.java"

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
    .registers 3

    .prologue
    .line 60
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 52
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_9

    .line 53
    check-cast p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    .line 54
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/cookie/SetCookie2;->a_(Ljava/lang/String;)V

    .line 56
    :cond_9
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 4

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
