.class public Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;
.super Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

.field private b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>(Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>()V

    .line 67
    const-string/jumbo v0, "NTLM engine"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->a:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 69
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->a:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .registers 9

    .prologue
    .line 122
    .line 124
    :try_start_0
    check-cast p1, Lcz/msebera/android/httpclient/auth/NTCredentials;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_11

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->f:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_34

    .line 132
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string/jumbo v1, "NTLM authentication failed"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :catch_11
    move-exception v0

    .line 126
    new-instance v0, Lcz/msebera/android/httpclient/auth/InvalidCredentialsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_34
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_6e

    .line 134
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->a:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 135
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->d()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->e()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->c:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 149
    :goto_4c
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 150
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->e()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 151
    const-string/jumbo v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 155
    :goto_5f
    const-string/jumbo v2, ": NTLM "

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v0

    .line 138
    :cond_6e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->d:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_91

    .line 139
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->a:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 140
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->c()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->b()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->d()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    .line 139
    invoke-interface/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->e:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    goto :goto_4c

    .line 147
    :cond_91
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_ad
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_5f
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string/jumbo v0, "ntlm"

    return-object v0
.end method

.method protected a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .registers 6

    .prologue
    .line 102
    invoke-virtual {p1, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->a:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_19

    .line 105
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 117
    :cond_18
    :goto_18
    return-void

    .line 107
    :cond_19
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->f:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    goto :goto_18

    .line 110
    :cond_1e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->c:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_35

    .line 111
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->f:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 112
    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string/jumbo v1, "Out of sequence NTLM response message"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_35
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->c:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_18

    .line 114
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->d:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    goto :goto_18
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->e:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->f:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
