.class Lcom/journeyapps/barcodescanner/CaptureManager$4;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 380
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$4;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$4;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->d(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    .line 384
    return-void
.end method
