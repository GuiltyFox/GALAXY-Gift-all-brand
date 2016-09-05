.class Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 57
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;->a:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->b(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
