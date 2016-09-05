.class public Lcom/journeyapps/barcodescanner/camera/CameraSurface;
.super Ljava/lang/Object;
.source "CameraSurface.java"


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_e

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_e
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->b:Landroid/graphics/SurfaceTexture;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_e

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceHolder may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_e
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->a:Landroid/view/SurfaceHolder;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/Camera;)V
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->a:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_a

    .line 41
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 50
    :goto_9
    return-void

    .line 43
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_16

    .line 44
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_9

    .line 47
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SurfaceTexture not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
