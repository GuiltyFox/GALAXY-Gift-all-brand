.class Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
.end annotation


# instance fields
.field final synthetic a:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field final synthetic c:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 4

    .prologue
    .line 223
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->a:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .registers 7

    .prologue
    .line 232
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    const-string/jumbo v1, "Route"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 235
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 238
    :cond_3a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->a:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;->a(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    .line 239
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    return-object v1
.end method

.method public a()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->a:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;->a()V

    .line 227
    return-void
.end method
