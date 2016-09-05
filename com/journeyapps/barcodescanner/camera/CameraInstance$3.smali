.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 164
    :try_start_0
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Opening camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 170
    :goto_13
    return-void

    .line 166
    :catch_14
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v1, v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V

    .line 168
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failed to open camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
