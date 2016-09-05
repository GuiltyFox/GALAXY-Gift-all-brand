.class Lcom/bzbs/lib/survey/control/VideoControllerView$MessageHandler;
.super Landroid/os/Handler;
.source "VideoControllerView.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bzbs/lib/survey/control/VideoControllerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 3

    .prologue
    .line 644
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 645
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$MessageHandler;->a:Ljava/lang/ref/WeakReference;

    .line 646
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 650
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$MessageHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/VideoControllerView;

    .line 651
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    if-nez v1, :cond_11

    .line 668
    :cond_10
    :goto_10
    return-void

    .line 656
    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_44

    goto :goto_10

    .line 658
    :pswitch_17
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->c()V

    goto :goto_10

    .line 661
    :pswitch_1b
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->g(Lcom/bzbs/lib/survey/control/VideoControllerView;)I

    move-result v1

    .line 662
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->h(Lcom/bzbs/lib/survey/control/VideoControllerView;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->i(Lcom/bzbs/lib/survey/control/VideoControllerView;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 663
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 664
    rem-int/lit16 v1, v1, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/bzbs/lib/survey/control/VideoControllerView$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    .line 656
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method
