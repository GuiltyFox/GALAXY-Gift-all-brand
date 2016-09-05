.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;
.super Ljava/lang/Object;
.source "WaitingThread.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Condition;

.field private final b:Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

.field private c:Ljava/lang/Thread;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)V
    .registers 4

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string/jumbo v0, "Condition"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    .line 79
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->b:Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->c:Ljava/lang/Thread;

    if-nez v0, :cond_d

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Nobody waiting on this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 190
    return-void
.end method

.method public a(Ljava/util/Date;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_30

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A thread is already waiting on this object.\ncaller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nwaiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->c:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_30
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->d:Z

    if-eqz v0, :cond_3d

    .line 149
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v1, "Operation interrupted"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_3d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->c:Ljava/lang/Thread;

    .line 156
    if-eqz p1, :cond_5c

    .line 157
    :try_start_45
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0

    .line 162
    :goto_4b
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->d:Z

    if-eqz v1, :cond_63

    .line 163
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v1, "Operation interrupted"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_58

    .line 166
    :catchall_58
    move-exception v0

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->c:Ljava/lang/Thread;

    throw v0

    .line 159
    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_58

    .line 160
    const/4 v0, 0x1

    goto :goto_4b

    .line 166
    :cond_63
    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->c:Ljava/lang/Thread;

    .line 168
    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->d:Z

    .line 194
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 195
    return-void
.end method
