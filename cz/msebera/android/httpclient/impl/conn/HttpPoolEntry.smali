.class Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
.super Lcz/msebera/android/httpclient/pool/PoolEntry;
.source "HttpPoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/PoolEntry",
        "<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/OperatedClientConnection;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final b:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 15

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 57
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 58
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-direct {v0, p3}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->b:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 59
    return-void
.end method


# virtual methods
.method a()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->b:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    return-object v0
.end method

.method public a(J)Z
    .registers 10

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/pool/PoolEntry;->a(J)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 65
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " expired @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->h()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 67
    :cond_3b
    return v0
.end method

.method b()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method

.method c()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->b:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->j()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 85
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->c()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()V
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 92
    :try_start_6
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 96
    :goto_9
    return-void

    .line 93
    :catch_a
    move-exception v0

    .line 94
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
