.class public Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/UserTokenHandler;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->a:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcz/msebera/android/httpclient/auth/AuthState;)Ljava/security/Principal;
    .registers 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->d()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 93
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/auth/AuthState;->d()Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1d

    .line 95
    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/Credentials;->a()Ljava/security/Principal;

    move-result-object v0

    .line 98
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 64
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->i()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_19

    .line 70
    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->a(Lcz/msebera/android/httpclient/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 71
    if-nez v1, :cond_19

    .line 72
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->j()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->a(Lcz/msebera/android/httpclient/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 77
    :cond_19
    if-nez v1, :cond_36

    .line 78
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->l()Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->c()Z

    move-result v2

    if-eqz v2, :cond_36

    instance-of v2, v0, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-eqz v2, :cond_36

    .line 80
    check-cast v0, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->k()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_36

    .line 82
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 87
    :goto_35
    return-object v0

    :cond_36
    move-object v0, v1

    goto :goto_35
.end method
