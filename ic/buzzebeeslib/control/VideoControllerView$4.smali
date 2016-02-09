.class Lic/buzzebeeslib/control/VideoControllerView$4;
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
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView$4;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 558
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView$4;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    if-nez v1, :cond_9

    .line 568
    :goto_8
    return-void

    .line 562
    :cond_9
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView$4;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 563
    .local v0, "pos":I
    add-int/lit16 v0, v0, -0x1388

    .line 564
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView$4;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->seekTo(I)V

    .line 565
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView$4;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # invokes: Lic/buzzebeeslib/control/VideoControllerView;->setProgress()I
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$7(Lic/buzzebeeslib/control/VideoControllerView;)I

    .line 567
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView$4;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    goto :goto_8
.end method
