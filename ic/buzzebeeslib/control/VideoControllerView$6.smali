.class Lic/buzzebeeslib/control/VideoControllerView$6;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/control/VideoControllerView;->initControllerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/VideoControllerView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/control/VideoControllerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView$6;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$6;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->onRqExitListener:Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;
    invoke-static {v0}, Lic/buzzebeeslib/control/VideoControllerView;->access$10(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;

    move-result-object v0

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;->onRqExit()V

    .line 169
    return-void
.end method
