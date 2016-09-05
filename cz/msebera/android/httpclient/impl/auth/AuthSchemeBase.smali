.class public abstract Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;


# instance fields
.field private a:Lcz/msebera/android/httpclient/auth/ChallengeState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .registers 5

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/Header;)V
    .registers 6

    .prologue
    .line 90
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 93
    sget-object v0, Lcz/msebera/android/httpclient/auth/ChallengeState;->a:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a:Lcz/msebera/android/httpclient/auth/ChallengeState;

    .line 102
    :goto_17
    instance-of v0, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_63

    move-object v0, p1

    .line 103
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    .line 104
    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->b()I

    move-result v0

    .line 114
    :goto_28
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v2

    if-ge v0, v2, :cond_80

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 94
    :cond_3b
    const-string/jumbo v1, "Proxy-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 95
    sget-object v0, Lcz/msebera/android/httpclient/auth/ChallengeState;->b:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a:Lcz/msebera/android/httpclient/auth/ChallengeState;

    goto :goto_17

    .line 97
    :cond_49
    new-instance v1, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected header name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_63
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_72

    .line 108
    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_72
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 111
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    goto :goto_28

    :cond_80
    move v2, v0

    .line 118
    :goto_81
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v3

    if-ge v2, v3, :cond_94

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v3

    if-nez v3, :cond_94

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 122
    :cond_94
    invoke-virtual {v1, v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bc

    .line 124
    new-instance v1, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid scheme identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_bc
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    .line 128
    return-void
.end method

.method protected abstract a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a:Lcz/msebera/android/httpclient/auth/ChallengeState;

    sget-object v1, Lcz/msebera/android/httpclient/auth/ChallengeState;->b:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->a()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_d

    .line 163
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
