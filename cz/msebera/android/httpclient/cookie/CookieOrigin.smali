.class public final Lcz/msebera/android/httpclient/cookie/CookieOrigin;
.super Ljava/lang/Object;
.source "CookieOrigin.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 6

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "Host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 51
    const-string/jumbo v0, "Port"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 52
    const-string/jumbo v0, "Path"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->a:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->b:I

    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 56
    iput-object p3, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c:Ljava/lang/String;

    .line 60
    :goto_2b
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->d:Z

    .line 61
    return-void

    .line 58
    :cond_2e
    const-string/jumbo v0, "/"

    iput-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c:Ljava/lang/String;

    goto :goto_2b
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->d:Z

    if-eqz v1, :cond_14

    .line 84
    const-string/jumbo v1, "(secure)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_14
    iget-object v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
