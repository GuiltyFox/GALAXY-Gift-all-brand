.class public abstract Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
.super Ljava/lang/Object;
.source "AbstractPoolEntry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected final b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

.field protected volatile c:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field protected volatile d:Ljava/lang/Object;

.field protected volatile e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 4

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string/jumbo v0, "Connection operator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 94
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->a()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 95
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->c:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 97
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 208
    const-string/jumbo v0, "Next proxy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v0, "Parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    const-string/jumbo v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    const-string/jumbo v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 215
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 216
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 11

    .prologue
    .line 130
    const-string/jumbo v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-eqz v0, :cond_1f

    .line 133
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x1

    :goto_19
    const-string/jumbo v1, "Connection already open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 141
    :cond_1f
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 142
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    .line 144
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    if-eqz v6, :cond_49

    move-object v2, v6

    .line 147
    :goto_31
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    .line 145
    invoke-interface/range {v0 .. v5}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 150
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 154
    if-nez v0, :cond_4e

    .line 155
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "Request aborted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_47
    const/4 v0, 0x0

    goto :goto_19

    .line 146
    :cond_49
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    goto :goto_31

    .line 158
    :cond_4e
    if-nez v6, :cond_5a

    .line 159
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a(Z)V

    .line 164
    :goto_59
    return-void

    .line 161
    :cond_5a
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->h()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a(Lcz/msebera/android/httpclient/HttpHost;Z)V

    goto :goto_59
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 230
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    const-string/jumbo v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    const-string/jumbo v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e()Z

    move-result v0

    const-string/jumbo v1, "Protocol layering without a tunnel not supported"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f()Z

    move-result v0

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    :goto_2f
    const-string/jumbo v1, "Multiple protocol layering not supported"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v1, v2, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 246
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c(Z)V

    .line 248
    return-void

    .line 234
    :cond_4e
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->d:Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public a(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 180
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    const-string/jumbo v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->i()Z

    move-result v0

    const-string/jumbo v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e()Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    :goto_23
    const-string/jumbo v1, "Connection is already tunnelled"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    const/4 v1, 0x0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->a(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 187
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b(Z)V

    .line 188
    return-void

    .line 183
    :cond_3b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 258
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->d:Ljava/lang/Object;

    .line 259
    return-void
.end method
