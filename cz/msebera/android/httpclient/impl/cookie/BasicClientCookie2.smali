.class public Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;
.super Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;
.source "BasicClientCookie2.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/SetCookie2;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[I

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a([I)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->b:[I

    .line 66
    return-void
.end method

.method public a(Ljava/util/Date;)Z
    .registers 3

    .prologue
    .line 88
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->c:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->a(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a_(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->a:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 78
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->c:Z

    .line 79
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 93
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;

    .line 94
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->b:[I

    if-eqz v1, :cond_14

    .line 95
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->b:[I

    .line 97
    :cond_14
    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->c:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public h()[I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->b:[I

    return-object v0
.end method
