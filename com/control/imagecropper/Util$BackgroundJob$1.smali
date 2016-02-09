.class Lcom/control/imagecropper/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/control/imagecropper/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/control/imagecropper/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/control/imagecropper/Util$BackgroundJob;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/control/imagecropper/Util$BackgroundJob$1;->this$1:Lcom/control/imagecropper/Util$BackgroundJob;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob$1;->this$1:Lcom/control/imagecropper/Util$BackgroundJob;

    # getter for: Lcom/control/imagecropper/Util$BackgroundJob;->mActivity:Lcom/control/imagecropper/MonitoredActivity;
    invoke-static {v0}, Lcom/control/imagecropper/Util$BackgroundJob;->access$0(Lcom/control/imagecropper/Util$BackgroundJob;)Lcom/control/imagecropper/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/control/imagecropper/Util$BackgroundJob$1;->this$1:Lcom/control/imagecropper/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/control/imagecropper/MonitoredActivity;->removeLifeCycleListener(Lcom/control/imagecropper/MonitoredActivity$LifeCycleListener;)V

    .line 162
    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob$1;->this$1:Lcom/control/imagecropper/Util$BackgroundJob;

    # getter for: Lcom/control/imagecropper/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/control/imagecropper/Util$BackgroundJob;->access$1(Lcom/control/imagecropper/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/control/imagecropper/Util$BackgroundJob$1;->this$1:Lcom/control/imagecropper/Util$BackgroundJob;

    # getter for: Lcom/control/imagecropper/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/control/imagecropper/Util$BackgroundJob;->access$1(Lcom/control/imagecropper/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 163
    :cond_20
    return-void
.end method
