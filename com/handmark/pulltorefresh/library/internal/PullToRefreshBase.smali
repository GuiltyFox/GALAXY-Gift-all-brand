.class public abstract Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

.field private i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field private j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field private k:Landroid/widget/FrameLayout;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/animation/Interpolator;

.field private r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

.field private s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private u:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private v:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private w:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private x:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->o:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->o:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->o:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 113
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->o:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 119
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 120
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method private final a(IJ)V
    .registers 12

    .prologue
    .line 1241
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1242
    return-void
.end method

.method private final a(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 15

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_9

    .line 1247
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->a()V

    .line 1251
    :cond_9
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 1257
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1261
    :goto_1c
    if-eq v2, p1, :cond_3f

    .line 1262
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_29

    .line 1264
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    .line 1266
    :cond_29
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    .line 1268
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_45

    .line 1269
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1274
    :cond_3f
    :goto_3f
    return-void

    .line 1253
    :pswitch_40
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getScrollX()I

    move-result v2

    goto :goto_1c

    .line 1271
    :cond_45
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_3f

    .line 1251
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1072
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d0

    .line 1078
    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setOrientation(I)V

    .line 1082
    :goto_14
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setGravity(I)V

    .line 1084
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->b:I

    .line 1088
    sget-object v0, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1090
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1091
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1094
    :cond_3d
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1095
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->a(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 1101
    :cond_51
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a:Landroid/view/View;

    .line 1102
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1105
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1106
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1111
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 1112
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1113
    if-eqz v1, :cond_81

    .line 1114
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    :cond_81
    :goto_81
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1125
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->o:Z

    .line 1128
    :cond_91
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1129
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    .line 1135
    :cond_a1
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/content/res/TypedArray;)V

    .line 1136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1139
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g()V

    .line 1140
    return-void

    .line 1074
    :pswitch_ab
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_14

    .line 1116
    :cond_b0
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1117
    const-string/jumbo v1, "ptrAdapterViewBackground"

    const-string/jumbo v2, "ptrRefreshableViewBackground"

    invoke-static {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/Utils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    sget v1, Lcom/bzbs/lib/survey/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1119
    if-eqz v1, :cond_81

    .line 1120
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_81

    .line 1072
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_ab
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 1050
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    .line 1051
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1054
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->q()V

    return-void
.end method

.method static synthetic b(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getMaximumPullScroll()I
    .registers 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1225
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 1230
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_1b
    return v0

    .line 1227
    :pswitch_1c
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1b

    .line 1225
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method

.method private q()V
    .registers 3

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_a

    .line 1060
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    .line 1068
    :cond_9
    :goto_9
    return-void

    .line 1061
    :cond_a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_9

    .line 1062
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_1a

    .line 1063
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    goto :goto_9

    .line 1064
    :cond_1a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_9

    .line 1065
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;->b(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    goto :goto_9
.end method

.method private r()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1143
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 1151
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    .line 1145
    :pswitch_f
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->e()Z

    move-result v0

    goto :goto_e

    .line 1147
    :pswitch_14
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->f()Z

    move-result v0

    goto :goto_e

    .line 1149
    :pswitch_19
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->f()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_25
    const/4 v0, 0x1

    goto :goto_e

    .line 1143
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_19
    .end packed-switch
.end method

.method private s()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 1166
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9a

    .line 1173
    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->f:F

    .line 1174
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    .line 1178
    :goto_17
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->c:[I

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a0

    .line 1185
    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1186
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    .line 1190
    :goto_33
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1192
    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1193
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1194
    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->c:[I

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a6

    .line 1200
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(F)V

    .line 1204
    :goto_57
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v2, v3, :cond_86

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_86

    .line 1205
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    .line 1210
    :cond_6a
    :goto_6a
    return-void

    .line 1168
    :pswitch_6b
    iget v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->e:F

    .line 1169
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    goto :goto_17

    .line 1180
    :pswitch_70
    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1181
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getFooterSize()I

    move-result v0

    goto :goto_33

    .line 1196
    :pswitch_80
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(F)V

    goto :goto_57

    .line 1206
    :cond_86
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-ne v2, v3, :cond_6a

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 1207
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    goto :goto_6a

    .line 1166
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_6b
    .end packed-switch

    .line 1178
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_70
    .end packed-switch

    .line 1194
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_80
    .end packed-switch
.end method

.method private t()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1213
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 1219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_16
    return-object v0

    .line 1215
    :pswitch_17
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_16

    .line 1213
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 6

    .prologue
    .line 582
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 583
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    .line 582
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    .line 584
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 585
    return-object v0
.end method

.method public abstract a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
.end method

.method protected final a(I)V
    .registers 4

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(IJ)V

    .line 993
    return-void
.end method

.method protected final a(II)V
    .registers 6

    .prologue
    .line 921
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 923
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 937
    :cond_17
    :goto_17
    return-void

    .line 925
    :pswitch_18
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_17

    .line 926
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 927
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_17

    .line 931
    :pswitch_24
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_17

    .line 932
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 933
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_17

    .line 923
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_18
        :pswitch_24
    .end packed-switch
.end method

.method protected final a(ILcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 10

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1004
    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .registers 2

    .prologue
    .line 660
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 687
    return-void
.end method

.method protected final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    .line 570
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 571
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    .line 578
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 579
    return-void
.end method

.method public final a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 5

    .prologue
    .line 418
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_23

    .line 420
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 423
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g()V

    .line 425
    :cond_23
    return-void
.end method

.method final varargs a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V
    .registers 6

    .prologue
    .line 535
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 537
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->b:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 560
    :goto_2f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_3c

    .line 561
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 563
    :cond_3c
    return-void

    .line 542
    :pswitch_3d
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d()V

    goto :goto_2f

    .line 545
    :pswitch_41
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->b()V

    goto :goto_2f

    .line 548
    :pswitch_45
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c()V

    goto :goto_2f

    .line 552
    :pswitch_49
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Z)V

    goto :goto_2f

    .line 540
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method protected a(Z)V
    .registers 5

    .prologue
    .line 723
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 724
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()V

    .line 726
    :cond_d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 727
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()V

    .line 730
    :cond_1a
    if-eqz p1, :cond_48

    .line 731
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    if-eqz v0, :cond_43

    .line 734
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$1;-><init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    .line 741
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 748
    :pswitch_32
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 758
    :goto_3a
    return-void

    .line 744
    :pswitch_3b
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_3a

    .line 752
    :cond_43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(I)V

    goto :goto_3a

    .line 756
    :cond_48
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->q()V

    goto :goto_3a

    .line 741
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_32
        :pswitch_3b
    .end packed-switch
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .prologue
    .line 127
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j()Landroid/view/View;

    move-result-object v0

    .line 132
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    .line 133
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void

    .line 135
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 703
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 714
    :goto_d
    return-void

    .line 705
    :pswitch_e
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e()V

    goto :goto_d

    .line 708
    :pswitch_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e()V

    goto :goto_d

    .line 703
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 696
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 765
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 776
    :goto_d
    return-void

    .line 767
    :pswitch_e
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g()V

    goto :goto_d

    .line 770
    :pswitch_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g()V

    goto :goto_d

    .line 765
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method

.method protected d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 783
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p:Z

    .line 787
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h()V

    .line 788
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h()V

    .line 790
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(I)V

    .line 791
    return-void
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Z
.end method

.method protected g()V
    .registers 4

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1026
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_11

    .line 1027
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1029
    :cond_11
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1030
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    :cond_1f
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2c

    .line 1035
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1037
    :cond_2c
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1038
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    :cond_39
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p()V

    .line 1046
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_47

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    :goto_44
    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1047
    return-void

    .line 1046
    :cond_47
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto :goto_44
.end method

.method public final getFilterTouchEvents()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n:Z

    return v0
.end method

.method protected final getFooterSize()I
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderSize()I
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected getPullToRefreshScrollDuration()I
    .registers 2

    .prologue
    .line 642
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .registers 2

    .prologue
    .line 646
    const/16 v0, 0x145

    return v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    return v0
.end method

.method public final h()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final i()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final j()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a:Landroid/view/View;

    return-object v0
.end method

.method public final k()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    return-object v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .registers 3

    .prologue
    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->o:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a:Landroid/view/View;

    .line 207
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/internal/OverscrollHelper;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final n()Z
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected o()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 223
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l()Z

    move-result v1

    if-nez v1, :cond_9

    .line 294
    :goto_8
    return v0

    .line 227
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 229
    const/4 v3, 0x3

    if-eq v1, v3, :cond_12

    if-ne v1, v2, :cond_15

    .line 230
    :cond_12
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    goto :goto_8

    .line 234
    :cond_15
    if-eqz v1, :cond_1d

    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    if-eqz v3, :cond_1d

    move v0, v2

    .line 235
    goto :goto_8

    .line 238
    :cond_1d
    packed-switch v1, :pswitch_data_da

    .line 294
    :cond_20
    :goto_20
    :pswitch_20
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    goto :goto_8

    .line 241
    :pswitch_23
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v2

    .line 242
    goto :goto_8

    .line 245
    :cond_2f
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 251
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e4

    .line 258
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    sub-float v1, v3, v0

    .line 259
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    sub-float v0, v4, v0

    .line 262
    :goto_54
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 264
    iget v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->b:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_20

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n:Z

    if-eqz v6, :cond_6b

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_20

    .line 265
    :cond_6b
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c()Z

    move-result v0

    if-eqz v0, :cond_99

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_99

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->e()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 266
    iput v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    .line 267
    iput v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    .line 268
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 269
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_20

    .line 270
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto :goto_20

    .line 253
    :pswitch_90
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    sub-float v1, v4, v0

    .line 254
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    sub-float v0, v3, v0

    .line 255
    goto :goto_54

    .line 272
    :cond_99
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_20

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->f()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 273
    iput v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    .line 274
    iput v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    .line 275
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 276
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_20

    .line 277
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto/16 :goto_20

    .line 285
    :pswitch_bf
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->f:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->e:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    .line 288
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    goto/16 :goto_20

    .line 238
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_20
        :pswitch_23
    .end packed-switch

    .line 251
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_90
    .end packed-switch
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 796
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_5d

    .line 797
    check-cast p1, Landroid/os/Bundle;

    .line 799
    const-string/jumbo v0, "ptr_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 800
    const-string/jumbo v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 802
    const-string/jumbo v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    .line 803
    const-string/jumbo v0, "ptr_show_refreshing_view"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    .line 806
    const-string/jumbo v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 808
    const-string/jumbo v0, "ptr_state"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->a(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    move-result-object v0

    .line 809
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v0, v1, :cond_52

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-ne v0, v1, :cond_59

    .line 810
    :cond_52
    new-array v1, v3, [Z

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    .line 814
    :cond_59
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    .line 819
    :goto_5c
    return-void

    .line 818
    :cond_5d
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_5c
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 828
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    .line 830
    const-string/jumbo v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 831
    const-string/jumbo v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    const-string/jumbo v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 833
    const-string/jumbo v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 834
    const-string/jumbo v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 835
    const-string/jumbo v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 837
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .registers 10

    .prologue
    .line 843
    const-string/jumbo v0, "PullToRefresh"

    const-string/jumbo v1, "onSizeChanged. W: %d, H: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 849
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p()V

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(II)V

    .line 858
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$2;-><init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 864
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l()Z

    move-result v2

    if-nez v2, :cond_9

    .line 367
    :cond_8
    :goto_8
    return v0

    .line 312
    :cond_9
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n()Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    .line 313
    goto :goto_8

    .line 316
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_8

    .line 320
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_8a

    goto :goto_8

    .line 332
    :pswitch_29
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->r()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->f:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->e:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    move v0, v1

    .line 335
    goto :goto_8

    .line 322
    :pswitch_41
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    if-eqz v2, :cond_8

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->d:F

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->c:F

    .line 325
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s()V

    move v0, v1

    .line 326
    goto :goto_8

    .line 342
    :pswitch_56
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    if-eqz v2, :cond_8

    .line 343
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->g:Z

    .line 345
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_75

    .line 347
    :cond_6a
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 348
    goto :goto_8

    .line 352
    :cond_75
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 353
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(I)V

    move v0, v1

    .line 354
    goto :goto_8

    .line 359
    :cond_80
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 361
    goto :goto_8

    .line 320
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_56
        :pswitch_41
        :pswitch_56
    .end packed-switch
.end method

.method protected final p()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 871
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v2

    float-to-int v6, v0

    .line 873
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingLeft()I

    move-result v5

    .line 874
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 875
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 876
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingBottom()I

    move-result v2

    .line 878
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_b0

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 913
    :goto_2e
    const-string/jumbo v5, "PullToRefresh"

    const-string/jumbo v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setPadding(IIII)V

    .line 916
    return-void

    .line 880
    :pswitch_5d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 881
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 882
    neg-int v0, v6

    .line 887
    :goto_6b
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 888
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v3, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 889
    neg-int v3, v6

    move v9, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v9

    goto :goto_2e

    :cond_7f
    move v0, v1

    .line 884
    goto :goto_6b

    :cond_81
    move v3, v4

    move v4, v0

    move v0, v2

    move v2, v1

    .line 893
    goto :goto_2e

    .line 896
    :pswitch_86
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 897
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 898
    neg-int v0, v6

    .line 903
    :goto_94
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 904
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 905
    neg-int v2, v6

    move v4, v5

    move v9, v3

    move v3, v0

    move v0, v2

    move v2, v9

    goto :goto_2e

    :cond_a8
    move v0, v1

    .line 900
    goto :goto_94

    :cond_aa
    move v2, v3

    move v4, v5

    move v3, v0

    move v0, v1

    .line 907
    goto :goto_2e

    .line 878
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_86
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .registers 3

    .prologue
    .line 378
    if-nez p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 379
    return-void

    .line 378
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setFilterTouchEvents(Z)V
    .registers 2

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n:Z

    .line 384
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .registers 7

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 947
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeaderScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 952
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 954
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->p:Z

    if-eqz v1, :cond_34

    .line 955
    if-gez v0, :cond_44

    .line 956
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 975
    :cond_34
    :goto_34
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 983
    :goto_43
    return-void

    .line 957
    :cond_44
    if-lez v0, :cond_4c

    .line 958
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_34

    .line 960
    :cond_4c
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 961
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_34

    .line 977
    :pswitch_57
    invoke-virtual {p0, v3, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->scrollTo(II)V

    goto :goto_43

    .line 980
    :pswitch_5b
    invoke-virtual {p0, v0, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->scrollTo(II)V

    goto :goto_43

    .line 975
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_57
    .end packed-switch
.end method

.method public setLongClickable(Z)V
    .registers 3

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 414
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .registers 3

    .prologue
    .line 465
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 466
    return-void

    .line 465
    :cond_a
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto :goto_6
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .registers 2

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->o:Z

    .line 471
    return-void
.end method

.method public final setRefreshing(Z)V
    .registers 5

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->n()Z

    move-result v0

    if-nez v0, :cond_11

    .line 481
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    .line 483
    :cond_11
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .registers 2

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->m:Z

    .line 372
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .registers 2

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->l:Z

    .line 526
    return-void
.end method
