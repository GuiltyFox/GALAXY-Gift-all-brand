.class Lcom/journeyapps/barcodescanner/CaptureManager$5;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CaptureManager;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$5;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$5;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->d(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    .line 390
    return-void
.end method
