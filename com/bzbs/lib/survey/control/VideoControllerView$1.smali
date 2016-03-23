.class Lcom/bzbs/lib/survey/control/VideoControllerView$1;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/control/VideoControllerView;->initControllerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/control/VideoControllerView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$1;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$1;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->onRqExitListener:Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$000(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;->onRqExit()V

    .line 169
    return-void
.end method
