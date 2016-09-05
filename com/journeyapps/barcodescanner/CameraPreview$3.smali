.class Lcom/journeyapps/barcodescanner/CameraPreview$3;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 175
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_prewiew_size_ready:I

    if-ne v0, v1, :cond_11

    .line 179
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/journeyapps/barcodescanner/Size;

    invoke-static {v1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->b(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)V

    .line 180
    const/4 v0, 0x1

    .line 190
    :goto_10
    return v0

    .line 181
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_camera_error:I

    if-ne v0, v1, :cond_31

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    .line 184
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->h()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 186
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->d()V

    .line 187
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$3;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->b(Lcom/journeyapps/barcodescanner/CameraPreview;)Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->a(Ljava/lang/Exception;)V

    .line 190
    :cond_31
    const/4 v0, 0x0

    goto :goto_10
.end method
