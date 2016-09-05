.class Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;Z)Z

    .line 71
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->c(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    .line 72
    return-void
.end method
