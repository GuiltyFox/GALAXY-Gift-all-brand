.class public Lcz/msebera/android/httpclient/auth/NTCredentials;
.super Ljava/lang/Object;
.source "NTCredentials.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/Credentials;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public a()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 153
    if-ne p0, p1, :cond_4

    .line 163
    :cond_3
    :goto_3
    return v0

    .line 156
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/auth/NTCredentials;

    if-eqz v1, :cond_1e

    .line 157
    check-cast p1, Lcz/msebera/android/httpclient/auth/NTCredentials;

    .line 158
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/NTCredentials;->a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->c:Ljava/lang/String;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/NTCredentials;->c:Ljava/lang/String;

    .line 159
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 163
    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 145
    const/16 v0, 0x11

    .line 146
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 148
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string/jumbo v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->a:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v1, "][workstation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
