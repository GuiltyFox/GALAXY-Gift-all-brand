.class abstract Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;
.super Ljava/lang/Object;
.source "AuthenticationStrategyImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/AuthenticationStrategy;


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "negotiate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Kerberos"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "NTLM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Digest"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Basic"

    aput-object v2, v0, v1

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->b:Ljava/util/List;

    .line 70
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 82
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->c:I

    .line 83
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->d:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method abstract a(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Queue;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/Header;",
            ">;",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const-string/jumbo v0, "Map of auth challenges"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v0, "Host"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v0, "HTTP response"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v0, "HTTP context"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-static {p4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 144
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 145
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->f()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v4

    .line 146
    if-nez v4, :cond_31

    .line 147
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Auth scheme registry not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    move-object v0, v3

    .line 195
    :goto_30
    return-object v0

    .line 150
    :cond_31
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->g()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v5

    .line 151
    if-nez v5, :cond_41

    .line 152
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Credentials provider not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    move-object v0, v3

    .line 153
    goto :goto_30

    .line 155
    :cond_41
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->k()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Ljava/util/Collection;

    move-result-object v0

    .line 157
    if-nez v0, :cond_4d

    .line 158
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->b:Ljava/util/List;

    .line 160
    :cond_4d
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 161
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Authentication schemes in the order of preference: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 164
    :cond_6e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_72
    :goto_72
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/Header;

    .line 166
    if-eqz v1, :cond_e8

    .line 167
    invoke-interface {v4, v0}, Lcz/msebera/android/httpclient/config/Lookup;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;

    .line 168
    if-nez v2, :cond_bd

    .line 169
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 170
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Authentication scheme "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c(Ljava/lang/Object;)V

    goto :goto_72

    .line 175
    :cond_bd
    invoke-interface {v2, p4}, Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 176
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a(Lcz/msebera/android/httpclient/Header;)V

    .line 178
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 179
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v7

    .line 181
    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->b()Ljava/lang/String;

    move-result-object v8

    .line 182
    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v2, v7, v8, v9}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v5, v1}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->a(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_72

    .line 186
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthOption;

    invoke-direct {v2, v0, v1}, Lcz/msebera/android/httpclient/auth/AuthOption;-><init>(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 189
    :cond_e8
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 190
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Challenge for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " authentication scheme not available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto/16 :goto_72

    :cond_112
    move-object v0, v3

    .line 195
    goto/16 :goto_30
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 8

    .prologue
    .line 200
    const-string/jumbo v0, "Host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v0, "Auth scheme"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v1

    .line 206
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a(Lcz/msebera/android/httpclient/auth/AuthScheme;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 207
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->h()Lcz/msebera/android/httpclient/client/AuthCache;

    move-result-object v0

    .line 208
    if-nez v0, :cond_2a

    .line 209
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>()V

    .line 210
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/client/AuthCache;)V

    .line 212
    :cond_2a
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 213
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 216
    :cond_5a
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/client/AuthCache;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 218
    :cond_5d
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 6

    .prologue
    .line 90
    const-string/jumbo v0, "HTTP response"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    .line 92
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->c:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected a(Lcz/msebera/android/httpclient/auth/AuthScheme;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 221
    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->d()Z

    move-result v1

    if-nez v1, :cond_a

    .line 226
    :cond_9
    :goto_9
    return v0

    .line 224
    :cond_a
    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string/jumbo v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string/jumbo v2, "Digest"

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_20
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string/jumbo v0, "HTTP response"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->d:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    .line 101
    new-instance v7, Ljava/util/HashMap;

    array-length v0, v6

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    array-length v8, v6

    move v5, v2

    :goto_15
    if-ge v5, v8, :cond_81

    aget-object v1, v6, v5

    .line 105
    instance-of v0, v1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_3e

    move-object v0, v1

    .line 106
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v3

    move-object v0, v1

    .line 107
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->b()I

    move-result v0

    .line 117
    :goto_2b
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v4

    if-ge v0, v4, :cond_5c

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v4

    invoke-static {v4}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 109
    :cond_3e
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v3

    .line 110
    if-nez v3, :cond_4d

    .line 111
    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_4d
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 114
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    move-object v3, v0

    move v0, v2

    .line 115
    goto :goto_2b

    :cond_5c
    move v4, v0

    .line 121
    :goto_5d
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v9

    if-ge v4, v9, :cond_70

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v9

    invoke-static {v9}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v9

    if-nez v9, :cond_70

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 125
    :cond_70
    invoke-virtual {v3, v0, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_15

    .line 128
    :cond_81
    return-object v7
.end method

.method public b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 8

    .prologue
    .line 231
    const-string/jumbo v0, "Host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->h()Lcz/msebera/android/httpclient/client/AuthCache;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_3a

    .line 238
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 239
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clearing cached auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 241
    :cond_37
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/client/AuthCache;->b(Lcz/msebera/android/httpclient/HttpHost;)V

    .line 243
    :cond_3a
    return-void
.end method
