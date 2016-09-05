.class public abstract Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final b:Ljava/util/concurrent/locks/Lock;

.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile d:Z

.field protected e:Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->c:Ljava/util/Set;

    .line 93
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->e:Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/concurrent/locks/Lock;

    .line 95
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 197
    :try_start_5
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->d:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_2c

    if-eqz v0, :cond_f

    .line 213
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    :goto_e
    return-void

    .line 202
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 206
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->c()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2c

    goto :goto_15

    .line 213
    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 208
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->e:Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->a()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->d:Z
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_2c

    .line 213
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_e
.end method

.method protected a(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V
    .registers 5

    .prologue
    .line 224
    if-eqz p1, :cond_5

    .line 226
    :try_start_2
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 231
    :cond_5
    :goto_5
    return-void

    .line 227
    :catch_6
    move-exception v0

    .line 228
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
