.class Lme/dm7/barcodescanner/core/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    .line 261
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview$2;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 4

    .prologue
    .line 263
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview$2;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->e(Lme/dm7/barcodescanner/core/CameraPreview;)V

    .line 264
    return-void
.end method
