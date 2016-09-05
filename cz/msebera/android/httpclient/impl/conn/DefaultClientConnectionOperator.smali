.class public Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final b:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field protected final c:Lcz/msebera/android/httpclient/conn/DnsResolver;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 4

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 108
    const-string/jumbo v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 110
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->c:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 111
    return-void
.end method

.method private a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 3

    .prologue
    .line 136
    const-string/jumbo v0, "http.scheme-registry"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 138
    if-nez v0, :cond_d

    .line 139
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->b:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 141
    :cond_d
    return-object v0
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .prologue
    .line 132
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 10

    .prologue
    .line 206
    const-string/jumbo v0, "Connection"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v0, "Target host"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v0, "Parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->c()Z

    move-result v0

    const-string/jumbo v1, "Connection must be open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 211
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 212
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    instance-of v0, v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    const-string/jumbo v2, "Socket factory must implement SchemeLayeredSocketFactory"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    .line 217
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->i()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a(I)I

    move-result v1

    .line 216
    invoke-interface {v0, v2, v3, v1, p4}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v1, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 219
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {p1, v1, p2, v0, p4}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 220
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 19

    .prologue
    .line 150
    const-string/jumbo v2, "Connection"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v2, "Target host"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v2, "HTTP parameters"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->c()Z

    move-result v2

    if-nez v2, :cond_a5

    const/4 v2, 0x1

    :goto_1b
    const-string/jumbo v3, "Connection must not be open"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 155
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 156
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->b()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v6

    .line 159
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    .line 160
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->a(I)I

    move-result v8

    .line 161
    const/4 v2, 0x0

    :goto_44
    array-length v3, v7

    if-ge v2, v3, :cond_a4

    .line 162
    aget-object v4, v7, v2

    .line 163
    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_a8

    const/4 v3, 0x1

    .line 165
    :goto_4f
    move-object/from16 v0, p5

    invoke-interface {v6, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v5

    .line 166
    invoke-interface {p1, v5, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    .line 168
    new-instance v9, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    invoke-direct {v9, p2, v4, v8}, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;I)V

    .line 169
    const/4 v4, 0x0

    .line 170
    if-eqz p3, :cond_68

    .line 171
    new-instance v4, Ljava/net/InetSocketAddress;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 173
    :cond_68
    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v10

    if-eqz v10, :cond_89

    .line 174
    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connecting to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 177
    :cond_89
    :try_start_89
    move-object/from16 v0, p5

    invoke-interface {v6, v5, v9, v4, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v4

    .line 178
    if-eq v5, v4, :cond_e5

    .line 180
    invoke-interface {p1, v4, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    .line 182
    :goto_94
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v4, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 183
    invoke-interface {v6, v4}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    move-object/from16 v0, p5

    invoke-interface {p1, v4, v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    :try_end_a4
    .catch Ljava/net/ConnectException; {:try_start_89 .. :try_end_a4} :catch_aa
    .catch Lcz/msebera/android/httpclient/conn/ConnectTimeoutException; {:try_start_89 .. :try_end_a4} :catch_ae

    .line 199
    :cond_a4
    return-void

    .line 153
    :cond_a5
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 163
    :cond_a8
    const/4 v3, 0x0

    goto :goto_4f

    .line 185
    :catch_aa
    move-exception v4

    .line 186
    if-eqz v3, :cond_b2

    .line 187
    throw v4

    .line 189
    :catch_ae
    move-exception v4

    .line 190
    if-eqz v3, :cond_b2

    .line 191
    throw v4

    .line 194
    :cond_b2
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 195
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " timed out. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Connection will be retried using another IP address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 161
    :cond_e1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_44

    :cond_e5
    move-object v4, v5

    goto :goto_94
.end method

.method protected a(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 235
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->c(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 236
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 238
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->d(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    .line 239
    if-ltz v1, :cond_1a

    .line 240
    if-lez v1, :cond_1b

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 242
    :cond_1a
    return-void

    .line 240
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->c:Lcz/msebera/android/httpclient/conn/DnsResolver;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/DnsResolver;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
