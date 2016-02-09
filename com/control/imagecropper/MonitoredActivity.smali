.class public Lcom/control/imagecropper/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/control/imagecropper/MonitoredActivity$LifeCycleAdapter;,
        Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    :goto_8
    return-void

    .line 74
    :cond_9
    iget-object v0, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object v1, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 89
    return-void

    .line 86
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;

    .line 87
    .local v0, "listener":Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/control/imagecropper/MonitoredActivity;)V

    goto :goto_9
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    iget-object v1, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 98
    return-void

    .line 95
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;

    .line 96
    .local v0, "listener":Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/control/imagecropper/MonitoredActivity;)V

    goto :goto_9
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 104
    iget-object v1, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 107
    return-void

    .line 104
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;

    .line 105
    .local v0, "listener":Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/control/imagecropper/MonitoredActivity;)V

    goto :goto_9
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 113
    iget-object v1, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 116
    return-void

    .line 113
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;

    .line 114
    .local v0, "listener":Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/control/imagecropper/MonitoredActivity;)V

    goto :goto_9
.end method

.method public removeLifeCycleListener(Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/control/imagecropper/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method
