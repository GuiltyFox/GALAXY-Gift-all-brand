.class Lcom/journeyapps/barcodescanner/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$1;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview$1;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 132
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$1;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {v1, p2, p3}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    .line 137
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$1;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 138
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .prologue
    .line 148
    return-void
.end method
