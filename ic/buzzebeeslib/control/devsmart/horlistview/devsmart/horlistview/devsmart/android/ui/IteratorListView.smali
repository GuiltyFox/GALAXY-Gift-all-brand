.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;
.super Landroid/view/ViewGroup;
.source "IteratorListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomItem:I

.field private mIsFingerDown:Z

.field private mIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<*>;"
        }
    .end annotation
.end field

.field private mLastY:I

.field private mOnGesture:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollGestureDetector:Landroid/view/GestureDetector;

.field private mScroller:Landroid/widget/Scroller;

.field private mTopItem:I

.field private mYOffset:I

.field private mdY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 33
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    .line 34
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mLastY:I

    .line 35
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    .line 37
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    .line 38
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    .line 70
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$1;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mOnGesture:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 44
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 33
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    .line 34
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mLastY:I

    .line 35
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    .line 37
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    .line 38
    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    .line 70
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$1;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mOnGesture:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 49
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->init()V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;Z)V
    .registers 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIsFingerDown:Z

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)Landroid/widget/Scroller;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mLastY:I

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    return v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;I)V
    .registers 2

    .prologue
    .line 33
    iput p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mAdapter:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 263
    .local v0, "layoutparams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_d

    .line 264
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "layoutparams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 266
    .restart local v0    # "layoutparams":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 267
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 268
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 267
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 269
    return-void
.end method

.method private fillDown()V
    .registers 5

    .prologue
    .line 288
    iget-object v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mAdapter:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;

    if-nez v3, :cond_5

    .line 313
    :cond_4
    return-void

    .line 292
    :cond_5
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getHeight()I

    move-result v2

    .line 294
    .local v2, "windowHeight":I
    const/4 v0, 0x0

    .line 295
    .local v0, "bottomOfLastChild":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1e

    .line 296
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 299
    :cond_1e
    :goto_1e
    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    add-int/2addr v3, v0

    if-ge v3, v2, :cond_4

    .line 301
    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    invoke-direct {p0, v3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->seekTo(I)V

    .line 302
    iget-object v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    iget-object v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, "child":Landroid/view/View;
    const/4 v3, -0x1

    invoke-direct {p0, v1, v3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 306
    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    goto :goto_1e
.end method

.method private fillUp()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mAdapter:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;

    if-nez v2, :cond_6

    .line 341
    :cond_5
    return-void

    .line 321
    :cond_6
    const/4 v1, 0x0

    .line 322
    .local v1, "topOfFirstChild":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_15

    .line 323
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 326
    :cond_15
    :goto_15
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    add-int/2addr v2, v1

    if-lez v2, :cond_5

    .line 328
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    invoke-direct {p0, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->seekTo(I)V

    .line 329
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 330
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 332
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 333
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    .line 334
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    goto :goto_15
.end method

.method private getView(Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 272
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mAdapter:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;

    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, p1, v1, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;->getView(Ljava/lang/Object;Landroid/view/View;Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "child":Landroid/view/View;
    return-object v0
.end method

.method private init()V
    .registers 4

    .prologue
    .line 53
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mOnGesture:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 55
    return-void
.end method

.method private positionItems()V
    .registers 8

    .prologue
    .line 344
    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    .line 345
    .local v3, "top":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_a

    .line 351
    return-void

    .line 346
    :cond_a
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 348
    .local v1, "childHeight":I
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v3, v1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 349
    add-int/2addr v3, v1

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeNonVisibleItems()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getHeight()I

    move-result v1

    .line 239
    .local v1, "height":I
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "child":Landroid/view/View;
    :goto_a
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_2b

    .line 251
    :cond_15
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 252
    :goto_1f
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    add-int/2addr v2, v3

    if-gt v2, v1, :cond_47

    .line 259
    :cond_2a
    return-void

    .line 243
    :cond_2b
    invoke-virtual {p0, v4, v5}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->removeViewsInLayout(II)V

    .line 244
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 245
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    .line 246
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 247
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    goto :goto_a

    .line 253
    :cond_47
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v5}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->removeViewsInLayout(II)V

    .line 254
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    goto :goto_1f
.end method

.method private seekTo(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 277
    :goto_0
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    if-gt v0, p1, :cond_10

    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 281
    :cond_10
    :goto_10
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    if-lt v0, p1, :cond_20

    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_27

    .line 284
    :cond_20
    return-void

    .line 278
    :cond_21
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_27
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_10
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 193
    const-class v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t:%d b:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mAdapter:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;

    if-nez v1, :cond_29

    .line 233
    :cond_28
    :goto_28
    return-void

    .line 199
    :cond_29
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 200
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 201
    .local v0, "y":I
    iget v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mLastY:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    .line 202
    iput v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mLastY:I

    .line 205
    .end local v0    # "y":I
    :cond_42
    iget v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    add-int/2addr v1, v2

    iput v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    .line 207
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->fillDown()V

    .line 208
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->fillUp()V

    .line 209
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->removeNonVisibleItems()V

    .line 211
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->positionItems()V

    .line 213
    iput v6, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    .line 215
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_68

    .line 216
    new-instance v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$2;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$2;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)V

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 223
    :cond_68
    iget v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    if-lez v1, :cond_28

    iget-boolean v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIsFingerDown:Z

    if-nez v1, :cond_28

    .line 224
    iput v6, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mLastY:I

    .line 225
    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    neg-int v3, v3

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 226
    new-instance v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$3;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$3;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;)V

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_b

    .line 188
    return-void

    .line 178
    :cond_b
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 180
    .local v3, "oldHeight":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 181
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 180
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v1, v4, v3

    .line 184
    .local v1, "childDiff":I
    if-lez v1, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_42

    .line 185
    iget v4, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    sub-int/2addr v4, v1

    iput v4, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    .line 177
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 156
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScrollGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 158
    .local v0, "retval":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_37

    .line 159
    iput-boolean v5, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIsFingerDown:Z

    .line 160
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_37

    .line 161
    invoke-virtual {p0, v5}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 162
    .local v1, "topOfFirstChild":I
    iget v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    add-int/2addr v2, v1

    if-lez v2, :cond_37

    .line 163
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 164
    iput v5, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mLastY:I

    .line 165
    iget-object v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mdY:I

    iget v4, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mYOffset:I

    neg-int v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 166
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->requestLayout()V

    .line 171
    .end local v1    # "topOfFirstChild":I
    :cond_37
    return v0
.end method

.method public setIteratorAdapter(Ljava/util/ListIterator;Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<TT;>;",
            "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .local p2, "adapter":Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;, "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter<TT;>;"
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    .line 59
    iput-object p2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mAdapter:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView$ViewAdapter;

    .line 62
    :goto_4
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_16

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mTopItem:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mBottomItem:I

    .line 67
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->removeAllViews()V

    .line 68
    return-void

    .line 63
    :cond_16
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/IteratorListView;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_4
.end method
