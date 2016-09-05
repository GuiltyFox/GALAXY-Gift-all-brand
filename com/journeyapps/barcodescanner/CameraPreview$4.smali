.class Lcom/journeyapps/barcodescanner/CameraPreview$4;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/RotationCallback;


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
    .line 194
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->d(Lcom/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/journeyapps/barcodescanner/CameraPreview$4$1;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$4$1;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method
