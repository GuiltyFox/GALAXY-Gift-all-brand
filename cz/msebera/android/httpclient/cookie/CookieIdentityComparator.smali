.class public Lcz/msebera/android/httpclient/cookie/CookieIdentityComparator;
.super Ljava/lang/Object;
.source "CookieIdentityComparator.java"

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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I
    .registers 7

    .prologue
    const/16 v2, 0x2e

    const/4 v3, -0x1

    .line 49
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 50
    if-nez v0, :cond_27

    .line 52
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_40

    .line 54
    const-string/jumbo v0, ""

    .line 58
    :cond_1a
    :goto_1a
    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->f()Ljava/lang/String;

    move-result-object v1

    .line 59
    if-nez v1, :cond_5b

    .line 60
    const-string/jumbo v1, ""

    .line 64
    :cond_23
    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_27
    if-nez v0, :cond_3f

    .line 67
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_32

    .line 69
    const-string/jumbo v0, "/"

    .line 71
    :cond_32
    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->g()Ljava/lang/String;

    move-result-object v1

    .line 72
    if-nez v1, :cond_3b

    .line 73
    const-string/jumbo v1, "/"

    .line 75
    :cond_3b
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 77
    :cond_3f
    return v0

    .line 55
    :cond_40
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_1a

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 61
    :cond_5b
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_23

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 43
    check-cast p1, Lcz/msebera/android/httpclient/cookie/Cookie;

    check-cast p2, Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieIdentityComparator;->a(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result v0

    return v0
.end method
