.class Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V
    .registers 2

    .prologue
    .line 316
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 8

    .prologue
    .line 375
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 376
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 377
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 378
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 379
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 380
    const/4 v4, 0x1

    aget v1, v1, v4

    .line 381
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 382
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 326
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 9

    .prologue
    .line 361
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v1

    .line 362
    const/4 v0, 0x0

    move v4, v0

    :goto_8
    if-ge v4, v1, :cond_43

    .line 363
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, v4}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 364
    invoke-direct {p0, p1, v2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 365
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 366
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v3}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iget-object v5, v5, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v6, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v6}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 372
    :cond_43
    return-void

    .line 362
    :cond_44
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .prologue
    .line 333
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    monitor-enter v1

    .line 334
    :try_start_3
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iget v2, v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    .line 335
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 336
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 338
    const/4 v0, 0x1

    return v0

    .line 335
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 343
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_70

    .line 344
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 345
    invoke-direct {p0, p1, v2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 346
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 347
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v3}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v5}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 349
    :cond_43
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 350
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v3}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;->a:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-static {v5}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 356
    :cond_70
    const/4 v0, 0x1

    return v0

    .line 343
    :cond_72
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2
.end method
