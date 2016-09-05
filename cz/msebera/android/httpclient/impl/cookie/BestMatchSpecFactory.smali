.class public Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;
.super Ljava/lang/Object;
.source "BestMatchSpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;-><init>([Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->a:[Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->b:Z

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 5

    .prologue
    .line 64
    if-eqz p1, :cond_29

    .line 66
    const/4 v1, 0x0

    .line 67
    const-string/jumbo v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 69
    if-eqz v0, :cond_2f

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 73
    :goto_1a
    const-string/jumbo v1, "http.protocol.single-cookie-header"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 76
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;

    invoke-direct {v1, v0, v2}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    move-object v0, v1

    .line 78
    :goto_28
    return-object v0

    :cond_29
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>()V

    goto :goto_28

    :cond_2f
    move-object v0, v1

    goto :goto_1a
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->a:[Ljava/lang/String;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->b:Z

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-object v0
.end method
