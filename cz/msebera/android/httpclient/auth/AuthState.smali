.class public Lcz/msebera/android/httpclient/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# instance fields
.field private a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field private b:Lcz/msebera/android/httpclient/auth/AuthScheme;

.field private c:Lcz/msebera/android/httpclient/auth/AuthScope;

.field private d:Lcz/msebera/android/httpclient/auth/Credentials;

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    .line 69
    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->e:Ljava/util/Queue;

    .line 70
    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->b:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 71
    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->c:Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 72
    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->d:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 73
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V
    .registers 2

    .prologue
    .line 86
    if-eqz p1, :cond_5

    :goto_2
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    .line 87
    return-void

    .line 86
    :cond_5
    sget-object p1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    goto :goto_2
.end method

.method public a(Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    if-nez p1, :cond_6

    .line 180
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V

    .line 184
    :goto_5
    return-void

    .line 183
    :cond_6
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->b:Lcz/msebera/android/httpclient/auth/AuthScheme;

    goto :goto_5
.end method

.method public a(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 4

    .prologue
    .line 112
    const-string/jumbo v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v0, "Credentials"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->b:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 115
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/AuthState;->d:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->e:Ljava/util/Queue;

    .line 117
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->d:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 196
    return-void
.end method

.method public a(Ljava/util/Queue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    const-string/jumbo v0, "Queue of auth options"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 147
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->e:Ljava/util/Queue;

    .line 148
    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->b:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 149
    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->d:Lcz/msebera/android/httpclient/auth/Credentials;

    .line 150
    return-void
.end method

.method public b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object v0
.end method

.method public c()Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->b:Lcz/msebera/android/httpclient/auth/AuthScheme;

    return-object v0
.end method

.method public d()Lcz/msebera/android/httpclient/auth/Credentials;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->d:Lcz/msebera/android/httpclient/auth/Credentials;

    return-object v0
.end method

.method public e()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->e:Ljava/util/Queue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    const-string/jumbo v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->b:Lcz/msebera/android/httpclient/auth/AuthScheme;

    if-eqz v1, :cond_33

    .line 227
    const-string/jumbo v1, "auth scheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthState;->b:Lcz/msebera/android/httpclient/auth/AuthScheme;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_33
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->d:Lcz/msebera/android/httpclient/auth/Credentials;

    if-eqz v1, :cond_3d

    .line 230
    const-string/jumbo v1, "credentials present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
