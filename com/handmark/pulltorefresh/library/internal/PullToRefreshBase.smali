.class public abstract Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/handmark/pulltorefresh/library/internal/IPullToRefresh",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I = null

.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation:[I = null

.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I = null

.field static final DEBUG:Z = true

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field protected mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I
    .registers 3

    .prologue
    .line 38
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I
    .registers 3

    .prologue
    .line 38
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State()[I
    .registers 3

    .prologue
    .line 38
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 113
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    .local p3, "animStyle":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 73
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 79
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 80
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 82
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 86
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 119
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 120
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 1

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$5(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 7

    .prologue
    .line 1244
    invoke-direct/range {p0 .. p6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1050
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1051
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1054
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1055
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1054
    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    return-void
.end method

.method private callRefreshListener()V
    .registers 3

    .prologue
    .line 1059
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_a

    .line 1060
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    .line 1068
    :cond_9
    :goto_9
    return-void

    .line 1061
    :cond_a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_9

    .line 1062
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_1a

    .line 1063
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    goto :goto_9

    .line 1064
    :cond_1a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_9

    .line 1065
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    goto :goto_9
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1213
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 1219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_18
    return-object v0

    .line 1215
    :pswitch_19
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_18

    .line 1213
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_19
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .registers 4

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000

    .line 1225
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 1230
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_1d
    return v0

    .line 1227
    :pswitch_1e
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1d

    .line 1225
    nop

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_1e
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1072
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_d0

    .line 1078
    invoke-virtual {p0, v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setOrientation(I)V

    .line 1082
    :goto_16
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setGravity(I)V

    .line 1084
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1085
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mTouchSlop:I

    .line 1088
    sget-object v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1090
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1091
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1094
    :cond_3f
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1096
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    .line 1095
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 1101
    :cond_53
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1102
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1105
    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1106
    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1111
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 1112
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1113
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_83

    .line 1114
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_83
    :goto_83
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1125
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1128
    :cond_93
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1130
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    .line 1129
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1135
    :cond_a3
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1139
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->updateUIForMode()V

    .line 1140
    return-void

    .line 1074
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_ad
    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_16

    .line 1116
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_b2
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1117
    const-string v3, "ptrAdapterViewBackground"

    const-string v4, "ptrRefreshableViewBackground"

    invoke-static {v3, v4}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    sget v3, Lic/buzzebeeslib/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1119
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_83

    .line 1120
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_83

    .line 1072
    nop

    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_ad
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .registers 4

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1143
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 1151
    :cond_10
    :goto_10
    return v0

    .line 1145
    :pswitch_11
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_10

    .line 1147
    :pswitch_16
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_10

    .line 1149
    :pswitch_1b
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_27
    const/4 v0, 0x1

    goto :goto_10

    .line 1143
    nop

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_11
        :pswitch_16
        :pswitch_1b
    .end packed-switch
.end method

.method private pullEvent()V
    .registers 11

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v9, 0x0

    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    .line 1166
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_a2

    .line 1173
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mInitialMotionY:F

    .line 1174
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    .line 1175
    .local v2, "lastMotionValue":F
    :goto_19
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v5

    .line 1178
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_a8

    .line 1185
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1186
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1190
    .local v1, "itemDimension":I
    :goto_37
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1192
    if-eqz v3, :cond_71

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_71

    .line 1193
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1194
    .local v4, "scale":F
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v5

    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_ae

    .line 1200
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    .line 1204
    :goto_5e
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v6, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v5, v6, :cond_8d

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_8d

    .line 1205
    sget-object v5, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    .line 1210
    .end local v4    # "scale":F
    :cond_71
    :goto_71
    return-void

    .line 1168
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_72
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mInitialMotionX:F

    .line 1169
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    .line 1170
    .restart local v2    # "lastMotionValue":F
    goto :goto_19

    .line 1180
    :pswitch_77
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1181
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1182
    .restart local v1    # "itemDimension":I
    goto :goto_37

    .line 1196
    .restart local v4    # "scale":F
    :pswitch_87
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    goto :goto_5e

    .line 1206
    :cond_8d
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v6, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-ne v5, v6, :cond_71

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_71

    .line 1207
    sget-object v5, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    goto :goto_71

    .line 1166
    nop

    :pswitch_data_a2
    .packed-switch 0x2
        :pswitch_72
    .end packed-switch

    .line 1178
    :pswitch_data_a8
    .packed-switch 0x3
        :pswitch_77
    .end packed-switch

    .line 1194
    :pswitch_data_ae
    .packed-switch 0x3
        :pswitch_87
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .registers 12
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1241
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1242
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 15
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J

    .prologue
    .line 1246
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p6, "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_9

    .line 1247
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1251
    :cond_9
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 1257
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1261
    .local v2, "oldScrollValue":I
    :goto_1e
    if-eq v2, p1, :cond_41

    .line 1262
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2b

    .line 1264
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1266
    :cond_2b
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    .line 1268
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_47

    .line 1269
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1274
    :cond_41
    :goto_41
    return-void

    .line 1253
    .end local v2    # "oldScrollValue":I
    :pswitch_42
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1254
    .restart local v2    # "oldScrollValue":I
    goto :goto_1e

    .line 1271
    :cond_47
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_41

    .line 1251
    nop

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_42
    .end packed-switch
.end method

.method private final smoothScrollToAndBack(I)V
    .registers 9
    .param p1, "y"    # I

    .prologue
    .line 1277
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;-><init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1284
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 127
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2a

    .line 133
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void

    .line 135
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_2a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 570
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 571
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 578
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 579
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 582
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 583
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v2

    .line 582
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    .line 584
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 585
    return-object v0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;
    .registers 5
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 593
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;-><init>()V

    .line 595
    .local v0, "proxy":Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;
    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 596
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 598
    :cond_14
    if-eqz p2, :cond_23

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 599
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 602
    :cond_23
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .registers 3

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 141
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 142
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollToAndBack(I)V

    .line 149
    :goto_19
    return v0

    .line 144
    :cond_1a
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 145
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollToAndBack(I)V

    goto :goto_19

    .line 149
    :cond_32
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .registers 2

    .prologue
    .line 622
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 623
    return-void
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 2

    .prologue
    .line 154
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .registers 2

    .prologue
    .line 159
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 2

    .prologue
    .line 626
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .registers 2

    .prologue
    .line 630
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 2

    .prologue
    .line 634
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .registers 2

    .prologue
    .line 638
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;
    .registers 2

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;
    .registers 4
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 169
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 2

    .prologue
    .line 174
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .registers 2

    .prologue
    .line 642
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .registers 2

    .prologue
    .line 646
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 650
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .registers 2

    .prologue
    .line 184
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;
    .registers 2

    .prologue
    .line 189
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .registers 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 660
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .registers 2

    .prologue
    .line 196
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public final isPullToRefreshEnabled()Z
    .registers 2

    .prologue
    .line 201
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .registers 3

    .prologue
    .line 206
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_14

    .line 207
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/internal/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 206
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .registers 3

    .prologue
    .line 212
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .registers 2

    .prologue
    .line 217
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 223
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    .line 294
    :goto_8
    return v6

    .line 227
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 229
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_12

    if-ne v1, v7, :cond_15

    .line 230
    :cond_12
    iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_8

    .line 234
    :cond_15
    if-eqz v1, :cond_1d

    iget-boolean v8, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_1d

    move v6, v7

    .line 235
    goto :goto_8

    .line 238
    :cond_1d
    packed-switch v1, :pswitch_data_dc

    .line 294
    :cond_20
    :goto_20
    :pswitch_20
    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_8

    .line 241
    :pswitch_23
    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_2f

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v7

    .line 242
    goto :goto_8

    .line 245
    :cond_2f
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 251
    .local v4, "x":F
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_e6

    .line 258
    iget v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 259
    .local v2, "diff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 262
    .local v3, "oppositeDiff":F
    :goto_56
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 264
    .local v0, "absDiff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_20

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6d

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_20

    .line 265
    :cond_6d
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_9b

    const/high16 v6, 0x3f800000

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_9b

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 266
    iput v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    .line 267
    iput v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    .line 268
    iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 269
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v7, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_20

    .line 270
    sget-object v6, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto :goto_20

    .line 253
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_92
    iget v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 254
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 255
    .restart local v3    # "oppositeDiff":F
    goto :goto_56

    .line 272
    .restart local v0    # "absDiff":F
    :cond_9b
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_20

    const/high16 v6, -0x40800000

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_20

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 273
    iput v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    .line 274
    iput v4, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    .line 275
    iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 276
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v7, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_20

    .line 277
    sget-object v6, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto/16 :goto_20

    .line 285
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_c1
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    .line 288
    iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_20

    .line 238
    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_20
        :pswitch_23
    .end packed-switch

    .line 251
    :pswitch_data_e6
    .packed-switch 0x2
        :pswitch_92
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 687
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 696
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .registers 3

    .prologue
    .line 703
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 714
    :goto_f
    return-void

    .line 705
    :pswitch_10
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_f

    .line 708
    :pswitch_16
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_f

    .line 703
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .registers 3

    .prologue
    .line 299
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 300
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    .line 302
    :cond_e
    return-void
.end method

.method protected onRefreshing(Z)V
    .registers 5
    .param p1, "doScroll"    # Z

    .prologue
    .line 723
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 724
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 726
    :cond_d
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 727
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 730
    :cond_1a
    if-eqz p1, :cond_4a

    .line 731
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_45

    .line 734
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$1;-><init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    .line 741
    .local v0, "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4e

    .line 748
    :pswitch_34
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 758
    .end local v0    # "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    :goto_3c
    return-void

    .line 744
    .restart local v0    # "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    :pswitch_3d
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_3c

    .line 752
    .end local v0    # "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    :cond_45
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_3c

    .line 756
    :cond_4a
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->callRefreshListener()V

    goto :goto_3c

    .line 741
    :pswitch_data_4e
    .packed-switch 0x3
        :pswitch_3d
        :pswitch_34
        :pswitch_3d
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .registers 3

    .prologue
    .line 765
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 776
    :goto_f
    return-void

    .line 767
    :pswitch_10
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_f

    .line 770
    :pswitch_16
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_f

    .line 765
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method protected onReset()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 783
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 787
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 788
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 790
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(I)V

    .line 791
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 796
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_58

    move-object v0, p1

    .line 797
    check-cast v0, Landroid/os/Bundle;

    .line 799
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 800
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 802
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 803
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 806
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 808
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    move-result-object v1

    .line 809
    .local v1, "viewState":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;"
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v1, v2, :cond_4d

    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-ne v1, v2, :cond_54

    .line 810
    :cond_4d
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    .line 814
    :cond_54
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 819
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;"
    :goto_57
    return-void

    .line 818
    :cond_58
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_57
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 824
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 828
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 830
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 831
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 833
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 834
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 835
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 837
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 843
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const-string v0, "PullToRefresh"

    const-string v1, "onSizeChanged. W: %d, H: %d"

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
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 858
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$2;-><init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 864
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 367
    :cond_8
    :goto_8
    return v0

    .line 312
    :cond_9
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isRefreshing()Z

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
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 335
    goto :goto_8

    .line 322
    :pswitch_41
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_8

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionY:F

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLastMotionX:F

    .line 325
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 326
    goto :goto_8

    .line 342
    :pswitch_56
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_8

    .line 343
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mIsBeingDragged:Z

    .line 345
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-ne v2, v3, :cond_75

    .line 346
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_75

    .line 347
    :cond_6a
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 348
    goto :goto_8

    .line 352
    :cond_75
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 353
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 354
    goto :goto_8

    .line 359
    :cond_80
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

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

.method protected final refreshLoadingViewsSize()V
    .registers 11

    .prologue
    .line 871
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 873
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 874
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 875
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 876
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 878
    .local v1, "pBottom":I
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_9c

    .line 913
    :goto_2b
    const-string v5, "PullToRefresh"

    const-string v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setPadding(IIII)V

    .line 916
    return-void

    .line 880
    :pswitch_59
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 881
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 882
    neg-int v2, v0

    .line 887
    :goto_67
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 888
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 889
    neg-int v3, v0

    .line 890
    goto :goto_2b

    .line 884
    :cond_76
    const/4 v2, 0x0

    goto :goto_67

    .line 891
    :cond_78
    const/4 v3, 0x0

    .line 893
    goto :goto_2b

    .line 896
    :pswitch_7a
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 897
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 898
    neg-int v4, v0

    .line 903
    :goto_88
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 904
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 905
    neg-int v1, v0

    .line 906
    goto :goto_2b

    .line 900
    :cond_97
    const/4 v4, 0x0

    goto :goto_88

    .line 907
    :cond_99
    const/4 v1, 0x0

    goto :goto_2b

    .line 878
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_59
    .end packed-switch
.end method

.method protected final refreshRefreshableViewSize(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 921
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 923
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    .line 937
    :cond_19
    :goto_19
    return-void

    .line 925
    :pswitch_1a
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_19

    .line 926
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 927
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_19

    .line 931
    :pswitch_26
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_19

    .line 932
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 933
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_19

    .line 923
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1a
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .registers 3
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 378
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 379
    return-void

    .line 378
    :cond_7
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public final setFilterTouchEvents(Z)V
    .registers 2
    .param p1, "filterEvents"    # Z

    .prologue
    .line 383
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 384
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .registers 8
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 947
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setHeaderScroll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 952
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 954
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_2e

    .line 955
    if-gez p1, :cond_40

    .line 956
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 975
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Orientation()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    .line 983
    :goto_3f
    return-void

    .line 957
    :cond_40
    if-lez p1, :cond_48

    .line 958
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_2e

    .line 960
    :cond_48
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 961
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_2e

    .line 977
    :pswitch_53
    invoke-virtual {p0, v4, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->scrollTo(II)V

    goto :goto_3f

    .line 980
    :pswitch_57
    invoke-virtual {p0, p1, v4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->scrollTo(II)V

    goto :goto_3f

    .line 975
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_53
        :pswitch_57
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 391
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 399
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 407
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3
    .param p1, "longClickable"    # Z

    .prologue
    .line 413
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 414
    return-void
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 5

    .prologue
    .line 418
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p1, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_1d

    .line 420
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting mode to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 423
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->updateUIForMode()V

    .line 425
    :cond_1d
    return-void
.end method

.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;

    .line 429
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    .line 441
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;

    .line 435
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 448
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 449
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 5
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 457
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 465
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 466
    return-void

    .line 465
    :cond_a
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto :goto_6
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 470
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 471
    return-void
.end method

.method public final setRefreshing()V
    .registers 2

    .prologue
    .line 475
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setRefreshing(Z)V

    .line 476
    return-void
.end method

.method public final setRefreshing(Z)V
    .registers 5
    .param p1, "doScroll"    # Z

    .prologue
    .line 480
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 481
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V

    .line 483
    :cond_11
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 490
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 5
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 498
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 507
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 508
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 5
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 515
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 520
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 521
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .registers 2
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 371
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 372
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .registers 2
    .param p1, "showView"    # Z

    .prologue
    .line 525
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 526
    return-void
.end method

.method final varargs setState(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;[Z)V
    .registers 6
    .param p2, "params"    # [Z

    .prologue
    .line 535
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p1, "state":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    .line 537
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 560
    :goto_2b
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_38

    .line 561
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 563
    :cond_38
    return-void

    .line 542
    :pswitch_39
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onReset()V

    goto :goto_2b

    .line 545
    :pswitch_3d
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_2b

    .line 548
    :pswitch_41
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_2b

    .line 552
    :pswitch_45
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_2b

    .line 540
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .registers 4
    .param p1, "scrollValue"    # I

    .prologue
    .line 992
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 993
    return-void
.end method

.method protected final smoothScrollTo(ILcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 10
    .param p1, "scrollValue"    # I

    .prologue
    .line 1003
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    .local p2, "listener":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1004
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .registers 4
    .param p1, "scrollValue"    # I

    .prologue
    .line 1013
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 1014
    return-void
.end method

.method protected updateUIForMode()V
    .registers 4

    .prologue
    .line 1023
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1026
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_11

    .line 1027
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1029
    :cond_11
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1030
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    :cond_1f
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2c

    .line 1035
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1037
    :cond_2c
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1038
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    :cond_39
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1046
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_47

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    :goto_44
    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1047
    return-void

    .line 1046
    :cond_47
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    goto :goto_44
.end method
