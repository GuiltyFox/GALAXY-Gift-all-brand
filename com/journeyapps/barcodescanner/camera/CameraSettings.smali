.class public Lcom/journeyapps/barcodescanner/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    .line 10
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->b:Z

    .line 11
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->c:Z

    .line 12
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->d:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->e:Z

    .line 14
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->f:Z

    .line 15
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->g:Z

    .line 16
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 31
    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    .line 32
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->b:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->g:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->d:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->e:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->f:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->h:Z

    return v0
.end method
