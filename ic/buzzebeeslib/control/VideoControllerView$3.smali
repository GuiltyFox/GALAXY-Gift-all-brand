.class Lic/buzzebeeslib/control/VideoControllerView$3;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    .line 487
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
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v4}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

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
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v4}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->getDuration()I

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
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v4}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->seekTo(I)V

    .line 515
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Lic/buzzebeeslib/control/VideoControllerView;->access$5(Lic/buzzebeeslib/control/VideoControllerView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 516
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Lic/buzzebeeslib/control/VideoControllerView;->access$5(Lic/buzzebeeslib/control/VideoControllerView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    long-to-int v6, v2

    # invokes: Lic/buzzebeeslib/control/VideoControllerView;->stringForTime(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lic/buzzebeeslib/control/VideoControllerView;->access$6(Lic/buzzebeeslib/control/VideoControllerView;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 489
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 491
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$2(Lic/buzzebeeslib/control/VideoControllerView;Z)V

    .line 498
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/control/VideoControllerView;->access$3(Lic/buzzebeeslib/control/VideoControllerView;)Landroid/os/Handler;

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
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$2(Lic/buzzebeeslib/control/VideoControllerView;Z)V

    .line 521
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # invokes: Lic/buzzebeeslib/control/VideoControllerView;->setProgress()I
    invoke-static {v0}, Lic/buzzebeeslib/control/VideoControllerView;->access$7(Lic/buzzebeeslib/control/VideoControllerView;)I

    .line 522
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/VideoControllerView;->updatePausePlay()V

    .line 523
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 528
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$3;->this$0:Lic/buzzebeeslib/control/VideoControllerView;

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/control/VideoControllerView;->access$3(Lic/buzzebeeslib/control/VideoControllerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 529
    return-void
.end method
