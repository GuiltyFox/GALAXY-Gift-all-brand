.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

.field final synthetic b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .registers 3

    .prologue
    .line 145
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->a:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;->a:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 149
    return-void
.end method
