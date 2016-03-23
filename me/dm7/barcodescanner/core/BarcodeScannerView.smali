.class public abstract Lme/dm7/barcodescanner/core/BarcodeScannerView;
.super Landroid/widget/FrameLayout;
.source "BarcodeScannerView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFramingRectInPreview:Landroid/graphics/Rect;

.field private mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

.field private mViewFinderView:Lme/dm7/barcodescanner/core/ViewFinderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout()V

    .line 26
    return-void
.end method


# virtual methods
.method public getFlash()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-static {v2}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 108
    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 109
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "torch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 110
    const/4 v1, 0x1

    .line 115
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_21
    return v1
.end method

.method public declared-synchronized getFramingRectInPreview(II)Landroid/graphics/Rect;
    .registers 8
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    if-nez v4, :cond_3f

    .line 69
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {v4}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 70
    .local v0, "framingRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {v4}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v3

    .line 71
    .local v3, "viewFinderViewWidth":I
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {v4}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_42

    move-result v2

    .line 72
    .local v2, "viewFinderViewHeight":I
    if-eqz v0, :cond_1d

    if-eqz v3, :cond_1d

    if-nez v2, :cond_20

    .line 73
    :cond_1d
    const/4 v4, 0x0

    .line 84
    .end local v0    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "viewFinderViewHeight":I
    .end local v3    # "viewFinderViewWidth":I
    :goto_1e
    monitor-exit p0

    return-object v4

    .line 76
    .restart local v0    # "framingRect":Landroid/graphics/Rect;
    .restart local v2    # "viewFinderViewHeight":I
    .restart local v3    # "viewFinderViewWidth":I
    :cond_20
    :try_start_20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .local v1, "rect":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v4, p1

    div-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 78
    iget v4, v1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v4, p1

    div-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 79
    iget v4, v1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, p2

    div-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 80
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v4, p2

    div-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 82
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    .line 84
    .end local v0    # "framingRect":Landroid/graphics/Rect;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "viewFinderViewHeight":I
    .end local v3    # "viewFinderViewWidth":I
    :cond_3f
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_42

    goto :goto_1e

    .line 68
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setAutoFocus(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraPreview;->setAutoFocus(Z)V

    .line 134
    :cond_9
    return-void
.end method

.method public setFlash(Z)V
    .registers 5
    .param p1, "flag"    # Z

    .prologue
    .line 88
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 90
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 91
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_2e

    .line 92
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 104
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_21
    :goto_21
    return-void

    .line 95
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_22
    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 102
    :goto_28
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_21

    .line 97
    :cond_2e
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 100
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public setupLayout()V
    .registers 4

    .prologue
    .line 29
    new-instance v1, Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lme/dm7/barcodescanner/core/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    .line 30
    new-instance v1, Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 32
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 34
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 35
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 38
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {p0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public startCamera()V
    .registers 2

    .prologue
    .line 55
    invoke-static {}, Lme/dm7/barcodescanner/core/CameraUtils;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera(Landroid/hardware/Camera;)V

    .line 56
    return-void
.end method

.method public startCamera(I)V
    .registers 3
    .param p1, "cameraId"    # I

    .prologue
    .line 42
    invoke-static {p1}, Lme/dm7/barcodescanner/core/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera(Landroid/hardware/Camera;)V

    .line 43
    return-void
.end method

.method public startCamera(Landroid/hardware/Camera;)V
    .registers 4
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 46
    iput-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    .line 47
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_17

    .line 48
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/ViewFinderView;->setupViewFinder()V

    .line 49
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p0}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    .line 50
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->initCameraPreview()V

    .line 52
    :cond_17
    return-void
.end method

.method public stopCamera()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_16

    .line 60
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 61
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V

    .line 62
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 63
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    .line 65
    :cond_16
    return-void
.end method

.method public toggleFlash()V
    .registers 4

    .prologue
    .line 119
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 120
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 121
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 122
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 126
    :goto_25
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 128
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2a
    return-void

    .line 124
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2b
    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_25
.end method
