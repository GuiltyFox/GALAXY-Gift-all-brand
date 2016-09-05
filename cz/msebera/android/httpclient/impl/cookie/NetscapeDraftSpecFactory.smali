.class public Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;-><init>([Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;->a:[Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 4

    .prologue
    .line 62
    if-eqz p1, :cond_21

    .line 64
    const/4 v1, 0x0

    .line 65
    const-string/jumbo v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 67
    if-eqz v0, :cond_27

    .line 68
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 69
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 71
    :goto_1a
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 73
    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>()V

    goto :goto_20

    :cond_27
    move-object v0, v1

    goto :goto_1a
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 4

    .prologue
    .line 78
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
