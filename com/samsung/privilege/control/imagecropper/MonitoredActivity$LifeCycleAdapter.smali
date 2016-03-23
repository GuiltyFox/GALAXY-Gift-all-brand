.class public Lcom/samsung/privilege/control/imagecropper/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/imagecropper/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    .prologue
    .line 48
    return-void
.end method

.method public onActivityDestroyed(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    .prologue
    .line 52
    return-void
.end method

.method public onActivityPaused(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    .prologue
    .line 56
    return-void
.end method

.method public onActivityResumed(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    .prologue
    .line 60
    return-void
.end method

.method public onActivityStarted(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    .prologue
    .line 64
    return-void
.end method

.method public onActivityStopped(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    .prologue
    .line 68
    return-void
.end method
