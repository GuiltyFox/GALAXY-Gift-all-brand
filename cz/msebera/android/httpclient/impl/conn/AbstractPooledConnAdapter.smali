.class public abstract Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected volatile a:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V
    .registers 4

    .prologue
    .line 66
    iget-object v0, p2, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 67
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .prologue
    .line 143
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 145
    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 146
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .prologue
    .line 129
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 131
    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 132
    return-void
.end method

.method protected a(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->o()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_e

    .line 96
    :cond_8
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 98
    :cond_e
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 152
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 153
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 188
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public a(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 138
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->a(ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 139
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b()V

    .line 161
    :cond_9
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_12

    .line 163
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V

    .line 165
    :cond_12
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b()V

    .line 173
    :cond_9
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->m()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_12

    .line 175
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->e()V

    .line 177
    :cond_12
    return-void
.end method

.method public h()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 123
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-nez v1, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->e:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->j()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    goto :goto_c
.end method

.method protected declared-synchronized l()V
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    .line 117
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->l()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 118
    monitor-exit p0

    return-void

    .line 116
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->a:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    return-object v0
.end method
