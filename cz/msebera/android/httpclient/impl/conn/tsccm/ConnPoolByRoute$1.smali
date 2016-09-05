.class Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;
.super Ljava/lang/Object;
.source "ConnPoolByRoute.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;
.end annotation


# instance fields
.field final synthetic a:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

.field final synthetic b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 283
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->a:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .registers 13

    .prologue
    .line 298
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->c:Ljava/lang/Object;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->a:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 288
    :try_start_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->a:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;->a()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    .line 290
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 292
    return-void

    .line 290
    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->a(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
