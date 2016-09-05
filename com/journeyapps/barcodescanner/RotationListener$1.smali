.class Lcom/journeyapps/barcodescanner/RotationListener$1;
.super Landroid/view/OrientationEventListener;
.source "RotationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/RotationListener;->a(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/RotationListener;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 40
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->a:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->a:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/RotationListener;->a(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->a:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/RotationListener;->b(Lcom/journeyapps/barcodescanner/RotationListener;)Lcom/journeyapps/barcodescanner/RotationCallback;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->a:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/RotationListener;->a(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_2e

    .line 46
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 47
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->a:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/RotationListener;->c(Lcom/journeyapps/barcodescanner/RotationListener;)I

    move-result v2

    if-eq v0, v2, :cond_2e

    .line 48
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->a:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v2, v0}, Lcom/journeyapps/barcodescanner/RotationListener;->a(Lcom/journeyapps/barcodescanner/RotationListener;I)I

    .line 49
    invoke-interface {v1, v0}, Lcom/journeyapps/barcodescanner/RotationCallback;->a(I)V

    .line 52
    :cond_2e
    return-void
.end method
