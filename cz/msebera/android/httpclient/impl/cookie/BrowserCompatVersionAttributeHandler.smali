.class public Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "BrowserCompatVersionAttributeHandler.java"


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
.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 53
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    if-nez p2, :cond_11

    .line 55
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_11
    const/4 v0, 0x0

    .line 59
    :try_start_12
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_1a

    move-result v0

    .line 63
    :goto_16
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/SetCookie;->a(I)V

    .line 64
    return-void

    .line 60
    :catch_1a
    move-exception v1

    goto :goto_16
.end method
