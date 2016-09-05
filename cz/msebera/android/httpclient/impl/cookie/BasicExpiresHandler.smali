.class public Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicExpiresHandler.java"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 48
    const-string/jumbo v0, "Array of date patterns"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;->a:[Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 54
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    if-nez p2, :cond_11

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Missing value for expires attribute"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_11
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;->a:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 59
    if-nez v0, :cond_33

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to parse expires attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_33
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/SetCookie;->b(Ljava/util/Date;)V

    .line 64
    return-void
.end method
