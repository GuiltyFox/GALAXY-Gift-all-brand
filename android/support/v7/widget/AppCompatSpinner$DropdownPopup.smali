.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.super Landroid/support/v7/widget/ListPopupWindow;
.source "AppCompatSpinner.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/AppCompatSpinner;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/widget/ListAdapter;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 699
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    .line 700
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 697
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->d:Landroid/graphics/Rect;

    .line 702
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setModal(Z)V

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 706
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/support/v7/widget/AppCompatSpinner;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 717
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 694
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 825
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .registers 1

    .prologue
    .line 694
    invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 731
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->b:Ljava/lang/CharSequence;

    .line 732
    return-void
.end method

.method b()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_96

    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_20
    move v1, v0

    .line 745
    :goto_21
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingLeft()I

    move-result v3

    .line 746
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingRight()I

    move-result v4

    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getWidth()I

    move-result v5

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$400(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_a9

    .line 749
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->c:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    .line 750
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 749
    # invokes: Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    invoke-static {v2, v0, v6}, Landroid/support/v7/widget/AppCompatSpinner;->access$500(Landroid/support/v7/widget/AppCompatSpinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 751
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v6}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v6}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    .line 753
    if-le v2, v0, :cond_c6

    .line 756
    :goto_6e
    sub-int v2, v5, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 763
    :goto_78
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 764
    sub-int v0, v5, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 768
    :goto_88
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 769
    return-void

    .line 739
    :cond_8c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    .line 740
    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_20

    .line 742
    :cond_96
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/support/v7/widget/AppCompatSpinner;->access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v1, v0

    goto/16 :goto_21

    .line 758
    :cond_a9
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$400(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b9

    .line 759
    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_78

    .line 761
    :cond_b9
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    # getter for: Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$400(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_78

    .line 766
    :cond_c3
    add-int v0, v1, v3

    goto :goto_88

    :cond_c6
    move v0, v2

    goto :goto_6e
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 722
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->c:Landroid/widget/ListAdapter;

    .line 723
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->b()V

    .line 776
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 777
    invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 778
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 779
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 780
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setSelection(I)V

    .line 782
    if-eqz v0, :cond_22

    .line 819
    :cond_21
    :goto_21
    return-void

    .line 791
    :cond_22
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_21

    .line 793
    new-instance v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    .line 808
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 809
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_21
.end method
