.class Lcom/bzbs/lib/survey/control/VideoControllerView$6;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/VideoControllerView;
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
    .line 571
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 573
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mPlayer:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$500(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    if-nez v1, :cond_9

    .line 583
    :goto_8
    return-void

    .line 577
    :cond_9
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mPlayer:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$500(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 578
    .local v0, "pos":I
    add-int/lit16 v0, v0, 0x3a98

    .line 579
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mPlayer:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$500(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->seekTo(I)V

    .line 580
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # invokes: Lcom/bzbs/lib/survey/control/VideoControllerView;->setProgress()I
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$800(Lcom/bzbs/lib/survey/control/VideoControllerView;)I

    .line 582
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/control/VideoControllerView;->show(I)V

    goto :goto_8
.end method
