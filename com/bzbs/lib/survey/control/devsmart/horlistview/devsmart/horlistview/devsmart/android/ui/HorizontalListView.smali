.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field protected b:Landroid/widget/ListAdapter;

.field protected c:I

.field protected d:I

.field protected e:Landroid/widget/Scroller;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/GestureDetector;

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private o:Z

.field private p:Landroid/database/DataSetObserver;

.field private q:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    .line 50
    iput v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    .line 53
    const v0, 0x7fffffff

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    .line 54
    iput v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->k:Ljava/util/Queue;

    .line 61
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->o:Z

    .line 95
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$1;-><init>(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->p:Landroid/database/DataSetObserver;

    .line 316
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$3;-><init>(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->q:Landroid/view/GestureDetector$OnGestureListener;

    .line 66
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b()V

    .line 67
    return-void
.end method

.method private a(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_22

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 215
    :goto_11
    invoke-direct {p0, v0, p1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a(II)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1e

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 222
    :cond_1e
    invoke-direct {p0, v1, p1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b(II)V

    .line 225
    return-void

    :cond_22
    move v0, v1

    goto :goto_11
.end method

.method private a(II)V
    .registers 6

    .prologue
    .line 228
    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_4f

    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 230
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 231
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a(Landroid/view/View;I)V

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 234
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_41

    .line 235
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    .line 238
    :cond_41
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    if-gez v0, :cond_48

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    .line 241
    :cond_48
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    goto :goto_0

    .line 244
    :cond_4f
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 149
    if-nez v0, :cond_e

    .line 150
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 153
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 154
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 155
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;Z)Z
    .registers 2

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 4

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    .line 75
    const v0, 0x7fffffff

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    .line 76
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    .line 77
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->q:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->j:Landroid/view/GestureDetector;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2f

    .line 78
    monitor-exit p0

    return-void

    .line 70
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    :goto_5
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_2a

    .line 259
    iget v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    .line 260
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 262
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    .line 263
    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 267
    :cond_2a
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    :goto_34
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_5a

    .line 269
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 271
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->g:I

    .line 272
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_34

    .line 274
    :cond_5a
    return-void
.end method

.method private b(II)V
    .registers 6

    .prologue
    .line 247
    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_32

    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    if-ltz v0, :cond_32

    .line 248
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 249
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a(Landroid/view/View;I)V

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 251
    iget v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    .line 252
    iget v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    goto :goto_0

    .line 254
    :cond_32
    return-void
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->f:I

    return v0
.end method

.method private declared-synchronized c()V
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b()V

    .line 138
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 139
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->requestLayout()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 140
    monitor-exit p0

    return-void

    .line 137
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_30

    .line 278
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    .line 279
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->i:I

    move v2, v0

    move v0, v1

    .line 280
    :goto_10
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 281
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 283
    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 284
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 287
    :cond_30
    return-void
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic e(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    :cond_b
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    .line 132
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c()V

    .line 134
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 313
    return v1
.end method

.method protected a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    iget v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 305
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    .line 306
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 308
    const/4 v0, 0x1

    return v0

    .line 305
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->j:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 298
    return v0
.end method

.method public synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .registers 8

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 164
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_6b

    if-nez v0, :cond_a

    .line 207
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 168
    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->o:Z

    if-eqz v0, :cond_1b

    .line 169
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c:I

    .line 170
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b()V

    .line 171
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 172
    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->o:Z

    .line 176
    :cond_1b
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 177
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 178
    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    .line 181
    :cond_2b
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    if-gtz v0, :cond_38

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    .line 183
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 185
    :cond_38
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    iget v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    if-lt v0, v1, :cond_48

    .line 186
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->h:I

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    .line 187
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 190
    :cond_48
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c:I

    iget v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    sub-int/2addr v0, v1

    .line 192
    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->b(I)V

    .line 193
    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a(I)V

    .line 194
    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c(I)V

    .line 196
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->d:I

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->c:I

    .line 198
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView$2;-><init>(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_6a
    .catchall {:try_start_a .. :try_end_6a} :catchall_6b

    goto :goto_8

    .line 162
    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 88
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 93
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 83
    return-void
.end method

.method public setSelection(I)V
    .registers 2

    .prologue
    .line 145
    return-void
.end method
