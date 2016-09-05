.class Lcom/bzbs/lib/survey/control/VideoControllerView$4;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/VideoControllerView;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/VideoControllerView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 2

    .prologue
    .line 487
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8

    .prologue
    .line 502
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_9

    .line 517
    :cond_8
    :goto_8
    return-void

    .line 506
    :cond_9
    if-eqz p3, :cond_8

    .line 512
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->d()I

    move-result v0

    int-to-long v0, v0

    .line 513
    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 514
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v2}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v2

    long-to-int v3, v0

    invoke-interface {v2, v3}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->a(I)V

    .line 515
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v2}, Lcom/bzbs/lib/survey/control/VideoControllerView;->f(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 516
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v2}, Lcom/bzbs/lib/survey/control/VideoControllerView;->f(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    long-to-int v0, v0

    invoke-static {v3, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Lcom/bzbs/lib/survey/control/VideoControllerView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 491
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Lcom/bzbs/lib/survey/control/VideoControllerView;Z)Z

    .line 498
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .prologue
    .line 520
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Lcom/bzbs/lib/survey/control/VideoControllerView;Z)Z

    .line 521
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->g(Lcom/bzbs/lib/survey/control/VideoControllerView;)I

    .line 522
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d()V

    .line 523
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 528
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 529
    return-void
.end method
