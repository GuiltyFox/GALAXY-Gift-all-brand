.class Lcom/control/imagecropper/Util$BackgroundJob;
.super Lcom/control/imagecropper/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/control/imagecropper/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/control/imagecropper/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/control/imagecropper/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .registers 6
    .param p1, "activity"    # Lcom/control/imagecropper/MonitoredActivity;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/app/ProgressDialog;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/control/imagecropper/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 158
    new-instance v0, Lcom/control/imagecropper/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/control/imagecropper/Util$BackgroundJob$1;-><init>(Lcom/control/imagecropper/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 169
    iput-object p1, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mActivity:Lcom/control/imagecropper/MonitoredActivity;

    .line 170
    iput-object p3, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 171
    iput-object p2, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 172
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mActivity:Lcom/control/imagecropper/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/control/imagecropper/MonitoredActivity;->addLifeCycleListener(Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;)V

    .line 173
    iput-object p4, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method static synthetic access$0(Lcom/control/imagecropper/Util$BackgroundJob;)Lcom/control/imagecropper/MonitoredActivity;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mActivity:Lcom/control/imagecropper/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/control/imagecropper/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/control/imagecropper/MonitoredActivity;)V
    .registers 4
    .param p1, "activity"    # Lcom/control/imagecropper/MonitoredActivity;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public onActivityStarted(Lcom/control/imagecropper/MonitoredActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/control/imagecropper/MonitoredActivity;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 204
    return-void
.end method

.method public onActivityStopped(Lcom/control/imagecropper/MonitoredActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/control/imagecropper/MonitoredActivity;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 198
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    .line 181
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void

    .line 180
    :catchall_d
    move-exception v0

    .line 181
    iget-object v1, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/control/imagecropper/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    throw v0
.end method
