.class Lcom/journeyapps/barcodescanner/CameraPreview$4$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CameraPreview$4;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview$4;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview$4;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4$1;->a:Lcom/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4$1;->a:Lcom/journeyapps/barcodescanner/CameraPreview$4;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/CameraPreview$4;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->c(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 202
    return-void
.end method
