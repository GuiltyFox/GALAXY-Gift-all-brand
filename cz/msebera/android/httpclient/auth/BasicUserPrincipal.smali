.class public final Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;
.super Ljava/lang/Object;
.source "BasicUserPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "User name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 67
    if-ne p0, p1, :cond_4

    .line 76
    :cond_3
    :goto_3
    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    if-eqz v1, :cond_14

    .line 71
    check-cast p1, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    .line 72
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 60
    const/16 v0, 0x11

    .line 61
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string/jumbo v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
