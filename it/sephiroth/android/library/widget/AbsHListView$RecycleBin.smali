.class public Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsHListView.java"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private b:Lit/sephiroth/android/library/widget/AbsHListView$RecyclerListener;

.field private c:I

.field private d:[Landroid/view/View;

.field private e:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 3

    .prologue
    .line 5457
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5471
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    return-void
.end method

.method private f()V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5766
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    array-length v5, v0

    .line 5767
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    .line 5768
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    move v4, v1

    .line 5769
    :goto_9
    if-ge v4, v6, :cond_2e

    .line 5770
    aget-object v8, v7, v4

    .line 5771
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5772
    sub-int v9, v0, v5

    .line 5773
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .line 5774
    :goto_16
    if-ge v2, v9, :cond_2a

    .line 5775
    iget-object v10, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v10, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5774
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_16

    .line 5769
    :cond_2a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 5779
    :cond_2e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_53

    .line 5780
    :goto_32
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 5781
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5784
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 5785
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->d(I)V

    .line 5786
    add-int/lit8 v1, v1, -0x1

    .line 5780
    :cond_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    .line 5790
    :cond_53
    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 5502
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 5503
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->g:Ljava/util/ArrayList;

    .line 5504
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5505
    :goto_d
    if-ge v2, v4, :cond_3d

    .line 5506
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5505
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 5509
    :cond_1c
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    move v3, v1

    .line 5510
    :goto_1f
    if-ge v3, v4, :cond_3d

    .line 5511
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5512
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 5513
    :goto_2a
    if-ge v2, v6, :cond_39

    .line 5514
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5513
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    .line 5510
    :cond_39
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1f

    .line 5518
    :cond_3d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_58

    .line 5519
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v2

    .line 5520
    :goto_47
    if-ge v1, v2, :cond_58

    .line 5521
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5520
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_47

    .line 5524
    :cond_58
    return-void
.end method

.method public a(I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 5488
    const/4 v0, 0x1

    if-ge p1, v0, :cond_d

    .line 5489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5492
    :cond_d
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 5493
    :goto_10
    if-ge v0, p1, :cond_1c

    .line 5494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 5493
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 5496
    :cond_1c
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    .line 5497
    aget-object v0, v2, v1

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->g:Ljava/util/ArrayList;

    .line 5498
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    .line 5499
    return-void
.end method

.method public a(II)V
    .registers 8

    .prologue
    .line 5564
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_9

    .line 5565
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    .line 5567
    :cond_9
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->c:I

    .line 5569
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    .line 5570
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, p1, :cond_2a

    .line 5571
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5572
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 5574
    if-eqz v0, :cond_26

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_26

    .line 5577
    aput-object v3, v2, v1

    .line 5570
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 5580
    :cond_2a
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 5645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 5646
    if-nez v0, :cond_9

    .line 5689
    :cond_8
    :goto_8
    return-void

    .line 5650
    :cond_9
    iput p2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 5654
    iget v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 5656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4a

    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    .line 5658
    :goto_17
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v0, :cond_4c

    .line 5659
    :cond_1f
    const/4 v2, -0x2

    if-ne v1, v2, :cond_24

    if-eqz v0, :cond_34

    .line 5660
    :cond_24
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_2f

    .line 5661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->h:Ljava/util/ArrayList;

    .line 5663
    :cond_2f
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5665
    :cond_34
    if-eqz v0, :cond_8

    .line 5666
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_41

    .line 5667
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 5669
    :cond_41
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5670
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    goto :goto_8

    .line 5656
    :cond_4a
    const/4 v0, 0x0

    goto :goto_17

    .line 5675
    :cond_4c
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5676
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6d

    .line 5677
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5682
    :goto_59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_63

    .line 5683
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5686
    :cond_63
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b:Lit/sephiroth/android/library/widget/AbsHListView$RecyclerListener;

    if-eqz v0, :cond_8

    .line 5687
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b:Lit/sephiroth/android/library/widget/AbsHListView$RecyclerListener;

    invoke-interface {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$RecyclerListener;->a(Landroid/view/View;)V

    goto :goto_8

    .line 5679
    :cond_6d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59
.end method

.method public b()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 5534
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 5535
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->g:Ljava/util/ArrayList;

    .line 5536
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 5537
    :goto_d
    if-ge v1, v4, :cond_47

    .line 5538
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v5, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5537
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 5541
    :cond_21
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    move v3, v2

    .line 5542
    :goto_24
    if-ge v3, v4, :cond_47

    .line 5543
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5544
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 5545
    :goto_2f
    if-ge v1, v6, :cond_43

    .line 5546
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v7, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5545
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 5542
    :cond_43
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_24

    .line 5550
    :cond_47
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_50

    .line 5551
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 5553
    :cond_50
    return-void
.end method

.method public b(I)Z
    .registers 3

    .prologue
    .line 5527
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public c(I)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 5590
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->c:I

    sub-int v2, p1, v0

    .line 5591
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    .line 5592
    if-ltz v2, :cond_11

    array-length v0, v3

    if-ge v2, v0, :cond_11

    .line 5593
    aget-object v0, v3, v2

    .line 5594
    aput-object v1, v3, v2

    .line 5597
    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
.end method

.method c()V
    .registers 2

    .prologue
    .line 5617
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_9

    .line 5618
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 5620
    :cond_9
    return-void
.end method

.method d(I)Landroid/view/View;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 5601
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_6

    .line 5610
    :cond_5
    :goto_5
    return-object v0

    .line 5604
    :cond_6
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->g(I)I

    move-result v1

    .line 5605
    if-ltz v1, :cond_5

    .line 5608
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5609
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->d(I)V

    goto :goto_5
.end method

.method public d()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 5695
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 5703
    :goto_5
    return-void

    .line 5698
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 5699
    :goto_d
    if-ge v1, v3, :cond_20

    .line 5700
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v4, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5699
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 5702
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_5
.end method

.method e(I)Landroid/view/View;
    .registers 4

    .prologue
    .line 5626
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 5627
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->g:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 5634
    :goto_b
    return-object v0

    .line 5629
    :cond_c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 5630
    if-ltz v0, :cond_24

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 5631
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    goto :goto_b

    .line 5634
    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public e()V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 5710
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    .line 5711
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b:Lit/sephiroth/android/library/widget/AbsHListView$RecyclerListener;

    if-eqz v1, :cond_5a

    move v1, v0

    .line 5712
    :goto_a
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    if-le v3, v0, :cond_5c

    move v3, v0

    .line 5714
    :goto_f
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->g:Ljava/util/ArrayList;

    .line 5715
    array-length v0, v7

    .line 5716
    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_15
    if-ltz v6, :cond_83

    .line 5717
    aget-object v8, v7, v6

    .line 5718
    if-eqz v8, :cond_56

    .line 5719
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 5720
    iget v9, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 5722
    aput-object v11, v7, v6

    .line 5724
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v4, v10, :cond_5e

    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 5725
    :goto_2f
    invoke-virtual {p0, v9}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b(I)Z

    move-result v10

    if-eqz v10, :cond_37

    if-eqz v4, :cond_60

    .line 5727
    :cond_37
    const/4 v0, -0x2

    if-ne v9, v0, :cond_3c

    if-eqz v4, :cond_41

    .line 5729
    :cond_3c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v8, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5731
    :cond_41
    if-eqz v4, :cond_56

    .line 5732
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_4e

    .line 5733
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 5735
    :cond_4e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->i:Landroid/support/v4/util/SparseArrayCompat;

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->c:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v4, v8}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 5716
    :cond_56
    :goto_56
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_15

    :cond_5a
    move v1, v2

    .line 5711
    goto :goto_a

    :cond_5c
    move v3, v2

    .line 5712
    goto :goto_f

    :cond_5e
    move v4, v2

    .line 5724
    goto :goto_2f

    .line 5740
    :cond_60
    if-eqz v3, :cond_87

    .line 5741
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    aget-object v4, v4, v9

    .line 5743
    :goto_66
    invoke-virtual {v8}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5744
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->c:I

    add-int/2addr v5, v6

    iput v5, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 5745
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5747
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v0, v5, :cond_7a

    .line 5748
    invoke-virtual {v8, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5751
    :cond_7a
    if-eqz v1, :cond_81

    .line 5752
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b:Lit/sephiroth/android/library/widget/AbsHListView$RecyclerListener;

    invoke-interface {v0, v8}, Lit/sephiroth/android/library/widget/AbsHListView$RecyclerListener;->a(Landroid/view/View;)V

    :cond_81
    move-object v5, v4

    goto :goto_56

    .line 5757
    :cond_83
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f()V

    .line 5758
    return-void

    :cond_87
    move-object v4, v5

    goto :goto_66
.end method

.method f(I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 5815
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 5816
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->g:Ljava/util/ArrayList;

    .line 5817
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5818
    :goto_d
    if-ge v2, v4, :cond_3d

    .line 5819
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5818
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 5822
    :cond_1c
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f:I

    move v3, v1

    .line 5823
    :goto_1f
    if-ge v3, v4, :cond_3d

    .line 5824
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5825
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 5826
    :goto_2a
    if-ge v2, v6, :cond_39

    .line 5827
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5826
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    .line 5823
    :cond_39
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1f

    .line 5832
    :cond_3d
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d:[Landroid/view/View;

    .line 5833
    array-length v3, v2

    move v0, v1

    .line 5834
    :goto_41
    if-ge v0, v3, :cond_4d

    .line 5835
    aget-object v1, v2, v0

    .line 5836
    if-eqz v1, :cond_4a

    .line 5837
    invoke-virtual {v1, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5834
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 5840
    :cond_4d
    return-void
.end method
