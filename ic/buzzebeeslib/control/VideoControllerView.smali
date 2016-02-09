.class public Lic/buzzebeeslib/control/VideoControllerView;
.super Landroid/widget/FrameLayout;
.source "VideoControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;,
        Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;,
        Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoControllerView"

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAnchor:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mExitButton:Landroid/widget/ImageButton;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mFullscreenButton:Landroid/widget/ImageButton;

.field private mFullscreenListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mUseFastForward:Z

.field private onRqExitListener:Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lic/buzzebeeslib/control/VideoControllerView;-><init>(Landroid/content/Context;Z)V

    .line 117
    const-string v0, "VideoControllerView"

    const-string v1, "VideoControllerView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$1;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$2;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$2;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenListener:Landroid/view/View$OnClickListener;

    .line 487
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$3;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$3;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 556
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$4;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$4;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewListener:Landroid/view/View$OnClickListener;

    .line 571
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$5;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$5;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    .line 99
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mContext:Landroid/content/Context;

    .line 100
    iput-boolean v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mUseFastForward:Z

    .line 101
    iput-boolean v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFromXml:Z

    .line 103
    const-string v0, "VideoControllerView"

    const-string v1, "VideoControllerView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$MessageHandler;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$1;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$2;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$2;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenListener:Landroid/view/View$OnClickListener;

    .line 487
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$3;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$3;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 556
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$4;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$4;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewListener:Landroid/view/View$OnClickListener;

    .line 571
    new-instance v0, Lic/buzzebeeslib/control/VideoControllerView$5;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView$5;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 108
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mContext:Landroid/content/Context;

    .line 109
    iput-boolean p2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mUseFastForward:Z

    .line 111
    const-string v0, "VideoControllerView"

    const-string v1, "VideoControllerView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/VideoControllerView;)V
    .registers 1

    .prologue
    .line 455
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/VideoControllerView;)V
    .registers 1

    .prologue
    .line 468
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->doToggleFullscreen()V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->onRqExitListener:Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/control/VideoControllerView;Z)V
    .registers 2

    .prologue
    .line 67
    iput-boolean p1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mDragging:Z

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/control/VideoControllerView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/control/VideoControllerView;)Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/control/VideoControllerView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/control/VideoControllerView;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lic/buzzebeeslib/control/VideoControllerView;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/control/VideoControllerView;)I
    .registers 2

    .prologue
    .line 333
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/control/VideoControllerView;)Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mDragging:Z

    return v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/control/VideoControllerView;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mShowing:Z

    return v0
.end method

.method private disableUnsupportedButtons()V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_5

    .line 261
    :cond_4
    :goto_4
    return-void

    .line 246
    :cond_5
    :try_start_5
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_17

    .line 247
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 249
    :cond_17
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_29

    .line 250
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 252
    :cond_29
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_3b
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_4

    .line 255
    :catch_3c
    move-exception v0

    goto :goto_4
.end method

.method private doPauseResume()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_5

    .line 466
    :goto_4
    return-void

    .line 460
    :cond_5
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 461
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->pause()V

    .line 465
    :goto_12
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->updatePausePlay()V

    goto :goto_4

    .line 463
    :cond_16
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->start()V

    goto :goto_12
.end method

.method private doToggleFullscreen()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_5

    .line 474
    :goto_4
    return-void

    .line 473
    :cond_5
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->toggleFullScreen()V

    goto :goto_4
.end method

.method private initControllerView(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 164
    sget v1, Lic/buzzebeeslib/R$id;->exit:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mExitButton:Landroid/widget/ImageButton;

    .line 165
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mExitButton:Landroid/widget/ImageButton;

    new-instance v2, Lic/buzzebeeslib/control/VideoControllerView$6;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/control/VideoControllerView$6;-><init>(Lic/buzzebeeslib/control/VideoControllerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v1, Lic/buzzebeeslib/R$id;->pause:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    .line 173
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2f

    .line 174
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 175
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_2f
    sget v1, Lic/buzzebeeslib/R$id;->fullscreen:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenButton:Landroid/widget/ImageButton;

    .line 179
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_49

    .line 180
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 181
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_49
    sget v1, Lic/buzzebeeslib/R$id;->ffwd:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdButton:Landroid/widget/ImageButton;

    .line 185
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5e

    .line 186
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_5e
    sget v1, Lic/buzzebeeslib/R$id;->rew:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_73

    .line 194
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_73
    sget v1, Lic/buzzebeeslib/R$id;->next:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    .line 202
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_85

    iget-boolean v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFromXml:Z

    if-nez v1, :cond_85

    .line 205
    :cond_85
    sget v1, Lic/buzzebeeslib/R$id;->prev:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 206
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_97

    iget-boolean v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFromXml:Z

    if-nez v1, :cond_97

    .line 210
    :cond_97
    sget v1, Lic/buzzebeeslib/R$id;->mediacontroller_progress:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    .line 211
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_c4

    .line 212
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_bd

    .line 213
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 214
    .local v0, "seeker":Landroid/widget/SeekBar;
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 215
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 217
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 219
    .end local v0    # "seeker":Landroid/widget/SeekBar;
    :cond_bd
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 222
    :cond_c4
    sget v1, Lic/buzzebeeslib/R$id;->time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mEndTime:Landroid/widget/TextView;

    .line 223
    sget v1, Lic/buzzebeeslib/R$id;->time_current:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 225
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFormatter:Ljava/util/Formatter;

    .line 227
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->installPrevNextListeners()V

    .line 228
    return-void
.end method

.method private installPrevNextListeners()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    .line 588
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 592
    :cond_17
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2b

    .line 593
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2e

    :goto_28
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 596
    :cond_2b
    return-void

    :cond_2c
    move v0, v2

    .line 589
    goto :goto_14

    :cond_2e
    move v1, v2

    .line 594
    goto :goto_28
.end method

.method private setProgress()I
    .registers 10

    .prologue
    .line 334
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mDragging:Z

    if-eqz v5, :cond_a

    .line 335
    :cond_8
    const/4 v4, 0x0

    .line 355
    :cond_9
    :goto_9
    return v4

    .line 338
    :cond_a
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v5}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 339
    .local v4, "position":I
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v5}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 340
    .local v0, "duration":I
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_36

    .line 341
    if-lez v0, :cond_29

    .line 343
    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .line 344
    .local v2, "pos":J
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 346
    .end local v2    # "pos":J
    :cond_29
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v5}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 347
    .local v1, "percent":I
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 350
    .end local v1    # "percent":I
    :cond_36
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_43

    .line 351
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/VideoControllerView;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_43
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    .line 353
    iget-object v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lic/buzzebeeslib/control/VideoControllerView;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method private stringForTime(I)Ljava/lang/String;
    .registers 13
    .param p1, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 319
    div-int/lit16 v3, p1, 0x3e8

    .line 321
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 322
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 323
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 325
    .local v0, "hours":I
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 326
    if-lez v0, :cond_36

    .line 327
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    :goto_35
    return-object v4

    :cond_36
    iget-object v4, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_35
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0xbb8

    const/4 v2, 0x1

    .line 372
    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    if-nez v3, :cond_8

    .line 412
    :cond_7
    :goto_7
    return v2

    .line 376
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 377
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_37

    move v1, v2

    .line 378
    .local v1, "uniqueDown":Z
    :goto_19
    const/16 v3, 0x4f

    if-eq v0, v3, :cond_25

    const/16 v3, 0x55

    if-eq v0, v3, :cond_25

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_39

    .line 379
    :cond_25
    if-eqz v1, :cond_7

    .line 380
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->doPauseResume()V

    .line 381
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 382
    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_7

    .line 383
    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_7

    .line 377
    .end local v1    # "uniqueDown":Z
    :cond_37
    const/4 v1, 0x0

    goto :goto_19

    .line 387
    .restart local v1    # "uniqueDown":Z
    :cond_39
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_53

    .line 388
    if-eqz v1, :cond_7

    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v3}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_7

    .line 389
    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v3}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->start()V

    .line 390
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->updatePausePlay()V

    .line 391
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    goto :goto_7

    .line 394
    :cond_53
    const/16 v3, 0x56

    if-eq v0, v3, :cond_5b

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_71

    .line 395
    :cond_5b
    if-eqz v1, :cond_7

    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v3}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 396
    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v3}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->pause()V

    .line 397
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->updatePausePlay()V

    .line 398
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    goto :goto_7

    .line 401
    :cond_71
    const/16 v3, 0x19

    if-eq v0, v3, :cond_7d

    const/16 v3, 0x18

    if-eq v0, v3, :cond_7d

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_82

    .line 403
    :cond_7d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_7

    .line 404
    :cond_82
    const/4 v3, 0x4

    if-eq v0, v3, :cond_89

    const/16 v3, 0x52

    if-ne v0, v3, :cond_90

    .line 405
    :cond_89
    if-eqz v1, :cond_7

    .line 406
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->hide()V

    goto/16 :goto_7

    .line 411
    :cond_90
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 412
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_7
.end method

.method public hide()V
    .registers 4

    .prologue
    .line 305
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mAnchor:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    .line 316
    :goto_4
    return-void

    .line 310
    :cond_5
    :try_start_5
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 311
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_10} :catch_14

    .line 315
    :goto_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mShowing:Z

    goto :goto_4

    .line 312
    :catch_14
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .registers 4

    .prologue
    .line 155
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 156
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lic/buzzebeeslib/R$layout;->bz_media_controller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lic/buzzebeeslib/control/VideoControllerView;->initControllerView(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/VideoControllerView;->initControllerView(Landroid/view/View;)V

    .line 124
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 360
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 366
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, -0x1

    .line 139
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mAnchor:Landroid/view/ViewGroup;

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->removeAllViews()V

    .line 144
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lic/buzzebeeslib/control/VideoControllerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    .line 535
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 537
    :cond_b
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    .line 538
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 540
    :cond_14
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 541
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 543
    :cond_1d
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    .line 544
    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4c

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 546
    :cond_2d
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3c

    .line 547
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4e

    iget-object v3, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_4e

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 549
    :cond_3c
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_45

    .line 550
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 552
    :cond_45
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->disableUnsupportedButtons()V

    .line 553
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 554
    return-void

    :cond_4c
    move v0, v2

    .line 544
    goto :goto_2a

    :cond_4e
    move v1, v2

    .line 547
    goto :goto_39
.end method

.method public setMediaPlayer(Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;)V
    .registers 2
    .param p1, "player"    # Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    .prologue
    .line 127
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    .line 128
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->updatePausePlay()V

    .line 129
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->updateFullScreen()V

    .line 130
    return-void
.end method

.method public setOnRqExitListener(Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;)V
    .registers 2
    .param p1, "onRqExitListener"    # Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;

    .prologue
    .line 93
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView;->onRqExitListener:Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;

    .line 94
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 599
    iput-object p1, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextListener:Landroid/view/View$OnClickListener;

    .line 600
    iput-object p2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mListenersSet:Z

    .line 603
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 604
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->installPrevNextListeners()V

    .line 606
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    .line 609
    :cond_12
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_16

    .line 613
    :cond_16
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 234
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/control/VideoControllerView;->show(I)V

    .line 235
    return-void
.end method

.method public show(I)V
    .registers 8
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x1

    .line 270
    iget-boolean v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mShowing:Z

    if-nez v2, :cond_28

    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mAnchor:Landroid/view/ViewGroup;

    if-eqz v2, :cond_28

    .line 271
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->setProgress()I

    .line 272
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_15

    .line 273
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 275
    :cond_15
    invoke-direct {p0}, Lic/buzzebeeslib/control/VideoControllerView;->disableUnsupportedButtons()V

    .line 277
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 279
    .local v1, "tlp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iput-boolean v5, p0, Lic/buzzebeeslib/control/VideoControllerView;->mShowing:Z

    .line 282
    .end local v1    # "tlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_28
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->updatePausePlay()V

    .line 283
    invoke-virtual {p0}, Lic/buzzebeeslib/control/VideoControllerView;->updateFullScreen()V

    .line 288
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_47

    .line 292
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v2, p0, Lic/buzzebeeslib/control/VideoControllerView;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 295
    :cond_47
    return-void
.end method

.method public updateFullScreen()V
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mFullscreenButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_d

    .line 453
    :cond_c
    :goto_c
    return-void

    .line 448
    :cond_d
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->isFullScreen()Z

    goto :goto_c
.end method

.method public updatePausePlay()V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_d

    .line 441
    :cond_c
    :goto_c
    return-void

    .line 434
    :cond_d
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPlayer:Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 436
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_ad_watch_icon_pause_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_c

    .line 439
    :cond_1d
    iget-object v0, p0, Lic/buzzebeeslib/control/VideoControllerView;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_ad_wacth_play_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_c
.end method
