.class Lic/buzzebeeslib/control/VideoControllerView$2;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/VideoControllerView;
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
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView$2;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 424
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$2;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # invokes: Lic/buzzebeeslib/control/VideoControllerView;->doToggleFullscreen()V
    invoke-static {v0}, Lic/buzzebeeslib/control/VideoControllerView;->access$1(Lic/buzzebeeslib/control/VideoControllerView;)V

    .line 425
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$2;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 426
    return-void
.end method
