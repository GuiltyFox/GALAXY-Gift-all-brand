.class Lcom/journeyapps/barcodescanner/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .prologue
    .line 166
    if-nez p1, :cond_d

    .line 167
    invoke-static {}, Lcom/journeyapps/barcodescanner/CameraPreview;->k()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*** WARNING *** surfaceChanged() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_c
    return-void

    .line 170
    :cond_d
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {v1, p3, p4}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 171
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    goto :goto_c
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .prologue
    .line 157
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$2;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 162
    return-void
.end method
