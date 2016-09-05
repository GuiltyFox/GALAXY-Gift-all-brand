.class public Lcz/msebera/android/httpclient/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcz/msebera/android/httpclient/cookie/Cookie;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 56
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-nez v0, :cond_9

    .line 58
    const-string/jumbo v0, "/"

    .line 60
    :cond_9
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_25
    return-object v0
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;->a(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;->a(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 77
    :cond_f
    :goto_f
    return v0

    .line 71
    :cond_10
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 72
    const/4 v0, -0x1

    goto :goto_f

    .line 73
    :cond_18
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 74
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 50
    check-cast p1, Lcz/msebera/android/httpclient/cookie/Cookie;

    check-cast p2, Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result v0

    return v0
.end method
