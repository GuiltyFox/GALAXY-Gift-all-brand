.class Lcom/facebook/internal/WebDialog$4;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog;->setUpWebView(I)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .registers 2

    .prologue
    .line 412
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$4;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 419
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
