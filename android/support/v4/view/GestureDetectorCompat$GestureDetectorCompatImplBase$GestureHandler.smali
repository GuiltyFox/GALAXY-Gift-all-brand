.class Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 107
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_1f
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->a:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->e:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 136
    :cond_2a
    :goto_2a
    return-void

    .line 119
    :pswitch_2b
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-virtual {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->a()V

    goto :goto_2a

    .line 124
    :pswitch_31
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->b:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_2a

    .line 125
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-boolean v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->c:Z

    if-nez v0, :cond_49

    .line 126
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->b:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->e:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_2a

    .line 128
    :cond_49
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->a:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->d:Z

    goto :goto_2a

    .line 113
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2b
        :pswitch_31
    .end packed-switch
.end method
