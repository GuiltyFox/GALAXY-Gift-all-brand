.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/ScrollingView;


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    new-array v0, v2, [I

    const v3, 0x1010436

    aput v3, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_48

    :cond_1d
    move v0, v2

    :goto_1e
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_4a

    move v0, v2

    :goto_27
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 248
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 415
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_48
    move v0, v1

    .line 163
    goto :goto_1e

    :cond_4a
    move v0, v1

    .line 170
    goto :goto_27
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 466
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 469
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 253
    new-instance v0, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 270
    new-instance v0, Landroid/support/v7/widget/ViewInfoStore;

    invoke-direct {v0}, Landroid/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    .line 284
    new-instance v0, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 311
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 328
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 338
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 342
    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 367
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 368
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 378
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 380
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 382
    new-instance v0, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 388
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 389
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 390
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 392
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 398
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 401
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 402
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 403
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 405
    new-instance v0, Landroid/support/v7/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 425
    new-instance v0, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 470
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 471
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 473
    const/16 v1, 0x10

    if-lt v0, v1, :cond_111

    move v0, v6

    :goto_93
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 475
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 477
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 478
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 479
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_113

    move v0, v6

    :goto_b2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 481
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 482
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 483
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 485
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_cb

    .line 487
    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 490
    :cond_cb
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 492
    new-instance v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 497
    if-eqz p2, :cond_10d

    .line 499
    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 501
    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 504
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10d

    .line 507
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 509
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 510
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 515
    :cond_10d
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 516
    return-void

    :cond_111
    move v0, v5

    .line 473
    goto :goto_93

    :cond_113
    move v0, v5

    .line 479
    goto :goto_b2
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/RecyclerView;)V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 2

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method static synthetic access$3000()Landroid/view/animation/Interpolator;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/widget/RecyclerView;Z)Z
    .registers 2

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/RecyclerView;)V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3300(Landroid/support/v7/widget/RecyclerView;)V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    return-void
.end method

.method static synthetic access$3400(Landroid/support/v7/widget/RecyclerView;)V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView;)V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/RecyclerView;)V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$4300(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$4400(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4502(Landroid/support/v7/widget/RecyclerView;Z)Z
    .registers 2

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$4600()Z
    .registers 1

    .prologue
    .line 147
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method static synthetic access$5600(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$602(Landroid/support/v7/widget/RecyclerView;Z)Z
    .registers 2

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$6200(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$6400(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1102
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1103
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_24

    move v0, v1

    .line 1104
    :goto_a
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1105
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1107
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1113
    :goto_23
    return-void

    .line 1103
    :cond_24
    const/4 v0, 0x0

    goto :goto_a

    .line 1108
    :cond_26
    if-nez v0, :cond_2e

    .line 1109
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;Z)V

    goto :goto_23

    .line 1111
    :cond_2e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ChildHelper;->d(Landroid/view/View;)V

    goto :goto_23
.end method

.method private animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    .prologue
    .line 3242
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3243
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3244
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3246
    :cond_f
    return-void
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 3260
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3261
    if-eqz p5, :cond_9

    .line 3262
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3264
    :cond_9
    if-eq p1, p2, :cond_1f

    .line 3265
    if-eqz p6, :cond_10

    .line 3266
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3268
    :cond_10
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3270
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3271
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3272
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3273
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3275
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3276
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3278
    :cond_2a
    return-void
.end method

.method private animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    .prologue
    .line 3250
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3251
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3252
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3253
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3255
    :cond_12
    return-void
.end method

.method private canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .prologue
    .line 3553
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private cancelTouch()V
    .registers 2

    .prologue
    .line 2535
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 2536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2537
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .registers 5

    .prologue
    .line 1965
    const/4 v0, 0x0

    .line 1966
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_15

    if-lez p1, :cond_15

    .line 1967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v0

    .line 1969
    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_2a

    if-gez p1, :cond_2a

    .line 1970
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1972
    :cond_2a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_3f

    if-lez p2, :cond_3f

    .line 1973
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1975
    :cond_3f
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_54

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_54

    if-gez p2, :cond_54

    .line 1976
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1978
    :cond_54
    if-eqz v0, :cond_59

    .line 1979
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1981
    :cond_59
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .registers 3

    .prologue
    .line 1449
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_5

    .line 1485
    :cond_4
    :goto_4
    return-void

    .line 1453
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_16

    .line 1454
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1456
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    goto :goto_4

    .line 1459
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1465
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->a(I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1467
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1469
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->b()V

    .line 1470
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_4c

    .line 1471
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1472
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1478
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1479
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    goto :goto_4

    .line 1475
    :cond_54
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->c()V

    goto :goto_4c

    .line 1480
    :cond_5a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1481
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1483
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    goto :goto_4
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 14

    .prologue
    .line 541
    if-eqz p2, :cond_54

    .line 542
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_54

    .line 544
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    :try_start_10
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 549
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 553
    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_27} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_27} :catch_af
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_27} :catch_d2
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_27} :catch_f5
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_27} :catch_118

    move-result-object v4

    .line 556
    const/4 v1, 0x0

    .line 558
    :try_start_29
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 560
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p3, v0, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_46} :catch_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_46} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_46} :catch_af
    .catch Ljava/lang/InstantiationException; {:try_start_29 .. :try_end_46} :catch_d2
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_46} :catch_f5
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_46} :catch_118

    move-object v1, v2

    .line 570
    :goto_47
    const/4 v2, 0x1

    :try_start_48
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 590
    :cond_54
    return-void

    .line 551
    :cond_55
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_58} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_58} :catch_af
    .catch Ljava/lang/InstantiationException; {:try_start_48 .. :try_end_58} :catch_d2
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_58} :catch_f5
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_58} :catch_118

    move-result-object v0

    goto :goto_1e

    .line 561
    :catch_5a
    move-exception v0

    .line 563
    const/4 v2, 0x0

    :try_start_5c
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_61
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5c .. :try_end_61} :catch_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5c .. :try_end_61} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5c .. :try_end_61} :catch_af
    .catch Ljava/lang/InstantiationException; {:try_start_5c .. :try_end_61} :catch_d2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_61} :catch_f5
    .catch Ljava/lang/ClassCastException; {:try_start_5c .. :try_end_61} :catch_118

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 568
    goto :goto_47

    .line 564
    :catch_66
    move-exception v1

    .line 565
    :try_start_67
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 566
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Error creating LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_8c} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_67 .. :try_end_8c} :catch_af
    .catch Ljava/lang/InstantiationException; {:try_start_67 .. :try_end_8c} :catch_d2
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_8c} :catch_f5
    .catch Ljava/lang/ClassCastException; {:try_start_67 .. :try_end_8c} :catch_118

    .line 572
    :catch_8c
    move-exception v0

    .line 573
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Unable to find LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 575
    :catch_af
    move-exception v0

    .line 576
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 578
    :catch_d2
    move-exception v0

    .line 579
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 581
    :catch_f5
    move-exception v0

    .line 582
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Cannot access non-public constructor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 584
    :catch_118
    move-exception v0

    .line 585
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Class is not a LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private didChildRangeChange(II)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3207
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v2

    .line 3208
    if-nez v2, :cond_10

    .line 3209
    if-nez p1, :cond_e

    if-eqz p2, :cond_f

    :cond_e
    move v0, v1

    .line 3213
    :cond_f
    :goto_f
    return v0

    .line 3212
    :cond_10
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3213
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_21

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v1

    if-eq v2, p2, :cond_f

    :cond_21
    move v0, v1

    goto :goto_f
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 5943
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5944
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 5945
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 5946
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5948
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 5949
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5950
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1f
    if-ltz v1, :cond_30

    .line 5951
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 5950
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1f

    .line 5954
    :cond_30
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 5929
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5930
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 5931
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 5932
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5934
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 5935
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5936
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1f
    if-ltz v1, :cond_30

    .line 5937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 5936
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1f

    .line 5940
    :cond_30
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .registers 4

    .prologue
    .line 2742
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2743
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2744
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2745
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2746
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2747
    invoke-static {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2748
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2750
    :cond_1c
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2928
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 2929
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2930
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2931
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2}, Landroid/support/v7/widget/ViewInfoStore;->a()V

    .line 2932
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2934
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2935
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_7b

    :goto_28
    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v2, v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2702(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2936
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 2937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2938
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 2943
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v2

    move v0, v1

    .line 2944
    :goto_58
    if-ge v0, v2, :cond_bc

    .line 2945
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2946
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 2944
    :cond_78
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_7b
    move v0, v1

    .line 2935
    goto :goto_28

    .line 2949
    :cond_7d
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 2953
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 2954
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$2700(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_78

    .line 2956
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 2964
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v6, v4, v5, v3}, Landroid/support/v7/widget/ViewInfoStore;->a(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_78

    .line 2968
    :cond_bc
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 2975
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 2976
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$1800(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    .line 2977
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2979
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2980
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v2, v0}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move v0, v1

    .line 2982
    :goto_e1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v2

    if-ge v0, v2, :cond_12a

    .line 2983
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    .line 2984
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2985
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 2982
    :cond_f9
    :goto_f9
    add-int/lit8 v0, v0, 0x1

    goto :goto_e1

    .line 2988
    :cond_fc
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ViewInfoStore;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 2989
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 2990
    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    .line 2992
    if-nez v4, :cond_112

    .line 2993
    or-int/lit16 v2, v2, 0x1000

    .line 2995
    :cond_112
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v2, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    .line 2997
    if-eqz v4, :cond_124

    .line 2998
    invoke-direct {p0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_f9

    .line 3000
    :cond_124
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v3, v2}, Landroid/support/v7/widget/ViewInfoStore;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_f9

    .line 3005
    :cond_12a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3009
    :goto_12d
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3010
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3011
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x2

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 3012
    return-void

    .line 3007
    :cond_13a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_12d
.end method

.method private dispatchLayoutStep2()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3019
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3020
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3022
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->e()V

    .line 3023
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3024
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$1702(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 3027
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 3028
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3030
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 3031
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3034
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    :goto_46
    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v2, v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 3035
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 3036
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3037
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3038
    return-void

    :cond_56
    move v0, v1

    .line 3034
    goto :goto_46
.end method

.method private dispatchLayoutStep3()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3045
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3046
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3047
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3048
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v11}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 3049
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 3053
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_24
    if-ltz v7, :cond_8c

    .line 3054
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3055
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3053
    :goto_36
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_24

    .line 3058
    :cond_3a
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    .line 3059
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 3061
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v8, v9}, Landroid/support/v7/widget/ViewInfoStore;->a(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3062
    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_86

    .line 3073
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ViewInfoStore;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    .line 3075
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ViewInfoStore;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    .line 3076
    if-eqz v5, :cond_6a

    if-ne v1, v2, :cond_6a

    .line 3078
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/ViewInfoStore;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_36

    .line 3080
    :cond_6a
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ViewInfoStore;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    .line 3083
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v2, v0}, Landroid/support/v7/widget/ViewInfoStore;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3084
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ViewInfoStore;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3085
    if-nez v3, :cond_81

    .line 3086
    invoke-direct {p0, v8, v9, v2, v1}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_36

    :cond_81
    move-object v0, p0

    .line 3088
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_36

    .line 3093
    :cond_86
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/ViewInfoStore;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_36

    .line 3098
    :cond_8c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewInfoStore;->a(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 3101
    :cond_93
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 3102
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2802(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 3103
    iput-boolean v10, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3104
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 3106
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v0, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 3107
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    # setter for: Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v0, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2602(Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)Z

    .line 3108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    # getter for: Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$2900(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 3109
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    # getter for: Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$2900(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3111
    :cond_c5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3112
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3113
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->a()V

    .line 3114
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v10

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v1, v11

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 3115
    invoke-virtual {p0, v10, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3117
    :cond_e1
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2241
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v3, :cond_f

    .line 2242
    if-nez v0, :cond_2c

    .line 2244
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2257
    :cond_f
    if-eqz v0, :cond_3e

    .line 2258
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 2259
    :goto_18
    if-ge v3, v4, :cond_3e

    .line 2260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2261
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2262
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move v0, v1

    .line 2267
    :goto_2b
    return v0

    .line 2246
    :cond_2c
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2247
    const/4 v2, 0x3

    if-eq v0, v2, :cond_36

    if-ne v0, v1, :cond_38

    .line 2249
    :cond_36
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_38
    move v0, v1

    .line 2251
    goto :goto_2b

    .line 2259
    :cond_3a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    :cond_3e
    move v0, v2

    .line 2267
    goto :goto_2b
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 2223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2224
    if-eq v3, v6, :cond_a

    if-nez v3, :cond_d

    .line 2225
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2228
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 2229
    :goto_14
    if-ge v2, v4, :cond_2e

    .line 2230
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2231
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2a

    if-eq v3, v6, :cond_2a

    .line 2232
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2233
    const/4 v0, 0x1

    .line 2236
    :goto_29
    return v0

    .line 2229
    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_2e
    move v0, v1

    .line 2236
    goto :goto_29
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3181
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v5

    .line 3182
    if-nez v5, :cond_f

    .line 3183
    aput v4, p1, v4

    .line 3184
    aput v4, p1, v7

    .line 3204
    :goto_e
    return-void

    .line 3187
    :cond_f
    const v2, 0x7fffffff

    .line 3188
    const/high16 v0, -0x80000000

    move v3, v4

    .line 3189
    :goto_15
    if-ge v3, v5, :cond_39

    .line 3190
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3191
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2d

    move v1, v2

    .line 3189
    :goto_28
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_15

    .line 3194
    :cond_2d
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    .line 3195
    if-ge v1, v2, :cond_34

    move v2, v1

    .line 3198
    :cond_34
    if-le v1, v0, :cond_3e

    move v0, v1

    move v1, v2

    .line 3199
    goto :goto_28

    .line 3202
    :cond_39
    aput v2, p1, v4

    .line 3203
    aput v0, p1, v7

    goto :goto_e

    :cond_3e
    move v1, v2

    goto :goto_28
.end method

.method private getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 4

    .prologue
    .line 9324
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_10

    .line 9327
    :cond_e
    const/4 v0, -0x1

    .line 9329
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->c(I)I

    move-result v0

    goto :goto_f
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2

    .prologue
    .line 3658
    if-nez p0, :cond_4

    .line 3659
    const/4 v0, 0x0

    .line 3661
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_3
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v2, 0x2e

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 599
    :cond_1e
    :goto_1e
    return-object p2

    .line 596
    :cond_1f
    const-string/jumbo v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1e
.end method

.method private getScrollFactor()F
    .registers 5

    .prologue
    .line 2590
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_30

    .line 2591
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2592
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2594
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 2600
    :cond_30
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    :goto_32
    return v0

    .line 2597
    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .registers 2

    .prologue
    .line 11084
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_b

    .line 11085
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 11087
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 12

    .prologue
    .line 3137
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    .line 3138
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_76

    .line 3139
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    .line 3140
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3141
    if-ne v2, p3, :cond_18

    .line 3138
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3144
    :cond_18
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3145
    cmp-long v3, v4, p1

    if-nez v3, :cond_15

    .line 3146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3147
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3151
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3159
    :cond_76
    const-string/jumbo v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be found but it is necessary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return-void
.end method

.method private hasUpdatedView()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1491
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v2

    move v1, v0

    .line 1492
    :goto_8
    if-ge v1, v2, :cond_26

    .line 1493
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1494
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1492
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1497
    :cond_1f
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1498
    const/4 v0, 0x1

    .line 1501
    :cond_26
    return v0
.end method

.method private initChildrenHelper()V
    .registers 3

    .prologue
    .line 603
    new-instance v0, Landroid/support/v7/widget/ChildHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 700
    return-void
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .registers 3

    .prologue
    .line 1383
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_5

    .line 1388
    :goto_4
    return-void

    .line 1386
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1387
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_4
.end method

.method private onEnterLayoutOrScroll()V
    .registers 2

    .prologue
    .line 2722
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2723
    return-void
.end method

.method private onExitLayoutOrScroll()V
    .registers 3

    .prologue
    .line 2726
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2727
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_11

    .line 2732
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2733
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 2735
    :cond_11
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 2540
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2541
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_2b

    .line 2543
    if-nez v0, :cond_2c

    const/4 v0, 0x1

    .line 2544
    :goto_11
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2545
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2546
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2548
    :cond_2b
    return-void

    .line 2543
    :cond_2c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private postAnimationRunner()V
    .registers 2

    .prologue
    .line 2824
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_10

    .line 2825
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2828
    :cond_10
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    .prologue
    .line 2831
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2841
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_13

    .line 2844
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->a()V

    .line 2845
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 2846
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 2851
    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2852
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->b()V

    .line 2856
    :goto_1e
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_6f

    :cond_26
    move v0, v2

    .line 2857
    :goto_27
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_71

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_71

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_3f

    if-nez v0, :cond_3f

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    # getter for: Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2600(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_71

    :cond_3f
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_71

    :cond_4b
    move v3, v2

    :goto_4c
    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2861
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_73

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_73

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_73

    :goto_65
    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2864
    return-void

    .line 2854
    :cond_69
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->e()V

    goto :goto_1e

    :cond_6f
    move v0, v1

    .line 2856
    goto :goto_27

    :cond_71
    move v3, v1

    .line 2857
    goto :goto_4c

    :cond_73
    move v2, v1

    .line 2861
    goto :goto_65
.end method

.method private pullGlows(FFFF)V
    .registers 12

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1923
    const/4 v1, 0x0

    .line 1924
    cmpg-float v2, p2, v5

    if-gez v2, :cond_50

    .line 1925
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1926
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v3, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_25

    move v1, v0

    .line 1936
    :cond_25
    :goto_25
    cmpg-float v2, p4, v5

    if-gez v2, :cond_6f

    .line 1937
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 1938
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v3, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1948
    :cond_42
    :goto_42
    if-nez v0, :cond_4c

    cmpl-float v0, p2, v5

    if-nez v0, :cond_4c

    cmpl-float v0, p4, v5

    if-eqz v0, :cond_4f

    .line 1949
    :cond_4c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1951
    :cond_4f
    return-void

    .line 1929
    :cond_50
    cmpl-float v2, p2, v5

    if-lez v2, :cond_25

    .line 1930
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 1931
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_25

    move v1, v0

    .line 1932
    goto :goto_25

    .line 1941
    :cond_6f
    cmpl-float v2, p4, v5

    if-lez v2, :cond_8e

    .line 1942
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 1943
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p4, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(FF)Z

    move-result v2

    if-nez v2, :cond_42

    :cond_8e
    move v0, v1

    goto :goto_42
.end method

.method private recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 6

    .prologue
    .line 3171
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3172
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2700(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_29

    .line 3174
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3175
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/ViewInfoStore;->a(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3177
    :cond_29
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ViewInfoStore;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3178
    return-void
.end method

.method private releaseGlows()V
    .registers 3

    .prologue
    .line 1954
    const/4 v0, 0x0

    .line 1955
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v0

    .line 1956
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1957
    :cond_16
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1958
    :cond_21
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1959
    :cond_2c
    if-eqz v0, :cond_31

    .line 1960
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1962
    :cond_31
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 1122
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1123
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->f(Landroid/view/View;)Z

    move-result v1

    .line 1124
    if-eqz v1, :cond_19

    .line 1125
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1126
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1127
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1133
    :cond_19
    if-nez v1, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1134
    return v1

    .line 1133
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private repositionShadowingViews()V
    .registers 8

    .prologue
    .line 4234
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    .line 4235
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_41

    .line 4236
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    .line 4237
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4238
    if-eqz v3, :cond_3e

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_3e

    .line 4239
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4240
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 4241
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4242
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_3e

    .line 4244
    :cond_31
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 4235
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4250
    :cond_41
    return-void
.end method

.method private resetTouch()V
    .registers 2

    .prologue
    .line 2527
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 2528
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2530
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2531
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 2532
    return-void
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .registers 7

    .prologue
    .line 892
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_10

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 894
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 896
    :cond_10
    if-eqz p2, :cond_14

    if-eqz p3, :cond_34

    .line 898
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1d

    .line 899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 905
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2f

    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 907
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 910
    :cond_2f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 912
    :cond_34
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->a()V

    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 914
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 915
    if-eqz p1, :cond_47

    .line 916
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 917
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 919
    :cond_47
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_52

    .line 920
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 922
    :cond_52
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 923
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 924
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 925
    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .registers 5

    .prologue
    .line 3558
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_5

    .line 3570
    :goto_4
    return-void

    .line 3561
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3562
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v1

    .line 3563
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_2b

    .line 3564
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3565
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_28

    .line 3566
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3563
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3569
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    goto :goto_4
.end method

.method private setScrollState(I)V
    .registers 3

    .prologue
    .line 1208
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    .line 1220
    :goto_4
    return-void

    .line 1215
    :cond_5
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1216
    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    .line 1217
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1219
    :cond_d
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_4
.end method

.method private stopScrollersInternal()V
    .registers 2

    .prologue
    .line 1894
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b()V

    .line 1895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    .line 1896
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1898
    :cond_e
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .registers 5

    .prologue
    .line 1984
    if-gez p1, :cond_1e

    .line 1985
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1986
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    .line 1992
    :cond_b
    :goto_b
    if-gez p2, :cond_29

    .line 1993
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 1994
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    .line 2000
    :cond_16
    :goto_16
    if-nez p1, :cond_1a

    if-eqz p2, :cond_1d

    .line 2001
    :cond_1a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 2003
    :cond_1d
    return-void

    .line 1987
    :cond_1e
    if-lez p1, :cond_b

    .line 1988
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 1989
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    goto :goto_b

    .line 1995
    :cond_29
    if-lez p2, :cond_16

    .line 1996
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 1997
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(I)Z

    goto :goto_16
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2116
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2117
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2119
    :cond_f
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .registers 3

    .prologue
    .line 1266
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 1267
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .registers 5

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    .line 1238
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1241
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1244
    :cond_18
    if-gez p2, :cond_26

    .line 1245
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    :goto_1f
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1250
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1251
    return-void

    .line 1247
    :cond_26
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1f
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3

    .prologue
    .line 980
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 983
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3

    .prologue
    .line 2207
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 3

    .prologue
    .line 1334
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1337
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2166
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2167
    if-nez p1, :cond_11

    .line 2168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2171
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2174
    :cond_17
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2184
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2185
    if-nez p1, :cond_11

    .line 2186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2189
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2191
    :cond_17
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 3379
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method clearOldPositions()V
    .registers 5

    .prologue
    .line 3433
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v1

    .line 3434
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1f

    .line 3435
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3436
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3437
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3434
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3440
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3441
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .registers 2

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1004
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1006
    :cond_9
    return-void
.end method

.method public clearOnScrollListeners()V
    .registers 2

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1356
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1358
    :cond_9
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1610
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1613
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1585
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1588
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1633
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1636
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1682
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1685
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1658
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1661
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1705
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1708
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method defaultOnMeasure(II)V
    .registers 6

    .prologue
    .line 2680
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->p(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 2683
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 2687
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2688
    return-void
.end method

.method dispatchLayout()V
    .registers 3

    .prologue
    .line 2892
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_e

    .line 2893
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :goto_d
    return-void

    .line 2897
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1c

    .line 2898
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2902
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2100(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 2904
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2905
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 2906
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2917
    :goto_36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    goto :goto_d

    .line 2907
    :cond_3a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->f()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_63

    .line 2911
    :cond_5a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 2912
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_36

    .line 2915
    :cond_63
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_36
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .prologue
    .line 9373
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .prologue
    .line 9378
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .prologue
    .line 9368
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .prologue
    .line 9362
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .registers 4

    .prologue
    .line 3976
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 3977
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 3982
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 3985
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_15

    .line 3986
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3988
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_33

    .line 3989
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_22
    if-ltz v1, :cond_33

    .line 3990
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3989
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_22

    .line 3993
    :cond_33
    return-void
.end method

.method dispatchOnScrolled(II)V
    .registers 5

    .prologue
    .line 3940
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 3941
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 3942
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3945
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 3949
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_17

    .line 3950
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3952
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_35

    .line 3953
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_24
    if-ltz v1, :cond_35

    .line 3954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3953
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_24

    .line 3957
    :cond_35
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1090
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1091
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1083
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3308
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 3311
    :goto_c
    if-ge v3, v4, :cond_1f

    .line 3312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3311
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    .line 3317
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_141

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v0

    if-nez v0, :cond_141

    .line 3318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3319
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_121

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 3320
    :goto_37
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3321
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_124

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_124

    move v0, v2

    .line 3323
    :goto_54
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3325
    :goto_57
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v3

    if-nez v3, :cond_89

    .line 3326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3327
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_78

    .line 3328
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3330
    :cond_78
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_127

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_127

    move v3, v2

    :goto_85
    or-int/2addr v0, v3

    .line 3331
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3333
    :cond_89
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_c2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v3

    if-nez v3, :cond_c2

    .line 3334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3335
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3336
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_12a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3337
    :goto_a5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3338
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3339
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_12d

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_12d

    move v3, v2

    :goto_be
    or-int/2addr v0, v3

    .line 3340
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3342
    :cond_c2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_105

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v3

    if-nez v3, :cond_105

    .line 3343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3344
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3345
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_12f

    .line 3346
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3350
    :goto_f4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_101

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_101

    move v1, v2

    :cond_101
    or-int/2addr v0, v1

    .line 3351
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3357
    :cond_105
    if-nez v0, :cond_13f

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_13f

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13f

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 3362
    :goto_11b
    if-eqz v2, :cond_120

    .line 3363
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 3365
    :cond_120
    return-void

    :cond_121
    move v0, v1

    .line 3319
    goto/16 :goto_37

    :cond_124
    move v0, v1

    .line 3322
    goto/16 :goto_54

    :cond_127
    move v3, v1

    .line 3330
    goto/16 :goto_85

    :cond_12a
    move v3, v1

    .line 3336
    goto/16 :goto_a5

    :cond_12d
    move v3, v1

    .line 3339
    goto :goto_be

    .line 3348
    :cond_12f
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_f4

    :cond_13f
    move v2, v0

    goto :goto_11b

    :cond_141
    move v0, v1

    goto/16 :goto_57
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 3838
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .registers 3

    .prologue
    .line 1713
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1714
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_12

    .line 1715
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1717
    :cond_12
    return-void
.end method

.method ensureBottomGlow()V
    .registers 5

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2056
    :goto_4
    return-void

    .line 2049
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2050
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2051
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4

    .line 2054
    :cond_36
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4
.end method

.method ensureLeftGlow()V
    .registers 5

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2016
    :goto_4
    return-void

    .line 2009
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2010
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2011
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4

    .line 2014
    :cond_36
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4
.end method

.method ensureRightGlow()V
    .registers 5

    .prologue
    .line 2019
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2029
    :goto_4
    return-void

    .line 2022
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2023
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2024
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4

    .line 2027
    :cond_36
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4
.end method

.method ensureTopGlow()V
    .registers 5

    .prologue
    .line 2032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2043
    :goto_4
    return-void

    .line 2035
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2036
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2037
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4

    .line 2040
    :cond_36
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    goto :goto_4
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .registers 8

    .prologue
    .line 3821
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v0

    .line 3822
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_46

    .line 3823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v0

    .line 3824
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->n(Landroid/view/View;)F

    move-result v2

    .line 3825
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)F

    move-result v3

    .line 3826
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_42

    .line 3833
    :goto_41
    return-object v0

    .line 3822
    :cond_42
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 3833
    :cond_46
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 6

    .prologue
    .line 3634
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, p1

    .line 3635
    :goto_5
    if-eqz v0, :cond_17

    if-eq v0, p0, :cond_17

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_17

    .line 3636
    check-cast v0, Landroid/view/View;

    .line 3637
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_5

    .line 3639
    :cond_17
    if-ne v0, p0, :cond_1b

    move-object v0, v1

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .prologue
    .line 3652
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3653
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_7
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 3756
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_6

    .line 3766
    :cond_5
    :goto_5
    return-object v0

    .line 3759
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v3

    .line 3760
    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_5

    .line 3761
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3762
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2a

    move-object v0, v1

    .line 3763
    goto :goto_5

    .line 3760
    :cond_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 10

    .prologue
    .line 3801
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 3802
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_23

    .line 3803
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3804
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1f

    .line 3810
    :goto_1e
    return-object v0

    .line 3802
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 3810
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .prologue
    .line 3738
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 3770
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 3771
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_2d

    .line 3772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3773
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_29

    .line 3774
    if-eqz p2, :cond_23

    .line 3775
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_29

    .line 3786
    :cond_22
    :goto_22
    return-object v0

    .line 3778
    :cond_23
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-eq v3, p1, :cond_22

    .line 3771
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 3786
    :cond_2d
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public fling(II)Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1844
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_10

    .line 1845
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_f
    :goto_f
    return v1

    .line 1849
    :cond_10
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_f

    .line 1853
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1854
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 1856
    if-eqz v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v4, v5, :cond_2b

    :cond_2a
    move p1, v1

    .line 1859
    :cond_2b
    if-eqz v3, :cond_35

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v4, v5, :cond_36

    :cond_35
    move p2, v1

    .line 1862
    :cond_36
    if-nez p1, :cond_3a

    if-eqz p2, :cond_f

    .line 1867
    :cond_3a
    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1868
    if-nez v0, :cond_46

    if-eqz v3, :cond_6f

    :cond_46
    move v0, v2

    .line 1869
    :goto_47
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1871
    if-eqz v0, :cond_f

    .line 1872
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1873
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1874
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(II)V

    move v1, v2

    .line 1875
    goto :goto_f

    :cond_6f
    move v0, v1

    .line 1868
    goto :goto_47
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 6

    .prologue
    .line 2066
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2067
    if-eqz v0, :cond_9

    .line 2078
    :cond_8
    :goto_8
    return-object v0

    .line 2070
    :cond_9
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 2071
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2072
    if-nez v0, :cond_36

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_36

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_36

    .line 2074
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2075
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2076
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2078
    :cond_36
    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 3384
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_d

    .line 3385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3387
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 3392
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_d

    .line 3393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3395
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 3400
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_d

    .line 3401
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3403
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 962
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .line 964
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_a
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .registers 4

    .prologue
    .line 3237
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_c
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 3680
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3681
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    .prologue
    .line 11054
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_9

    .line 11055
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 11057
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_8
.end method

.method public getChildItemId(Landroid/view/View;)J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 3706
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-nez v2, :cond_f

    .line 3710
    :cond_e
    :goto_e
    return-wide v0

    .line 3709
    :cond_f
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3710
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_e
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 3695
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3696
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3670
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5

    .prologue
    .line 3611
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3612
    if-eqz v0, :cond_2d

    if-eq v0, p0, :cond_2d

    .line 3613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3616
    :cond_2d
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .registers 2

    .prologue
    .line 2816
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 3893
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 3894
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_e

    .line 3895
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3910
    :goto_d
    return-object v0

    .line 3898
    :cond_e
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3899
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3900
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 3901
    :goto_1a
    if-ge v3, v5, :cond_58

    .line 3902
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3903
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3904
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 3905
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 3906
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 3907
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 3901
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1a

    .line 3909
    :cond_58
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    move-object v0, v2

    .line 3910
    goto :goto_d
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .registers 2

    .prologue
    .line 1916
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .registers 2

    .prologue
    .line 1906
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .registers 2

    .prologue
    .line 1204
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .registers 2

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 9356
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->b()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    .prologue
    .line 4009
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method initAdapterManager()V
    .registers 3

    .prologue
    .line 703
    new-instance v0, Landroid/support/v7/widget/AdapterHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 781
    return-void
.end method

.method invalidateGlows()V
    .registers 2

    .prologue
    .line 2059
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2060
    return-void
.end method

.method public invalidateItemDecorations()V
    .registers 3

    .prologue
    .line 3593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 3602
    :goto_8
    return-void

    .line 3596
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_15

    .line 3597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3600
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3601
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_8
.end method

.method isAccessibilityEnabled()Z
    .registers 2

    .prologue
    .line 2738
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 3415
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .prologue
    .line 2155
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .registers 2

    .prologue
    .line 2772
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLayoutFrozen()Z
    .registers 2

    .prologue
    .line 1801
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 9341
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->a()Z

    move-result v0

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .registers 5

    .prologue
    .line 3298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 3299
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1d

    .line 3300
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3301
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3299
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 3303
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3304
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .prologue
    .line 3577
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v1

    .line 3578
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_22

    .line 3579
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3580
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3581
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3578
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3584
    :cond_22
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 3586
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5

    .prologue
    .line 3886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    .line 3887
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    .line 3888
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3887
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3890
    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5

    .prologue
    .line 3848
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    .line 3849
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    .line 3850
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3849
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3852
    :cond_15
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 3478
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    move v0, v1

    .line 3479
    :goto_8
    if-ge v0, v2, :cond_2c

    .line 3480
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3481
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_29

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_29

    .line 3486
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3487
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 3479
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3490
    :cond_2c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3491
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3492
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3444
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v6

    .line 3446
    if-ge p1, p2, :cond_27

    .line 3449
    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    :goto_d
    move v4, v5

    .line 3456
    :goto_e
    if-ge v4, v6, :cond_3e

    .line 3457
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 3458
    if-eqz v7, :cond_24

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v3, :cond_24

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v8, v2, :cond_2b

    .line 3456
    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_27
    move v0, v1

    move v2, p1

    move v3, p2

    .line 3453
    goto :goto_d

    .line 3465
    :cond_2b
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v8, p1, :cond_3a

    .line 3466
    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3471
    :goto_34
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v7, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_24

    .line 3468
    :cond_3a
    invoke-virtual {v7, v0, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_34

    .line 3473
    :cond_3e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3474
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3475
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 3496
    add-int v1, p1, p2

    .line 3497
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 3498
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_3e

    .line 3499
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3500
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 3501
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v1, :cond_2e

    .line 3507
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3508
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v3, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 3498
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3509
    :cond_2e
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_2b

    .line 3514
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3516
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v3, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_2b

    .line 3520
    :cond_3e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3521
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3522
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2123
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2124
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2126
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_14

    .line 2128
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 2130
    :cond_14
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2131
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 3865
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 3877
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2135
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    .line 2137
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2139
    :cond_d
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2141
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2142
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2143
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1f

    .line 2144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2146
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2147
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->b()V

    .line 2148
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 3369
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3371
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3372
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_1e

    .line 3373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 3375
    :cond_1e
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2552
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_7

    .line 2583
    :cond_6
    :goto_6
    return v4

    .line 2555
    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_6

    .line 2558
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 2559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    .line 2561
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2564
    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    neg-float v0, v0

    .line 2569
    :goto_2a
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2570
    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2576
    :goto_38
    cmpl-float v3, v0, v1

    if-nez v3, :cond_40

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_6

    .line 2577
    :cond_40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2578
    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_6

    :cond_4c
    move v0, v1

    .line 2567
    goto :goto_2a

    :cond_4e
    move v2, v1

    .line 2573
    goto :goto_38
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v1, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2272
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_a

    .line 2371
    :cond_9
    :goto_9
    return v3

    .line 2277
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2278
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    move v3, v2

    .line 2279
    goto :goto_9

    .line 2282
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 2286
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2287
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 2289
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2f

    .line 2290
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2292
    :cond_2f
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2294
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v5

    .line 2295
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v6

    .line 2297
    packed-switch v5, :pswitch_data_138

    .line 2371
    :cond_3f
    :goto_3f
    :pswitch_3f
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v0, v2, :cond_12f

    :goto_43
    move v3, v2

    goto :goto_9

    .line 2299
    :pswitch_45
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v1, :cond_4b

    .line 2300
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2302
    :cond_4b
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2306
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_74

    .line 2307
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2308
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2312
    :cond_74
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v3, v5, v2

    aput v3, v1, v3

    .line 2315
    if-eqz v0, :cond_134

    move v0, v2

    .line 2318
    :goto_7f
    if-eqz v4, :cond_83

    .line 2319
    or-int/lit8 v0, v0, 0x2

    .line 2321
    :cond_83
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_3f

    .line 2325
    :pswitch_87
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2326
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2327
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_3f

    .line 2331
    :pswitch_a2
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 2332
    if-gez v5, :cond_cf

    .line 2333
    const-string/jumbo v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2338
    :cond_cf
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 2339
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 2340
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v7, v2, :cond_3f

    .line 2341
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int/2addr v6, v7

    .line 2342
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int/2addr v5, v7

    .line 2344
    if-eqz v0, :cond_132

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v7, :cond_132

    .line 2345
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_117

    move v0, v1

    :goto_f6
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move v0, v2

    .line 2348
    :goto_fb
    if-eqz v4, :cond_110

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v4, v6, :cond_110

    .line 2349
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_119

    :goto_10b
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move v0, v2

    .line 2352
    :cond_110
    if-eqz v0, :cond_3f

    .line 2353
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_3f

    :cond_117
    move v0, v2

    .line 2345
    goto :goto_f6

    :cond_119
    move v1, v2

    .line 2349
    goto :goto_10b

    .line 2359
    :pswitch_11b
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3f

    .line 2363
    :pswitch_120
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2364
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_3f

    .line 2368
    :pswitch_12a
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_3f

    :cond_12f
    move v2, v3

    .line 2371
    goto/16 :goto_43

    :cond_132
    move v0, v3

    goto :goto_fb

    :cond_134
    move v0, v3

    goto/16 :goto_7f

    .line 2297
    nop

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_45
        :pswitch_120
        :pswitch_a2
        :pswitch_12a
        :pswitch_3f
        :pswitch_87
        :pswitch_11b
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .prologue
    .line 3282
    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3284
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    .line 3285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3286
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2605
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_c

    .line 2606
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 2672
    :cond_b
    :goto_b
    return-void

    .line 2609
    :cond_c
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    # getter for: Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2000(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2610
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2611
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2612
    if-ne v2, v5, :cond_21

    if-ne v3, v5, :cond_21

    move v0, v1

    .line 2614
    :cond_21
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 2615
    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b

    .line 2618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2100(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    if-ne v0, v1, :cond_3b

    .line 2619
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2623
    :cond_3b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2624
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2625
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2628
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2632
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2636
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2637
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2639
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_b

    .line 2642
    :cond_78
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v2, :cond_86

    .line 2643
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    goto :goto_b

    .line 2647
    :cond_86
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v2, :cond_a2

    .line 2648
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2649
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2651
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # getter for: Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 2652
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2658
    :goto_9d
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 2659
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2662
    :cond_a2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_d1

    .line 2663
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2667
    :goto_b0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2668
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 2669
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2670
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto/16 :goto_b

    .line 2655
    :cond_c6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->e()V

    .line 2656
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    # setter for: Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$State;->access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_9d

    .line 2665
    :cond_d1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_b0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .prologue
    .line 1065
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_8

    .line 1066
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1075
    :cond_7
    :goto_7
    return-void

    .line 1070
    :cond_8
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1072
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_7

    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1051
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1052
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_13

    .line 1053
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    # invokes: Landroid/support/v7/widget/RecyclerView$SavedState;->copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->access$1900(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1060
    :goto_12
    return-object v0

    .line 1054
    :cond_13
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_20

    .line 1055
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_12

    .line 1057
    :cond_20
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_12
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 3971
    return-void
.end method

.method public onScrolled(II)V
    .registers 3

    .prologue
    .line 3935
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .prologue
    .line 2692
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2693
    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    .line 2694
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 2697
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2386
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_e

    .line 2523
    :cond_d
    :goto_d
    return v2

    .line 2389
    :cond_e
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2390
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    move v2, v3

    .line 2391
    goto :goto_d

    .line 2394
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    .line 2398
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 2399
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 2401
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_33

    .line 2402
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2406
    :cond_33
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 2407
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2408
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2410
    if-nez v0, :cond_49

    .line 2411
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v2, v9, v3

    aput v2, v8, v2

    .line 2413
    :cond_49
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v8, v2

    int-to-float v8, v8

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2415
    packed-switch v0, :pswitch_data_1cc

    .line 2518
    :cond_59
    :goto_59
    :pswitch_59
    if-nez v2, :cond_60

    .line 2519
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2521
    :cond_60
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    move v2, v3

    .line 2523
    goto :goto_d

    .line 2417
    :pswitch_65
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2422
    if-eqz v5, :cond_1c8

    move v0, v3

    .line 2425
    :goto_82
    if-eqz v6, :cond_86

    .line 2426
    or-int/lit8 v0, v0, 0x2

    .line 2428
    :cond_86
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_59

    .line 2432
    :pswitch_8a
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2433
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2434
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_59

    .line 2438
    :pswitch_a5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2439
    if-gez v0, :cond_d2

    .line 2440
    const-string/jumbo v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2445
    :cond_d2
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v8, v1

    .line 2446
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v9, v0

    .line 2447
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int v1, v0, v8

    .line 2448
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v0, v9

    .line 2450
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual {p0, v1, v0, v4, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 2451
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v4, v4, v2

    sub-int/2addr v1, v4

    .line 2452
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v4, v4, v3

    sub-int/2addr v0, v4

    .line 2453
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v2

    int-to-float v4, v4

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v10, v10, v3

    int-to-float v10, v10

    invoke-virtual {v7, v4, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2455
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v10, v4, v2

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v11, v11, v2

    add-int/2addr v10, v11

    aput v10, v4, v2

    .line 2456
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v10, v4, v3

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    aput v10, v4, v3

    .line 2459
    :cond_11c
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v4, v3, :cond_145

    .line 2461
    if-eqz v5, :cond_1c5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v4, v10, :cond_1c5

    .line 2462
    if-lez v1, :cond_16c

    .line 2463
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v1, v4

    :goto_12f
    move v4, v3

    .line 2469
    :goto_130
    if-eqz v6, :cond_140

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v10, v11, :cond_140

    .line 2470
    if-lez v0, :cond_170

    .line 2471
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v0, v4

    :goto_13f
    move v4, v3

    .line 2477
    :cond_140
    if-eqz v4, :cond_145

    .line 2478
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2482
    :cond_145
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v4, v3, :cond_59

    .line 2483
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v2

    sub-int v4, v8, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2484
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v3

    sub-int v4, v9, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2486
    if-eqz v5, :cond_174

    :goto_15b
    if-eqz v6, :cond_176

    :goto_15d
    invoke-virtual {p0, v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2490
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_59

    .line 2465
    :cond_16c
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v1, v4

    goto :goto_12f

    .line 2473
    :cond_170
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v4

    goto :goto_13f

    :cond_174
    move v1, v2

    .line 2486
    goto :goto_15b

    :cond_176
    move v0, v2

    goto :goto_15d

    .line 2496
    :pswitch_178
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_59

    .line 2500
    :pswitch_17d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2502
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v8, v8

    invoke-virtual {v0, v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2503
    if-eqz v5, :cond_1bc

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {v0, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v4, v0

    .line 2505
    :goto_198
    if-eqz v6, :cond_1be

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {v0, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    .line 2507
    :goto_1a3
    cmpl-float v5, v4, v1

    if-nez v5, :cond_1ab

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1b3

    :cond_1ab
    float-to-int v1, v4

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 2508
    :cond_1b3
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2510
    :cond_1b6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    move v2, v3

    .line 2511
    goto/16 :goto_59

    :cond_1bc
    move v4, v1

    .line 2503
    goto :goto_198

    :cond_1be
    move v0, v1

    .line 2505
    goto :goto_1a3

    .line 2514
    :pswitch_1c0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_59

    :cond_1c5
    move v4, v2

    goto/16 :goto_130

    :cond_1c8
    move v0, v2

    goto/16 :goto_82

    .line 2415
    nop

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_65
        :pswitch_17d
        :pswitch_a5
        :pswitch_1c0
        :pswitch_59
        :pswitch_8a
        :pswitch_178
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 7

    .prologue
    .line 3219
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3220
    if-eqz v0, :cond_f

    .line 3221
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3222
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3228
    :cond_f
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3229
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3230
    return-void

    .line 3223
    :cond_16
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .registers 4

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    .line 1280
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1283
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1284
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1285
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1287
    :cond_24
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1288
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1289
    return-void

    .line 1285
    :cond_2b
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3

    .prologue
    .line 992
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 996
    :goto_4
    return-void

    .line 995
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3

    .prologue
    .line 2216
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2217
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    .line 2218
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2220
    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 3

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1347
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1349
    :cond_9
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_62

    if-eqz p2, :cond_62

    .line 2084
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2089
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2090
    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_4e

    .line 2092
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2093
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v2, :cond_4e

    .line 2094
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2095
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2096
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2097
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2098
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 2102
    :cond_4e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2104
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_66

    const/4 v0, 0x1

    :goto_5f
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2106
    :cond_62
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2107
    return-void

    :cond_66
    move v0, v1

    .line 2104
    goto :goto_5f
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 5

    .prologue
    .line 2376
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2377
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 2378
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2379
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2377
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 2381
    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2382
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 3290
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_c

    .line 3291
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3295
    :goto_b
    return-void

    .line 3293
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_b
.end method

.method resumeRequestLayout(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1720
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_8

    .line 1725
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1727
    :cond_8
    if-nez p1, :cond_c

    .line 1736
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1738
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_2b

    .line 1740
    if-eqz p1, :cond_25

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_25

    .line 1742
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1744
    :cond_25
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2b

    .line 1745
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1748
    :cond_2b
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1749
    return-void
.end method

.method saveOldPositions()V
    .registers 5

    .prologue
    .line 3419
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v1

    .line 3420
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1f

    .line 3421
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3426
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3427
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3420
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3430
    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1425
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_f

    .line 1426
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_e
    :goto_e
    return-void

    .line 1430
    :cond_f
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_e

    .line 1433
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 1434
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1435
    if-nez v1, :cond_23

    if-eqz v2, :cond_e

    .line 1436
    :cond_23
    if-eqz v1, :cond_2c

    :goto_25
    if-eqz v2, :cond_2e

    :goto_27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_e

    :cond_2c
    move p1, v0

    goto :goto_25

    :cond_2e
    move p2, v0

    goto :goto_27
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1516
    .line 1519
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1520
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_c3

    .line 1521
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1522
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1523
    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->a(Ljava/lang/String;)V

    .line 1524
    if-eqz p1, :cond_bf

    .line 1525
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 1526
    sub-int v3, p1, v2

    .line 1528
    :goto_23
    if-eqz p2, :cond_bb

    .line 1529
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 1530
    sub-int v1, p2, v0

    .line 1532
    :goto_31
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->a()V

    .line 1533
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1534
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1535
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    move v4, v1

    move v1, v2

    move v2, v0

    .line 1537
    :goto_40
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1538
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1541
    :cond_4b
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1543
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1544
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v7

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1545
    if-eqz p3, :cond_75

    .line 1546
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v7

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1548
    :cond_75
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 1549
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    .line 1556
    :cond_8b
    :goto_8b
    if-nez v1, :cond_8f

    if-eqz v2, :cond_92

    .line 1557
    :cond_8f
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1559
    :cond_92
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1560
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1562
    :cond_9b
    if-nez v1, :cond_9f

    if-eqz v2, :cond_a0

    :cond_9f
    move v6, v7

    :cond_a0
    return v6

    .line 1550
    :cond_a1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8b

    .line 1551
    if-eqz p3, :cond_b7

    .line 1552
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v3, v5, v4}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1554
    :cond_b7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_8b

    :cond_bb
    move v0, v6

    move v1, v6

    goto/16 :goto_31

    :cond_bf
    move v2, v6

    move v3, v6

    goto/16 :goto_23

    :cond_c3
    move v2, v6

    move v1, v6

    move v4, v6

    move v3, v6

    goto/16 :goto_40
.end method

.method public scrollTo(II)V
    .registers 5

    .prologue
    .line 1419
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 4

    .prologue
    .line 1369
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    .line 1380
    :goto_4
    return-void

    .line 1372
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    .line 1374
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1378
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1379
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_4
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .prologue
    .line 2800
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2804
    :goto_6
    return-void

    .line 2803
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_6
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 3

    .prologue
    .line 532
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 533
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 534
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 876
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 877
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 878
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 879
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .registers 3

    .prologue
    .line 1304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_5

    .line 1309
    :goto_4
    return-void

    .line 1307
    :cond_5
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setClipToPadding(Z)V
    .registers 3

    .prologue
    .line 808
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_7

    .line 809
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 811
    :cond_7
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 812
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 813
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    .line 814
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 816
    :cond_13
    return-void
.end method

.method public setHasFixedSize(Z)V
    .registers 2

    .prologue
    .line 795
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 796
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .registers 4

    .prologue
    .line 2711
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_f

    .line 2712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2713
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2715
    :cond_f
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 2716
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1c

    .line 2717
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2719
    :cond_1c
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .registers 3

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1195
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1774
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_22

    .line 1775
    const-string/jumbo v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1776
    if-nez p1, :cond_23

    .line 1777
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1778
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_20

    .line 1779
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1781
    :cond_20
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1792
    :cond_22
    :goto_22
    return-void

    .line 1783
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1784
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1786
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1787
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1788
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1789
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    goto :goto_22
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 5

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_5

    .line 1047
    :goto_4
    return-void

    .line 1024
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1027
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1d

    .line 1028
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_17

    .line 1029
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1031
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1033
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->a()V

    .line 1035
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 1036
    if-eqz p1, :cond_64

    .line 1037
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_56

    .line 1038
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_56
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1042
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_64

    .line 1043
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1046
    :cond_64
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_4
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .prologue
    .line 9336
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(Z)V

    .line 9337
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1321
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 1322
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .registers 3

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 1169
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .registers 2

    .prologue
    .line 948
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 949
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .registers 6

    .prologue
    .line 828
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 829
    packed-switch p1, :pswitch_data_3a

    .line 831
    const-string/jumbo v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :pswitch_2c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 842
    :goto_32
    return-void

    .line 839
    :pswitch_33
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_32

    .line 829
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_33
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .registers 3

    .prologue
    .line 1179
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    .line 1180
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2784
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2786
    if-eqz p1, :cond_18

    .line 2787
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->b(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    .line 2789
    :goto_d
    if-nez v1, :cond_16

    .line 2792
    :goto_f
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2793
    const/4 v0, 0x1

    .line 2795
    :cond_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_f

    :cond_18
    move v1, v0

    goto :goto_d
.end method

.method public smoothScrollBy(II)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1811
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_f

    .line 1812
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_e
    :goto_e
    return-void

    .line 1816
    :cond_f
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_e

    .line 1819
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1c

    move p1, v0

    .line 1822
    :cond_1c
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1825
    :goto_24
    if-nez p1, :cond_28

    if-eqz v0, :cond_e

    .line 1826
    :cond_28
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b(II)V

    goto :goto_e

    :cond_2e
    move v0, p2

    goto :goto_24
.end method

.method public smoothScrollToPosition(I)V
    .registers 4

    .prologue
    .line 1406
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    .line 1415
    :goto_4
    return-void

    .line 1409
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_13

    .line 1410
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1414
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    goto :goto_4
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .prologue
    .line 9346
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 9351
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->c()V

    .line 9352
    return-void
.end method

.method public stopScroll()V
    .registers 2

    .prologue
    .line 1886
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1887
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1888
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .registers 4

    .prologue
    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 861
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 862
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 863
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 864
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .registers 10

    .prologue
    .line 3531
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 3532
    add-int v3, p1, p2

    .line 3534
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_3b

    .line 3535
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3536
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3537
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3534
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 3540
    :cond_22
    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1e

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v3, :cond_1e

    .line 3543
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3544
    invoke-virtual {v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 3546
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1e

    .line 3549
    :cond_3b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3550
    return-void
.end method
