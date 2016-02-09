.class Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;
.super Landroid/os/Handler;
.source "VideoControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/VideoControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lic/buzzebeeslib/control/VideoControllerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lic/buzzebeeslib/control/VideoControllerView;)V
    .registers 3
    .param p1, "view"    # Lic/buzzebeeslib/control/VideoControllerView;

    .prologue
    .line 644
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 645
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;->mView:Ljava/lang/ref/WeakReference;

    .line 646
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 650
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/control/VideoControllerView;

    .line 651
    .local v1, "view":Lic/buzzebeeslib/control/VideoControllerView;
    if-eqz v1, :cond_10

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    move-result-object v2

    if-nez v2, :cond_11

    .line 668
    :cond_10
    :goto_10
    return-void

    .line 656
    :cond_11
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_44

    goto :goto_10

    .line 658
    :pswitch_17
    invoke-virtual {v1}, Lic/buzzebeeslib/control/VideoControllerView;->hide()V

    goto :goto_10

    .line 661
    :pswitch_1b
    # invokes: Lic/buzzebeeslib/control/VideoControllerView;->setProgress()I
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$7(Lic/buzzebeeslib/control/VideoControllerView;)I

    move-result v0

    .line 662
    .local v0, "pos":I
    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mDragging:Z
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$8(Lic/buzzebeeslib/control/VideoControllerView;)Z

    move-result v2

    if-nez v2, :cond_10

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mShowing:Z
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$9(Lic/buzzebeeslib/control/VideoControllerView;)Z

    move-result v2

    if-eqz v2, :cond_10

    # getter for: Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    invoke-static {v1}, Lic/buzzebeeslib/control/VideoControllerView;->access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    move-result-object v2

    invoke-interface {v2}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 663
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 664
    rem-int/lit16 v2, v0, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    .line 656
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method
