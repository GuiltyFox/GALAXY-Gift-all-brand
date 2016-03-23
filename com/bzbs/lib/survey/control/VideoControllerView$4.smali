.class Lcom/bzbs/lib/survey/control/VideoControllerView$4;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 487
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 12
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 502
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mPlayer:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$500(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v4

    if-nez v4, :cond_9

    .line 517
    :cond_8
    :goto_8
    return-void

    .line 506
    :cond_9
    if-eqz p3, :cond_8

    .line 512
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mPlayer:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$500(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 513
    .local v0, "duration":J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 514
    .local v2, "newposition":J
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mPlayer:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$500(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->seekTo(I)V

    .line 515
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$600(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 516
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$600(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    long-to-int v6, v2

    # invokes: Lcom/bzbs/lib/survey/control/VideoControllerView;->stringForTime(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$700(Lcom/bzbs/lib/survey/control/VideoControllerView;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->show(I)V

    .line 491
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/4 v1, 0x1

    # setter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mDragging:Z
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$302(Lcom/bzbs/lib/survey/control/VideoControllerView;Z)Z

    .line 498
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$400(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/4 v1, 0x0

    # setter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mDragging:Z
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$302(Lcom/bzbs/lib/survey/control/VideoControllerView;Z)Z

    .line 521
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # invokes: Lcom/bzbs/lib/survey/control/VideoControllerView;->setProgress()I
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$800(Lcom/bzbs/lib/survey/control/VideoControllerView;)I

    .line 522
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->updatePausePlay()V

    .line 523
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->show(I)V

    .line 528
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->this$0:Lcom/bzbs/lib/survey/control/VideoControllerView;

    # getter for: Lcom/bzbs/lib/survey/control/VideoControllerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->access$400(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 529
    return-void
.end method
