.class public Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;
.super Ljava/lang/Object;
.source "BrowserCompatSpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x0

    sget-object v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->a:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    .line 70
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;->a:[Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;->b:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_23

    .line 76
    const-string/jumbo v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 78
    if-eqz v0, :cond_2b

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 82
    :goto_1a
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;->b:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {v1, v0, v2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    move-object v0, v1

    .line 84
    :goto_22
    return-object v0

    :cond_23
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;->b:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    goto :goto_22

    :cond_2b
    move-object v0, v1

    goto :goto_1a
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 4

    .prologue
    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
