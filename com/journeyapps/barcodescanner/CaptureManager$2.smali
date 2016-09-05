.class Lcom/journeyapps/barcodescanner/CaptureManager$2;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CaptureManager;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->f()V

    .line 115
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method
