.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V
    .registers 3

    .prologue
    .line 119
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-boolean p2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a(Z)V

    .line 123
    return-void
.end method
