.class final Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private b:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

.field private c:Lcom/journeyapps/barcodescanner/Size;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/Size;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->c:Lcom/journeyapps/barcodescanner/Size;

    .line 88
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->b:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 92
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 10

    .prologue
    .line 96
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->c:Lcom/journeyapps/barcodescanner/Size;

    .line 97
    iget-object v6, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->b:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 98
    if-eqz v1, :cond_24

    if-eqz v6, :cond_24

    .line 99
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    .line 100
    new-instance v0, Lcom/journeyapps/barcodescanner/SourceData;

    iget v2, v1, Lcom/journeyapps/barcodescanner/Size;->a:I

    iget v3, v1, Lcom/journeyapps/barcodescanner/Size;->b:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->g()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/journeyapps/barcodescanner/SourceData;-><init>([BIIII)V

    .line 101
    invoke-interface {v6, v0}, Lcom/journeyapps/barcodescanner/camera/PreviewCallback;->a(Lcom/journeyapps/barcodescanner/SourceData;)V

    .line 105
    :goto_23
    return-void

    .line 103
    :cond_24
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Got preview callback, but no handler or resolution available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
