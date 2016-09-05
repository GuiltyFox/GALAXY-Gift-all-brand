.class public Lcom/bzbs/lib/survey/control/VideoControllerView;
.super Landroid/widget/FrameLayout;
.source "VideoControllerView.java"


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Formatter;

.field private c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/os/Handler;

.field private y:Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;-><init>(Landroid/content/Context;Z)V

    .line 117
    const-string/jumbo v0, "VideoControllerView"

    const-string/jumbo v1, "VideoControllerView"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/bzbs/lib/survey/control/VideoControllerView$MessageHandler;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MessageHandler;-><init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->x:Landroid/os/Handler;

    .line 415
    new-instance v0, Lcom/bzbs/lib/survey/control/VideoControllerView$2;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView$2;-><init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->z:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lcom/bzbs/lib/survey/control/VideoControllerView$3;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView$3;-><init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->A:Landroid/view/View$OnClickListener;

    .line 487
    new-instance v0, Lcom/bzbs/lib/survey/control/VideoControllerView$4;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView$4;-><init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 556
    new-instance v0, Lcom/bzbs/lib/survey/control/VideoControllerView$5;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView$5;-><init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->C:Landroid/view/View$OnClickListener;

    .line 571
    new-instance v0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView$6;-><init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->D:Landroid/view/View$OnClickListener;

    .line 108
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->d:Landroid/content/Context;

    .line 109
    iput-boolean p2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->l:Z

    .line 111
    const-string/jumbo v0, "VideoControllerView"

    const-string/jumbo v1, "VideoControllerView"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->y:Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;

    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/VideoControllerView;I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 164
    sget v0, Lcom/bzbs/lib/survey/R$id;->exit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->w:Landroid/widget/ImageButton;

    .line 165
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->w:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bzbs/lib/survey/control/VideoControllerView$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView$1;-><init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v0, Lcom/bzbs/lib/survey/R$id;->pause:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    .line 173
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2f

    .line 174
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 175
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_2f
    sget v0, Lcom/bzbs/lib/survey/R$id;->fullscreen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->v:Landroid/widget/ImageButton;

    .line 179
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_49

    .line 180
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 181
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->v:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_49
    sget v0, Lcom/bzbs/lib/survey/R$id;->ffwd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->r:Landroid/widget/ImageButton;

    .line 185
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_62

    .line 186
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->r:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->m:Z

    if-nez v0, :cond_62

    .line 192
    :cond_62
    sget v0, Lcom/bzbs/lib/survey/R$id;->rew:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->s:Landroid/widget/ImageButton;

    .line 193
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7b

    .line 194
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->s:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->m:Z

    if-nez v0, :cond_7b

    .line 201
    :cond_7b
    sget v0, Lcom/bzbs/lib/survey/R$id;->next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->t:Landroid/widget/ImageButton;

    .line 202
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_91

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->m:Z

    if-nez v0, :cond_91

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->n:Z

    if-nez v0, :cond_91

    .line 205
    :cond_91
    sget v0, Lcom/bzbs/lib/survey/R$id;->prev:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->u:Landroid/widget/ImageButton;

    .line 206
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a7

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->m:Z

    if-nez v0, :cond_a7

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->n:Z

    if-nez v0, :cond_a7

    .line 210
    :cond_a7
    sget v0, Lcom/bzbs/lib/survey/R$id;->mediacontroller_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    .line 211
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d4

    .line 212
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_cd

    .line 213
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 214
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->B:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 219
    :cond_cd
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 222
    :cond_d4
    sget v0, Lcom/bzbs/lib/survey/R$id;->time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->h:Landroid/widget/TextView;

    .line 223
    sget v0, Lcom/bzbs/lib/survey/R$id;->time_current:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->i:Landroid/widget/TextView;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->a:Ljava/lang/StringBuilder;

    .line 225
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->b:Ljava/util/Formatter;

    .line 227
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->j()V

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/VideoControllerView;Z)Z
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->k:Z

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 319
    div-int/lit16 v0, p1, 0x3e8

    .line 321
    rem-int/lit8 v1, v0, 0x3c

    .line 322
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 323
    div-int/lit16 v0, v0, 0xe10

    .line 325
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 326
    if-lez v0, :cond_37

    .line 327
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->b:Ljava/util/Formatter;

    const-string/jumbo v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_36
    return-object v0

    :cond_37
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->b:Ljava/util/Formatter;

    const-string/jumbo v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->h()V

    return-void
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->i()V

    return-void
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic f(Lcom/bzbs/lib/survey/control/VideoControllerView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_5

    .line 261
    :cond_4
    :goto_4
    return-void

    .line 246
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->h()Z

    move-result v0

    if-nez v0, :cond_17

    .line 247
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 249
    :cond_17
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->i()Z

    move-result v0

    if-nez v0, :cond_29

    .line 250
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->s:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 252
    :cond_29
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->r:Landroid/widget/ImageButton;

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

.method private g()I
    .registers 7

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->k:Z

    if-eqz v0, :cond_a

    .line 335
    :cond_8
    const/4 v0, 0x0

    .line 355
    :cond_9
    :goto_9
    return v0

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->e()I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->d()I

    move-result v1

    .line 340
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_35

    .line 341
    if-lez v1, :cond_28

    .line 343
    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 344
    iget-object v4, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 346
    :cond_28
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v2}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->g()I

    move-result v2

    .line 347
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 350
    :cond_35
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_42

    .line 351
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->h:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_42
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 353
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method static synthetic g(Lcom/bzbs/lib/survey/control/VideoControllerView;)I
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->g()I

    move-result v0

    return v0
.end method

.method private h()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_5

    .line 466
    :goto_4
    return-void

    .line 460
    :cond_5
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 461
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->c()V

    .line 465
    :goto_12
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d()V

    goto :goto_4

    .line 463
    :cond_16
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->b()V

    goto :goto_12
.end method

.method static synthetic h(Lcom/bzbs/lib/survey/control/VideoControllerView;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->k:Z

    return v0
.end method

.method private i()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_5

    .line 474
    :goto_4
    return-void

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->l()V

    goto :goto_4
.end method

.method static synthetic i(Lcom/bzbs/lib/survey/control/VideoControllerView;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->j:Z

    return v0
.end method

.method private j()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    .line 588
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->t:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->t:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->o:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 592
    :cond_17
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2b

    .line 593
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->u:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->u:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->p:Landroid/view/View$OnClickListener;

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


# virtual methods
.method protected a()Landroid/view/View;
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->d:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 156
    sget v1, Lcom/bzbs/lib/survey/R$layout;->bz_media_controller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->f:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->f:Landroid/view/View;

    return-object v0
.end method

.method public a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 270
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->j:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    .line 271
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->g()I

    .line 272
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_15

    .line 273
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 275
    :cond_15
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->f()V

    .line 277
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 279
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iput-boolean v4, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->j:Z

    .line 282
    :cond_28
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d()V

    .line 283
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e()V

    .line 288
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->x:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 291
    if-eqz p1, :cond_47

    .line 292
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->x:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->x:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 295
    :cond_47
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 139
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->e:Landroid/view/ViewGroup;

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->removeAllViews()V

    .line 144
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a()Landroid/view/View;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v1, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void
.end method

.method public a(Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    .line 128
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d()V

    .line 129
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e()V

    .line 130
    return-void
.end method

.method public a(Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->y:Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;

    .line 94
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 234
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 235
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 316
    :goto_4
    return-void

    .line 310
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_10} :catch_14

    .line 315
    :goto_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->j:Z

    goto :goto_4

    .line 312
    :catch_14
    move-exception v0

    .line 313
    const-string/jumbo v0, "MediaController"

    const-string/jumbo v1, "already removed"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public d()V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->f:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_d

    .line 441
    :cond_c
    :goto_c
    return-void

    .line 434
    :cond_d
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 436
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    sget v1, Lcom/bzbs/lib/survey/R$drawable;->bz_icon_ad_watch_icon_pause_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_c

    .line 439
    :cond_1d
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    sget v1, Lcom/bzbs/lib/survey/R$drawable;->bz_icon_ad_wacth_play_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_c
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/16 v4, 0xbb8

    const/4 v0, 0x1

    .line 372
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    if-nez v1, :cond_8

    .line 412
    :cond_7
    :goto_7
    return v0

    .line 376
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 377
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_37

    move v1, v0

    .line 378
    :goto_19
    const/16 v3, 0x4f

    if-eq v2, v3, :cond_25

    const/16 v3, 0x55

    if-eq v2, v3, :cond_25

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_39

    .line 379
    :cond_25
    if-eqz v1, :cond_7

    .line 380
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->h()V

    .line 381
    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 382
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    .line 383
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_7

    .line 377
    :cond_37
    const/4 v1, 0x0

    goto :goto_19

    .line 387
    :cond_39
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_53

    .line 388
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->f()Z

    move-result v1

    if-nez v1, :cond_7

    .line 389
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->b()V

    .line 390
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d()V

    .line 391
    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    goto :goto_7

    .line 394
    :cond_53
    const/16 v3, 0x56

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_71

    .line 395
    :cond_5b
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 396
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->c()V

    .line 397
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->d()V

    .line 398
    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    goto :goto_7

    .line 401
    :cond_71
    const/16 v3, 0x19

    if-eq v2, v3, :cond_7d

    const/16 v3, 0x18

    if-eq v2, v3, :cond_7d

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_82

    .line 403
    :cond_7d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 404
    :cond_82
    const/4 v3, 0x4

    if-eq v2, v3, :cond_89

    const/16 v3, 0x52

    if-ne v2, v3, :cond_90

    .line 405
    :cond_89
    if-eqz v1, :cond_7

    .line 406
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->c()V

    goto/16 :goto_7

    .line 411
    :cond_90
    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 412
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_7
.end method

.method public e()V
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->f:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    if-nez v0, :cond_d

    .line 453
    :cond_c
    :goto_c
    return-void

    .line 448
    :cond_d
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->c:Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->f:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Landroid/view/View;)V

    .line 124
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 360
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 366
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    .line 535
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 537
    :cond_b
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    .line 538
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 540
    :cond_14
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 541
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 543
    :cond_1d
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    .line 544
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->t:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4c

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->o:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 546
    :cond_2d
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3c

    .line 547
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->u:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4e

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->p:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_4e

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 549
    :cond_3c
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_45

    .line 550
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 552
    :cond_45
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->f()V

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
