.class public Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/Credentials;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "Username:password string"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 60
    if-ltz v0, :cond_26

    .line 61
    new-instance v1, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    .line 62
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->b:Ljava/lang/String;

    .line 67
    :goto_25
    return-void

    .line 64
    :cond_26
    new-instance v0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->b:Ljava/lang/String;

    goto :goto_25
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string/jumbo v0, "Username"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    .line 80
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->b:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public a()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 102
    if-ne p0, p1, :cond_4

    .line 111
    :cond_3
    :goto_3
    return v0

    .line 105
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    if-eqz v1, :cond_14

    .line 106
    check-cast p1, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    .line 107
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 111
    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;->a:Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
