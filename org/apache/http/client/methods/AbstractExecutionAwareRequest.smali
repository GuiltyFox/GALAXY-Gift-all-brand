.class public abstract Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "AbstractExecutionAwareRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/http/HttpRequest;
.implements Lorg/apache/http/client/methods/AbortableHttpRequest;
.implements Lorg/apache/http/client/methods/HttpExecutionAware;


# instance fields
.field private final aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/concurrent/Cancellable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 5

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 83
    iget-object v1, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/concurrent/Cancellable;

    .line 84
    .local v0, "cancellable":Lorg/apache/http/concurrent/Cancellable;
    if-eqz v0, :cond_18

    .line 85
    invoke-interface {v0}, Lorg/apache/http/concurrent/Cancellable;->cancel()Z

    .line 88
    .end local v0    # "cancellable":Lorg/apache/http/concurrent/Cancellable;
    :cond_18
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;

    .line 106
    .local v0, "clone":Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;
    iget-object v1, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtilsHC4;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/HeaderGroup;

    iput-object v1, v0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 107
    iget-object v1, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtilsHC4;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/params/HttpParams;

    iput-object v1, v0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->params:Lorg/apache/http/params/HttpParams;

    .line 108
    return-object v0
.end method

.method public completed()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public isAborted()Z
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 124
    iget-object v1, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/concurrent/Cancellable;

    .line 125
    .local v0, "cancellable":Lorg/apache/http/concurrent/Cancellable;
    if-eqz v0, :cond_e

    .line 126
    invoke-interface {v0}, Lorg/apache/http/concurrent/Cancellable;->cancel()Z

    .line 128
    :cond_e
    iget-object v1, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    return-void
.end method

.method public setCancellable(Lorg/apache/http/concurrent/Cancellable;)V
    .registers 3
    .param p1, "cancellable"    # Lorg/apache/http/concurrent/Cancellable;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 99
    iget-object v0, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 101
    :cond_d
    return-void
.end method

.method public setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .registers 3
    .param p1, "connRequest"    # Lorg/apache/http/conn/ClientConnectionRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$1;-><init>(Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;Lorg/apache/http/conn/ClientConnectionRequest;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 63
    return-void
.end method

.method public setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    .registers 3
    .param p1, "releaseTrigger"    # Lorg/apache/http/conn/ConnectionReleaseTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$2;-><init>(Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 79
    return-void
.end method