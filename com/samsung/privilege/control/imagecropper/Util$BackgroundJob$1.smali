.class Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;->a:Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;->a:Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->a(Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;)Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;->a:Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->b(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity$LifeCycleListener;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;->a:Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->b(Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;->a:Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;

    invoke-static {v0}, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->b(Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 163
    :cond_20
    return-void
.end method
