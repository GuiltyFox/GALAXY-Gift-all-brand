.class Lme/dm7/barcodescanner/core/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/dm7/barcodescanner/core/CameraPreview;
.end annotation


# instance fields
.field final synthetic a:Lme/dm7/barcodescanner/core/CameraPreview;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->a(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->b(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->c(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->d(Lme/dm7/barcodescanner/core/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 255
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$1;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->c()V

    .line 257
    :cond_25
    return-void
.end method
