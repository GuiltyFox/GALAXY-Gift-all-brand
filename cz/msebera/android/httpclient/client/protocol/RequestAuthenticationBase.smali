.class abstract Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;
.super Ljava/lang/Object;
.source "RequestAuthenticationBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 53
    return-void
.end method

.method private a(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .registers 6

    .prologue
    .line 118
    const-string/jumbo v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    instance-of v0, p1, Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;

    if-eqz v0, :cond_11

    .line 120
    check-cast p1, Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;

    invoke-interface {p1, p2, p3, p4}, Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;->a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 122
    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    goto :goto_10
.end method

.method private a(Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .registers 3

    .prologue
    .line 110
    const-string/jumbo v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method a(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 10

    .prologue
    .line 59
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->d()Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v0

    .line 61
    sget-object v2, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase$1;->a:[I

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d8

    .line 97
    :cond_17
    :goto_17
    if-eqz v1, :cond_20

    .line 99
    :try_start_19
    invoke-direct {p0, v1, v0, p2, p3}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 100
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V
    :try_end_20
    .catch Lcz/msebera/android/httpclient/auth/AuthenticationException; {:try_start_19 .. :try_end_20} :catch_ac

    .line 107
    :cond_20
    :goto_20
    :pswitch_20
    return-void

    .line 65
    :pswitch_21
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 66
    invoke-interface {v1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_20

    .line 71
    :pswitch_2b
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->e()Ljava/util/Queue;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_a7

    .line 73
    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 74
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthOption;

    .line 75
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthOption;->a()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthOption;->b()Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v1, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 78
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 79
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Generating response to an authentication challenge using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    invoke-interface {v1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scheme"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 83
    :cond_74
    :try_start_74
    invoke-direct {p0, v1, v0, p2, p3}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 84
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V
    :try_end_7b
    .catch Lcz/msebera/android/httpclient/auth/AuthenticationException; {:try_start_74 .. :try_end_7b} :catch_7c

    goto :goto_20

    .line 86
    :catch_7c
    move-exception v0

    .line 87
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 88
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " authentication error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c(Ljava/lang/Object;)V

    goto :goto_31

    .line 94
    :cond_a7
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto/16 :goto_17

    .line 101
    :catch_ac
    move-exception v0

    .line 102
    iget-object v2, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->b()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 103
    iget-object v2, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " authentication error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->b(Ljava/lang/Object;)V

    goto/16 :goto_20

    .line 61
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method
