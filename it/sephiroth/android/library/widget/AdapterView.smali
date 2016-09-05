.class public abstract Lit/sephiroth/android/library/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field protected V:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected W:I

.field private a:I

.field protected aa:I

.field protected ab:J

.field protected ac:J

.field protected ad:Z

.field ae:I

.field protected af:Z

.field ag:Lit/sephiroth/android/library/widget/AdapterView$OnItemSelectedListener;

.field ah:Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;

.field ai:Lit/sephiroth/android/library/widget/AdapterView$OnItemLongClickListener;

.field public aj:Z

.field protected ak:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected al:J

.field protected am:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected an:J

.field protected ao:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected ap:I

.field aq:Landroid/view/accessibility/AccessibilityManager;

.field protected ar:I

.field protected as:J

.field protected at:Z

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lit/sephiroth/android/library/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    .line 77
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    .line 87
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    .line 118
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Z

    .line 144
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    .line 150
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    .line 155
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    .line 161
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    .line 195
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:I

    .line 200
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:J

    .line 217
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->at:Z

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    .line 77
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    .line 87
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    .line 118
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Z

    .line 144
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    .line 150
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    .line 155
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    .line 161
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    .line 195
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:I

    .line 200
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:J

    .line 217
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->at:Z

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    .line 77
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    .line 87
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    .line 118
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Z

    .line 144
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    .line 150
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    .line 155
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    .line 161
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    .line 195
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:I

    .line 200
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:J

    .line 217
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->at:Z

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2d

    .line 233
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2d

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 238
    :cond_2d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_42

    .line 239
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aq:Landroid/view/accessibility/AccessibilityManager;

    .line 241
    :cond_42
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 7

    .prologue
    .line 919
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ag:Lit/sephiroth/android/library/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 930
    :goto_4
    return-void

    .line 922
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 923
    if-ltz v3, :cond_1e

    .line 924
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    move-result-object v2

    .line 925
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ag:Lit/sephiroth/android/library/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView$OnItemSelectedListener;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_4

    .line 928
    :cond_1e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ag:Lit/sephiroth/android/library/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lit/sephiroth/android/library/widget/AdapterView$OnItemSelectedListener;->a(Lit/sephiroth/android/library/widget/AdapterView;)V

    goto :goto_4
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Z)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 744
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    move p1, v1

    .line 748
    :cond_a
    if-eqz p1, :cond_35

    .line 749
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    if-eqz v0, :cond_31

    .line 750
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setVisibility(I)V

    .line 760
    :goto_18
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:Z

    if-eqz v0, :cond_30

    .line 761
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    .line 767
    :cond_30
    :goto_30
    return-void

    .line 754
    :cond_31
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setVisibility(I)V

    goto :goto_18

    .line 764
    :cond_35
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    :cond_3e
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setVisibility(I)V

    goto :goto_30
.end method

.method private b()V
    .registers 2

    .prologue
    .line 933
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aq:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 941
    :cond_8
    :goto_8
    return-void

    .line 936
    :cond_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 937
    if-ltz v0, :cond_8

    .line 939
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_8
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AdapterView;)V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->a()V

    return-void
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AdapterView;)V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->b()V

    return-void
.end method

.method private c()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 997
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v1

    .line 998
    if-eqz v1, :cond_1c

    .line 999
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1000
    if-lez v1, :cond_1c

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_1b

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    .line 1003
    :cond_1c
    return v0
.end method


# virtual methods
.method protected a(IZ)I
    .registers 3

    .prologue
    .line 1189
    return p1
.end method

.method public a(Landroid/view/View;)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 610
    .line 613
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_a} :catch_f

    move-result v2

    if-nez v2, :cond_12

    move-object p1, v0

    .line 614
    goto :goto_1

    .line 616
    :catch_f
    move-exception v0

    move v0, v1

    .line 630
    :goto_11
    return v0

    .line 622
    :cond_12
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildCount()I

    move-result v2

    .line 623
    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_2a

    .line 624
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 625
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    add-int/2addr v0, v1

    goto :goto_11

    .line 623
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2a
    move v0, v1

    .line 630
    goto :goto_11
.end method

.method public a(Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ah:Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;

    .line 273
    return-void
.end method

.method public a(Landroid/view/View;IJ)Z
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ah:Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_18

    .line 295
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->playSoundEffect(I)V

    .line 296
    if-eqz p1, :cond_e

    .line 297
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 299
    :cond_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ah:Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 303
    :cond_18
    return v0
.end method

.method public addView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .prologue
    .line 506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .prologue
    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1008
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .prologue
    .line 945
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 948
    const/4 v0, 0x1

    .line 950
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
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
    .line 805
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 806
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
    .line 797
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 798
    return-void
.end method

.method public g(I)J
    .registers 4

    .prologue
    .line 782
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v0, -0x8000000000000000L

    :goto_a
    return-wide v0

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_a
.end method

.method public abstract g()Landroid/view/View;
.end method

.method public getCount()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 596
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 648
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 569
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 561
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 874
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 875
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 876
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 983
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 984
    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 985
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 986
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_20

    .line 988
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 990
    :cond_20
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 991
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 992
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 993
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 994
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 971
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 972
    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 973
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 974
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_20

    .line 976
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 978
    :cond_20
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .prologue
    .line 551
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 552
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 956
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 958
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 959
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 961
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 962
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 963
    const/4 v0, 0x1

    .line 965
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method r()V
    .registers 9

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1015
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    .line 1018
    if-lez v4, :cond_55

    .line 1023
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    if-eqz v0, :cond_53

    .line 1026
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    .line 1030
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->x()I

    move-result v0

    .line 1031
    if-ltz v0, :cond_53

    .line 1033
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->a(IZ)I

    move-result v3

    .line 1034
    if-ne v3, v0, :cond_53

    .line 1036
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    move v3, v2

    .line 1041
    :goto_1f
    if-nez v3, :cond_4f

    .line 1043
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1046
    if-lt v0, v4, :cond_29

    .line 1047
    add-int/lit8 v0, v4, -0x1

    .line 1049
    :cond_29
    if-gez v0, :cond_2c

    move v0, v1

    .line 1054
    :cond_2c
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->a(IZ)I

    move-result v4

    .line 1055
    if-gez v4, :cond_51

    .line 1057
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->a(IZ)I

    move-result v0

    .line 1059
    :goto_36
    if-ltz v0, :cond_4f

    .line 1060
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1061
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->w()V

    move v0, v2

    .line 1066
    :goto_3f
    if-nez v0, :cond_4e

    .line 1068
    iput v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    .line 1069
    iput-wide v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    .line 1070
    iput v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    .line 1071
    iput-wide v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    .line 1072
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    .line 1073
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->w()V

    .line 1080
    :cond_4e
    return-void

    :cond_4f
    move v0, v3

    goto :goto_3f

    :cond_51
    move v0, v4

    goto :goto_36

    :cond_53
    move v3, v1

    goto :goto_1f

    :cond_55
    move v0, v1

    goto :goto_3f
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 546
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4

    .prologue
    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract s()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setFocusable(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 700
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_23

    :cond_e
    move v0, v2

    .line 703
    :goto_f
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:Z

    .line 704
    if-nez p1, :cond_15

    .line 705
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:Z

    .line 708
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->t()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 709
    return-void

    :cond_23
    move v0, v1

    .line 701
    goto :goto_f

    :cond_25
    move v2, v1

    .line 708
    goto :goto_1f
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 713
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_23

    :cond_e
    move v0, v2

    .line 716
    :goto_f
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:Z

    .line 717
    if-eqz p1, :cond_15

    .line 718
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:Z

    .line 721
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->t()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 722
    return-void

    :cond_23
    move v0, v1

    .line 714
    goto :goto_f

    :cond_25
    move v2, v1

    .line 721
    goto :goto_1f
.end method

.method protected setNextSelectedPositionInt(I)V
    .registers 4

    .prologue
    .line 1210
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    .line 1211
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->g(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    .line 1213
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ae:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1214
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:I

    .line 1215
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    .line 1217
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    .prologue
    .line 788
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSelectedPositionInt(I)V
    .registers 4

    .prologue
    .line 1199
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    .line 1200
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->g(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    .line 1201
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method t()Z
    .registers 2

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method protected u()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v4

    .line 726
    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3d

    :cond_e
    move v0, v1

    .line 727
    :goto_f
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->t()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_17
    move v3, v1

    .line 731
    :goto_18
    if-eqz v3, :cond_41

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:Z

    if-eqz v0, :cond_41

    move v0, v1

    :goto_1f
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 732
    if-eqz v3, :cond_43

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:Z

    if-eqz v0, :cond_43

    move v0, v1

    :goto_29
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 733
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 734
    if-eqz v4, :cond_38

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_38
    move v2, v1

    :cond_39
    invoke-direct {p0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->a(Z)V

    .line 736
    :cond_3c
    return-void

    :cond_3d
    move v0, v2

    .line 726
    goto :goto_f

    :cond_3f
    move v3, v2

    .line 727
    goto :goto_18

    :cond_41
    move v0, v2

    .line 731
    goto :goto_1f

    :cond_43
    move v0, v2

    .line 732
    goto :goto_29
.end method

.method v()V
    .registers 3

    .prologue
    .line 900
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ag:Lit/sephiroth/android/library/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aq:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 902
    :cond_c
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->at:Z

    if-eqz v0, :cond_26

    .line 907
    :cond_14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_20

    .line 908
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;-><init>(Lit/sephiroth/android/library/widget/AdapterView;Lit/sephiroth/android/library/widget/AdapterView$1;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;

    .line 910
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 916
    :cond_25
    :goto_25
    return-void

    .line 912
    :cond_26
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->a()V

    .line 913
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->b()V

    goto :goto_25
.end method

.method protected w()V
    .registers 5

    .prologue
    .line 1086
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1087
    :cond_e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->v()V

    .line 1088
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:I

    .line 1089
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:J

    .line 1091
    :cond_19
    return-void
.end method

.method x()I
    .registers 13

    .prologue
    .line 1100
    iget v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    .line 1102
    if-nez v6, :cond_6

    .line 1103
    const/4 v3, -0x1

    .line 1175
    :cond_5
    :goto_5
    return v3

    .line 1106
    :cond_6
    iget-wide v8, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    .line 1107
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:I

    .line 1110
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, v8, v2

    if-nez v1, :cond_12

    .line 1111
    const/4 v3, -0x1

    goto :goto_5

    .line 1115
    :cond_12
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1116
    add-int/lit8 v1, v6, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long v10, v2, v4

    .line 1129
    const/4 v0, 0x0

    .line 1139
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v7

    .line 1140
    if-nez v7, :cond_67

    .line 1141
    const/4 v3, -0x1

    goto :goto_5

    .line 1159
    :cond_2e
    if-nez v4, :cond_34

    if-eqz v0, :cond_5c

    if-nez v5, :cond_5c

    .line 1161
    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 1164
    const/4 v0, 0x0

    move v3, v1

    .line 1144
    :cond_38
    :goto_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gtz v4, :cond_55

    .line 1145
    invoke-interface {v7, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    .line 1146
    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 1151
    add-int/lit8 v4, v6, -0x1

    if-ne v1, v4, :cond_57

    const/4 v4, 0x1

    move v5, v4

    .line 1152
    :goto_4e
    if-nez v2, :cond_5a

    const/4 v4, 0x1

    .line 1154
    :goto_51
    if-eqz v5, :cond_2e

    if-eqz v4, :cond_2e

    .line 1175
    :cond_55
    const/4 v3, -0x1

    goto :goto_5

    .line 1151
    :cond_57
    const/4 v4, 0x0

    move v5, v4

    goto :goto_4e

    .line 1152
    :cond_5a
    const/4 v4, 0x0

    goto :goto_51

    .line 1165
    :cond_5c
    if-nez v5, :cond_62

    if-nez v0, :cond_38

    if-nez v4, :cond_38

    .line 1167
    :cond_62
    add-int/lit8 v2, v2, -0x1

    .line 1170
    const/4 v0, 0x1

    move v3, v2

    goto :goto_38

    :cond_67
    move v2, v1

    move v3, v1

    goto :goto_38
.end method

.method public y()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1227
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1228
    iput-boolean v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    .line 1229
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:J

    .line 1230
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    if-ltz v0, :cond_2f

    .line 1232
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1233
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    .line 1234
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:I

    .line 1235
    if-eqz v0, :cond_2c

    .line 1236
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->W:I

    .line 1238
    :cond_2c
    iput v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->ae:I

    .line 1255
    :cond_2e
    :goto_2e
    return-void

    .line 1241
    :cond_2f
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1242
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v1

    .line 1243
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    if-ltz v2, :cond_5a

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1244
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    .line 1248
    :goto_4b
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:I

    .line 1249
    if-eqz v0, :cond_57

    .line 1250
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->W:I

    .line 1252
    :cond_57
    iput v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->ae:I

    goto :goto_2e

    .line 1246
    :cond_5a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    goto :goto_4b
.end method
