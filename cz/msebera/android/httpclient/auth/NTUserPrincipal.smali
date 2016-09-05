.class public Lcz/msebera/android/httpclient/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 95
    if-ne p0, p1, :cond_4

    .line 105
    :cond_3
    :goto_3
    return v0

    .line 98
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    if-eqz v1, :cond_1e

    .line 99
    check-cast p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    .line 100
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->a:Ljava/lang/String;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->b:Ljava/lang/String;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->b:Ljava/lang/String;

    .line 101
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 87
    const/16 v0, 0x11

    .line 88
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 90
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->c:Ljava/lang/String;

    return-object v0
.end method
