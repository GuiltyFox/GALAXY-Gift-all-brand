.class public Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-eqz p1, :cond_8

    :goto_5
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 64
    return-void

    .line 63
    :cond_8
    new-instance p1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    goto :goto_5
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 8

    .prologue
    .line 76
    invoke-interface {p3, p1, p2, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Authentication required"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->e:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v0, v1, :cond_1d

    .line 79
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 81
    :cond_1d
    const/4 v0, 0x1

    .line 95
    :goto_1e
    return v0

    .line 83
    :cond_1f
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator$1;->a:[I

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 93
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    .line 95
    :goto_33
    :pswitch_33
    const/4 v0, 0x0

    goto :goto_1e

    .line 86
    :pswitch_35
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Authentication succeeded"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->e:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    .line 88
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    goto :goto_33

    .line 83
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_35
        :pswitch_33
    .end packed-switch
.end method

.method public b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    :try_start_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requested authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 109
    :cond_27
    invoke-interface {p3, p1, p2, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v3

    .line 110
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "Response contains no authentication challenges"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 170
    :goto_3a
    return v0

    .line 115
    :cond_3b
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    .line 116
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator$1;->a:[I

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v5

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_11e

    .line 154
    :cond_4e
    :goto_4e
    invoke-interface {p3, v3, p1, p2, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->a(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Queue;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_11b

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11b

    .line 156
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 157
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Selected authentication options: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 159
    :cond_7b
    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->b:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v3}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    .line 160
    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Ljava/util/Queue;)V

    move v0, v2

    .line 161
    goto :goto_3a

    :pswitch_85
    move v0, v1

    .line 118
    goto :goto_3a

    .line 120
    :pswitch_87
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V
    :try_end_8a
    .catch Lcz/msebera/android/httpclient/auth/MalformedChallengeException; {:try_start_2 .. :try_end_8a} :catch_8b

    goto :goto_4e

    .line 165
    :catch_8b
    move-exception v0

    .line 166
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 167
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Malformed challenge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c(Ljava/lang/Object;)V

    .line 169
    :cond_b1
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V

    move v0, v1

    .line 170
    goto :goto_3a

    .line 124
    :pswitch_b6
    if-nez v4, :cond_cf

    .line 125
    :try_start_b8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "Auth scheme is null"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x0

    invoke-interface {p3, p1, v0, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 127
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V

    .line 128
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->d:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    move v0, v1

    .line 129
    goto/16 :goto_3a

    .line 132
    :cond_cf
    :pswitch_cf
    if-eqz v4, :cond_4e

    .line 133
    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    .line 135
    if-eqz v0, :cond_116

    .line 136
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v5, "Authorization challenge processed"

    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 137
    invoke-interface {v4, v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a(Lcz/msebera/android/httpclient/Header;)V

    .line 138
    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->d()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 139
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "Authentication failed"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->c()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 141
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V

    .line 142
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->d:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    move v0, v1

    .line 143
    goto/16 :goto_3a

    .line 145
    :cond_10e
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->c:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->a(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    move v0, v2

    .line 146
    goto/16 :goto_3a

    .line 149
    :cond_116
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->a()V
    :try_end_119
    .catch Lcz/msebera/android/httpclient/auth/MalformedChallengeException; {:try_start_b8 .. :try_end_119} :catch_8b

    goto/16 :goto_4e

    :cond_11b
    move v0, v1

    .line 163
    goto/16 :goto_3a

    .line 116
    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_b6
        :pswitch_87
        :pswitch_85
        :pswitch_cf
    .end packed-switch
.end method
