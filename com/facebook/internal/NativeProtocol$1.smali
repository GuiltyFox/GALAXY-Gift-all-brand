.class final Lcom/facebook/internal/NativeProtocol$1;
.super Ljava/lang/Object;
.source "NativeProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 760
    :try_start_1
    # getter for: Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 761
    const/4 v2, 0x1

    # invokes: Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V
    invoke-static {v0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->access$600(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_9

    .line 764
    :catchall_1a
    move-exception v0

    # getter for: Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_23
    # getter for: Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 766
    return-void
.end method
