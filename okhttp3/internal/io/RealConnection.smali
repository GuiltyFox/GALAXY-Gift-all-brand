.class public final Lokhttp3/internal/io/RealConnection;
.super Lokhttp3/internal/framed/FramedConnection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/Connection;


# instance fields
.field public b:Ljava/net/Socket;

.field public volatile c:Lokhttp3/internal/framed/FramedConnection;

.field public d:I

.field public e:Lokio/BufferedSource;

.field public f:Lokio/BufferedSink;

.field public g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/http/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:J

.field private final k:Lokhttp3/Route;

.field private l:Ljava/net/Socket;

.field private m:Lokhttp3/Handshake;

.field private n:Lokhttp3/Protocol;


# direct methods
.method public constructor <init>(Lokhttp3/Route;)V
    .registers 4

    .prologue
    .line 88
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->h:Ljava/util/List;

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/io/RealConnection;->j:J

    .line 89
    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    .line 90
    return-void
.end method

.method private a(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    :cond_21
    new-instance v4, Lokhttp3/internal/http/Http1xStream;

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    invoke-direct {v4, v2, v0, v1}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/internal/http/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 290
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v6, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 291
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()Lokio/Timeout;

    move-result-object v0

    int-to-long v6, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 292
    invoke-virtual {p3}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lokhttp3/internal/http/Http1xStream;->a(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v4}, Lokhttp3/internal/http/Http1xStream;->b()V

    .line 294
    invoke-virtual {v4}, Lokhttp3/internal/http/Http1xStream;->c()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lokhttp3/Response$Builder;->a(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v5

    .line 297
    invoke-static {v5}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Response;)J

    move-result-wide v0

    .line 298
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_64

    .line 299
    const-wide/16 v0, 0x0

    .line 301
    :cond_64
    invoke-virtual {v4, v0, v1}, Lokhttp3/internal/http/Http1xStream;->b(J)Lokio/Source;

    move-result-object v0

    .line 302
    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lokhttp3/internal/Util;->b(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 303
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 305
    invoke-virtual {v5}, Lokhttp3/Response;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_e8

    .line 326
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    invoke-virtual {v5}, Lokhttp3/Response;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :sswitch_98
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->c()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->f()Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->f()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 312
    :cond_b0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    move-object p3, v2

    .line 321
    :goto_ba
    return-object p3

    .line 317
    :sswitch_bb
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->d()Lokhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-interface {v0, v1, v5}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p3

    .line 318
    if-nez p3, :cond_d6

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_d6
    const-string/jumbo v0, "close"

    const-string/jumbo v1, "Connection"

    invoke-virtual {v5, v1}, Lokhttp3/Response;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_ba

    .line 305
    nop

    :sswitch_data_e8
    .sparse-switch
        0xc8 -> :sswitch_98
        0x197 -> :sswitch_bb
    .end sparse-switch
.end method

.method private a(IIILokhttp3/internal/ConnectionSpecSelector;)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-direct {p0}, Lokhttp3/internal/io/RealConnection;->f()Lokhttp3/Request;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 144
    const/4 v0, 0x0

    .line 145
    const/16 v3, 0x15

    .line 147
    :goto_c
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_2a

    .line 148
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many tunnel connections attempted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2a
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->c(IIILokhttp3/internal/ConnectionSpecSelector;)V

    .line 152
    invoke-direct {p0, p2, p3, v1, v2}, Lokhttp3/internal/io/RealConnection;->a(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v1

    .line 154
    if-nez v1, :cond_37

    .line 164
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->a(IILokhttp3/internal/ConnectionSpecSelector;)V

    .line 165
    return-void

    .line 158
    :cond_37
    iget-object v4, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 159
    iput-object v5, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    .line 160
    iput-object v5, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    .line 161
    iput-object v5, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    goto :goto_c
.end method

.method private a(IILokhttp3/internal/ConnectionSpecSelector;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 195
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/io/RealConnection;->b(IILokhttp3/internal/ConnectionSpecSelector;)V

    .line 202
    :goto_10
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_62

    .line 203
    :cond_1c
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 205
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Builder;

    invoke-direct {v0, v2}, Lokhttp3/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    .line 206
    invoke-virtual {v2}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    iget-object v4, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    .line 207
    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p0}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection$Builder;->a()Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->d()V

    .line 213
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->b()I

    move-result v1

    iput v1, p0, Lokhttp3/internal/io/RealConnection;->g:I

    .line 214
    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->c:Lokhttp3/internal/framed/FramedConnection;

    .line 218
    :goto_58
    return-void

    .line 198
    :cond_59
    sget-object v0, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    .line 199
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    goto :goto_10

    .line 216
    :cond_62
    iput v2, p0, Lokhttp3/internal/io/RealConnection;->g:I

    goto :goto_58
.end method

.method private b(IIILokhttp3/internal/ConnectionSpecSelector;)V
    .registers 5

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->c(IIILokhttp3/internal/ConnectionSpecSelector;)V

    .line 171
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->a(IILokhttp3/internal/ConnectionSpecSelector;)V

    .line 172
    return-void
.end method

.method private b(IILokhttp3/internal/ConnectionSpecSelector;)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lokhttp3/Address;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 228
    :try_start_b
    iget-object v3, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    .line 229
    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->g()I

    move-result v5

    const/4 v6, 0x1

    .line 228
    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_24
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_24} :catch_136
    .catchall {:try_start_b .. :try_end_24} :catchall_d0

    .line 232
    :try_start_24
    invoke-virtual {p3, v0}, Lokhttp3/internal/ConnectionSpecSelector;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object v3

    .line 233
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->d()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 234
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v4

    .line 235
    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Address;->e()Ljava/util/List;

    move-result-object v6

    .line 234
    invoke-virtual {v4, v0, v5, v6}, Lokhttp3/internal/Platform;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 239
    :cond_41
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 240
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/Handshake;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v4

    .line 243
    invoke-virtual {v2}, Lokhttp3/Address;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_de

    .line 244
    invoke-virtual {v4}, Lokhttp3/Handshake;->b()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 245
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " not verified:\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-static {v1}, Lokhttp3/CertificatePinner;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-static {v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c0
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_c0} :catch_c0
    .catchall {:try_start_24 .. :try_end_c0} :catchall_131

    .line 267
    :catch_c0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 268
    :goto_c4
    :try_start_c4
    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_130

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_d0
    .catchall {:try_start_c4 .. :try_end_d0} :catchall_d0

    .line 271
    :catchall_d0
    move-exception v0

    :goto_d1
    if-eqz v1, :cond_da

    .line 272
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/internal/Platform;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 275
    :cond_da
    invoke-static {v1}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    throw v0

    .line 252
    :cond_de
    :try_start_de
    invoke-virtual {v2}, Lokhttp3/Address;->k()Lokhttp3/CertificatePinner;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v4}, Lokhttp3/Handshake;->b()Ljava/util/List;

    move-result-object v6

    .line 252
    invoke-virtual {v5, v2, v6}, Lokhttp3/CertificatePinner;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 256
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->d()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 257
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/Platform;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .line 259
    :cond_ff
    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    .line 260
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-static {v2}, Lokio/Okio;->b(Ljava/net/Socket;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    .line 261
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-static {v2}, Lokio/Okio;->a(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    .line 262
    iput-object v4, p0, Lokhttp3/internal/io/RealConnection;->m:Lokhttp3/Handshake;

    .line 263
    if-eqz v1, :cond_12d

    .line 264
    invoke-static {v1}, Lokhttp3/Protocol;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v1

    :goto_121
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;
    :try_end_123
    .catch Ljava/lang/AssertionError; {:try_start_de .. :try_end_123} :catch_c0
    .catchall {:try_start_de .. :try_end_123} :catchall_131

    .line 271
    if-eqz v0, :cond_12c

    .line 272
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/Platform;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 278
    :cond_12c
    return-void

    .line 264
    :cond_12d
    :try_start_12d
    sget-object v1, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;
    :try_end_12f
    .catch Ljava/lang/AssertionError; {:try_start_12d .. :try_end_12f} :catch_c0
    .catchall {:try_start_12d .. :try_end_12f} :catchall_131

    goto :goto_121

    .line 269
    :cond_130
    :try_start_130
    throw v0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_d0

    .line 271
    :catchall_131
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_d1

    .line 267
    :catch_136
    move-exception v0

    goto :goto_c4
.end method

.method private c(IIILokhttp3/internal/ConnectionSpecSelector;)V
    .registers 9

    .prologue
    .line 176
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    .line 179
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1c

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_53

    .line 180
    :cond_1c
    invoke-virtual {v0}, Lokhttp3/Address;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    .line 183
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 185
    :try_start_2b
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/internal/Platform;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_3a
    .catch Ljava/net/ConnectException; {:try_start_2b .. :try_end_3a} :catch_59

    .line 189
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->b(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    .line 190
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->a(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    .line 191
    return-void

    .line 180
    :cond_53
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_24

    .line 186
    :catch_59
    move-exception v0

    .line 187
    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()Lokhttp3/Request;
    .registers 5

    .prologue
    .line 338
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    .line 339
    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->a(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string/jumbo v1, "Host"

    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    .line 340
    invoke-virtual {v2}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string/jumbo v1, "Proxy-Connection"

    const-string/jumbo v2, "Keep-Alive"

    .line 341
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    .line 342
    invoke-static {}, Lokhttp3/internal/Version;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 338
    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/Route;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    return-object v0
.end method

.method public a(IIILjava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_e
    new-instance v3, Lokhttp3/internal/ConnectionSpecSelector;

    invoke-direct {v3, p4}, Lokhttp3/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_86

    sget-object v0, Lokhttp3/ConnectionSpec;->c:Lokhttp3/ConnectionSpec;

    .line 100
    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 101
    new-instance v0, Lokhttp3/internal/http/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CLEARTEXT communication not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 105
    :cond_46
    :goto_46
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    if-nez v2, :cond_85

    .line 107
    :try_start_4a
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->d()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 108
    invoke-direct {p0, p1, p2, p3, v3}, Lokhttp3/internal/io/RealConnection;->a(IIILokhttp3/internal/ConnectionSpecSelector;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_46

    .line 113
    :catch_56
    move-exception v2

    .line 114
    iget-object v4, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 115
    iget-object v4, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->a(Ljava/net/Socket;)V

    .line 116
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    .line 117
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->l:Ljava/net/Socket;

    .line 118
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    .line 119
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->f:Lokio/BufferedSink;

    .line 120
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->m:Lokhttp3/Handshake;

    .line 121
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    .line 123
    if-nez v0, :cond_81

    .line 124
    new-instance v0, Lokhttp3/internal/http/RouteException;

    invoke-direct {v0, v2}, Lokhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 129
    :goto_74
    if-eqz p5, :cond_7c

    invoke-virtual {v3, v2}, Lokhttp3/internal/ConnectionSpecSelector;->a(Ljava/io/IOException;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 130
    :cond_7c
    throw v0

    .line 111
    :cond_7d
    :try_start_7d
    invoke-direct {p0, p1, p2, p3, v3}, Lokhttp3/internal/io/RealConnection;->b(IIILokhttp3/internal/ConnectionSpecSelector;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_56

    goto :goto_46

    .line 126
    :cond_81
    invoke-virtual {v0, v2}, Lokhttp3/internal/http/RouteException;->a(Ljava/io/IOException;)V

    goto :goto_74

    .line 134
    :cond_85
    return-void

    :cond_86
    move-object v0, v1

    goto :goto_46
.end method

.method public a(Lokhttp3/internal/framed/FramedConnection;)V
    .registers 3

    .prologue
    .line 403
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->b()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/io/RealConnection;->g:I

    .line 404
    return-void
.end method

.method public a(Lokhttp3/internal/framed/FramedStream;)V
    .registers 3

    .prologue
    .line 398
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->k:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V

    .line 399
    return-void
.end method

.method public a(Z)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 366
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    move v0, v1

    .line 393
    :cond_1b
    :goto_1b
    return v0

    .line 370
    :cond_1c
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->c:Lokhttp3/internal/framed/FramedConnection;

    if-nez v2, :cond_1b

    .line 374
    if-eqz p1, :cond_1b

    .line 376
    :try_start_22
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_27} :catch_43
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_4c

    move-result v3

    .line 378
    :try_start_28
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 379
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->e:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->f()Z
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_45

    move-result v2

    if-eqz v2, :cond_3d

    .line 384
    :try_start_36
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    .line 380
    goto :goto_1b

    .line 384
    :cond_3d
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1b

    .line 386
    :catch_43
    move-exception v1

    goto :goto_1b

    .line 384
    :catchall_45
    move-exception v2

    iget-object v4, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_4c
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_4c} :catch_43
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4c} :catch_4c

    .line 388
    :catch_4c
    move-exception v0

    move v0, v1

    .line 389
    goto :goto_1b
.end method

.method public b()Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->c:Lokhttp3/internal/framed/FramedConnection;

    if-nez v0, :cond_e

    .line 420
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    .line 422
    :goto_a
    return-object v0

    .line 420
    :cond_b
    sget-object v0, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    goto :goto_a

    .line 422
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->a()Lokhttp3/Protocol;

    move-result-object v0

    goto :goto_a
.end method

.method public c()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->b:Ljava/net/Socket;

    return-object v0
.end method

.method public d()Lokhttp3/Handshake;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->m:Lokhttp3/Handshake;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->c:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    .line 428
    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    .line 430
    invoke-virtual {v1}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->k:Lokhttp3/Route;

    .line 432
    invoke-virtual {v1}, Lokhttp3/Route;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->m:Lokhttp3/Handshake;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->m:Lokhttp3/Handshake;

    .line 434
    invoke-virtual {v0}, Lokhttp3/Handshake;->a()Lokhttp3/CipherSuite;

    move-result-object v0

    :goto_6a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->n:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    return-object v0

    .line 434
    :cond_86
    const-string/jumbo v0, "none"

    goto :goto_6a
.end method
