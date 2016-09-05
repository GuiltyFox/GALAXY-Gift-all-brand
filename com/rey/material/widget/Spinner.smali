.class public Lcom/rey/material/widget/Spinner;
.super Lcom/rey/material/widget/FrameLayout;
.source "Spinner.java"

# interfaces
.implements Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field private c:Z

.field private d:Lcom/rey/material/widget/TextView;

.field private e:Landroid/widget/SpinnerAdapter;

.field private f:Lcom/rey/material/widget/Spinner$OnItemClickListener;

.field private g:Lcom/rey/material/widget/Spinner$OnItemSelectedListener;

.field private h:I

.field private i:I

.field private j:Lcom/rey/material/widget/Spinner$DropdownPopup;

.field private k:I

.field private l:Lcom/rey/material/drawable/ArrowDrawable;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/rey/material/drawable/DividerDrawable;

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:I

.field private v:Lcom/rey/material/widget/Spinner$RecycleBin;

.field private w:Landroid/graphics/Rect;

.field private x:Lcom/rey/material/widget/Spinner$DropDownAdapter;

.field private y:Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 110
    sget v0, Lcom/rey/material/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v1, v0}, Lcom/rey/material/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Lcom/rey/material/widget/Spinner$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$RecycleBin;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->v:Lcom/rey/material/widget/Spinner$RecycleBin;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->y:Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 114
    sget v0, Lcom/rey/material/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/rey/material/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Lcom/rey/material/widget/Spinner$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$RecycleBin;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->v:Lcom/rey/material/widget/Spinner$RecycleBin;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->y:Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/rey/material/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Lcom/rey/material/widget/Spinner$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$RecycleBin;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->v:Lcom/rey/material/widget/Spinner$RecycleBin;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->y:Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    new-instance v0, Lcom/rey/material/widget/Spinner$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$RecycleBin;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->v:Lcom/rey/material/widget/Spinner$RecycleBin;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->y:Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    .line 123
    return-void
.end method

.method private a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13

    .prologue
    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 932
    if-nez p1, :cond_6

    .line 968
    :goto_5
    return v0

    .line 939
    :cond_6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 940
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 944
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 945
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 946
    sub-int v3, v8, v1

    .line 947
    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    .line 948
    :goto_2d
    if-ge v5, v8, :cond_58

    .line 949
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 950
    if-eq v0, v1, :cond_6c

    move-object v1, v2

    .line 954
    :goto_36
    invoke-interface {p1, v5, v1, v2}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 955
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_48

    .line 956
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    :cond_48
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 959
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 948
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_2d

    .line 963
    :cond_58
    if-eqz p2, :cond_6a

    .line 964
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 965
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_5

    :cond_6a
    move v0, v4

    goto :goto_5

    :cond_6c
    move v0, v1

    move-object v1, v3

    goto :goto_36
.end method

.method static synthetic a(Lcom/rey/material/widget/Spinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/rey/material/widget/Spinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/rey/material/widget/Spinner;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->f()V

    return-void
.end method

.method static synthetic b(Lcom/rey/material/widget/Spinner;)Lcom/rey/material/drawable/ArrowDrawable;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    return-object v0
.end method

.method private c()Landroid/widget/TextView;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-nez v0, :cond_2a

    .line 155
    new-instance v0, Lcom/rey/material/widget/TextView;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rey/material/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_20

    .line 157
    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    iget-boolean v0, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    :goto_1d
    invoke-virtual {v1, v0}, Lcom/rey/material/widget/TextView;->setTextDirection(I)V

    .line 158
    :cond_20
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/rey/material/widget/TextView;->setSingleLine(Z)V

    .line 159
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/rey/material/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 162
    :cond_2a
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    return-object v0

    .line 157
    :cond_2d
    const/4 v0, 0x3

    goto :goto_1d
.end method

.method static synthetic c(Lcom/rey/material/widget/Spinner;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->d()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 873
    iget v0, p0, Lcom/rey/material/widget/Spinner;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->setSelection(I)V

    .line 879
    :goto_9
    return-void

    .line 875
    :cond_a
    iget v0, p0, Lcom/rey/material/widget/Spinner;->u:I

    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 876
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->e()V

    goto :goto_9

    .line 878
    :cond_18
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->setSelection(I)V

    goto :goto_9
.end method

.method static synthetic d(Lcom/rey/material/widget/Spinner;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->e()V

    return-void
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 882
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    .line 902
    :goto_5
    return-void

    .line 885
    :cond_6
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-nez v0, :cond_41

    .line 886
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->removeAllViews()V

    .line 891
    :cond_d
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    iget v1, p0, Lcom/rey/material/widget/Spinner;->u:I

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v1

    .line 892
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    iget v2, p0, Lcom/rey/material/widget/Spinner;->u:I

    iget-object v3, p0, Lcom/rey/material/widget/Spinner;->v:Lcom/rey/material/widget/Spinner$RecycleBin;

    invoke-virtual {v3, v1}, Lcom/rey/material/widget/Spinner$RecycleBin;->a(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v2, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 893
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 894
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 896
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 897
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 899
    :cond_38
    invoke-super {p0, v2}, Lcom/rey/material/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 901
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->v:Lcom/rey/material/widget/Spinner$RecycleBin;

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/widget/Spinner$RecycleBin;->a(ILandroid/view/View;)V

    goto :goto_5

    .line 888
    :cond_41
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_47
    if-lez v0, :cond_d

    .line 889
    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->removeViewAt(I)V

    .line 888
    add-int/lit8 v0, v0, -0x1

    goto :goto_47
.end method

.method static synthetic e(Lcom/rey/material/widget/Spinner;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->g()V

    return-void
.end method

.method static synthetic f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->w:Landroid/graphics/Rect;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 905
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->i()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 906
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->f()V

    .line 907
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->k()Lcom/rey/material/widget/ListView;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_3a

    .line 909
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1f

    .line 910
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ListView;->setChoiceMode(I)V

    .line 911
    :cond_1f
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ListView;->setSelection(I)V

    .line 912
    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eqz v1, :cond_3a

    iget-boolean v1, p0, Lcom/rey/material/widget/Spinner;->o:Z

    if-eqz v1, :cond_3a

    .line 913
    invoke-virtual {v0}, Lcom/rey/material/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/rey/material/widget/Spinner$2;

    invoke-direct {v2, p0, v0}, Lcom/rey/material/widget/Spinner$2;-><init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 924
    :cond_3a
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 927
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eqz v0, :cond_c

    .line 928
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    sget v1, Lcom/rey/material/drawable/ArrowDrawable;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/drawable/ArrowDrawable;->a(IZ)V

    .line 929
    :cond_c
    return-void
.end method

.method static synthetic g(Lcom/rey/material/widget/Spinner;)Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/rey/material/widget/Spinner;->z:Z

    return v0
.end method

.method private getArrowDrawableWidth()I
    .registers 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/rey/material/widget/Spinner;->m:I

    iget v1, p0, Lcom/rey/material/widget/Spinner;->n:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getDividerDrawableHeight()I
    .registers 3

    .prologue
    .line 648
    iget v0, p0, Lcom/rey/material/widget/Spinner;->q:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/rey/material/widget/Spinner;->q:I

    iget v1, p0, Lcom/rey/material/widget/Spinner;->r:I

    add-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic h(Lcom/rey/material/widget/Spinner;)I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/rey/material/widget/Spinner;->k:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/rey/material/widget/Spinner;->c:Z

    .line 128
    const/4 v0, -0x2

    iput v0, p0, Lcom/rey/material/widget/Spinner;->k:I

    .line 129
    iput-boolean v1, p0, Lcom/rey/material/widget/Spinner;->o:Z

    .line 130
    const/16 v0, 0x11

    iput v0, p0, Lcom/rey/material/widget/Spinner;->s:I

    .line 131
    iput-boolean v1, p0, Lcom/rey/material/widget/Spinner;->t:Z

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/widget/Spinner;->u:I

    .line 133
    iput-boolean v1, p0, Lcom/rey/material/widget/Spinner;->z:Z

    .line 135
    invoke-virtual {p0, v1}, Lcom/rey/material/widget/Spinner;->setWillNotDraw(Z)V

    .line 137
    new-instance v0, Lcom/rey/material/widget/Spinner$DropdownPopup;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/rey/material/widget/Spinner$DropdownPopup;-><init>(Lcom/rey/material/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    .line 138
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 141
    sget v0, Lcom/rey/material/R$style;->Material_Widget_Spinner:I

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->a(I)V

    .line 143
    :cond_33
    new-instance v0, Lcom/rey/material/widget/Spinner$1;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/Spinner$1;-><init>(Lcom/rey/material/widget/Spinner;)V

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/FrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Landroid/graphics/drawable/Drawable;)V

    .line 445
    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_b

    .line 422
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->y:Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 424
    :cond_b
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->v:Lcom/rey/material/widget/Spinner$RecycleBin;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$RecycleBin;->a()V

    .line 426
    iput-object p1, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    .line 427
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->y:Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 428
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->d()V

    .line 430
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_2b

    .line 431
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    new-instance v1, Lcom/rey/material/widget/Spinner$DropDownAdapter;

    invoke-direct {v1, p1}, Lcom/rey/material/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Landroid/widget/ListAdapter;)V

    .line 434
    :goto_2a
    return-void

    .line 433
    :cond_2b
    new-instance v0, Lcom/rey/material/widget/Spinner$DropDownAdapter;

    invoke-direct {v0, p1}, Lcom/rey/material/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner;->x:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    goto :goto_2a
.end method

.method public a(Lcom/rey/material/widget/Spinner$OnItemSelectedListener;)V
    .registers 2

    .prologue
    .line 630
    iput-object p1, p0, Lcom/rey/material/widget/Spinner;->g:Lcom/rey/material/widget/Spinner$OnItemSelectedListener;

    .line 631
    return-void
.end method

.method public a(Landroid/view/View;IJ)Z
    .registers 12

    .prologue
    .line 856
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->f:Lcom/rey/material/widget/Spinner$OnItemClickListener;

    if-eqz v0, :cond_15

    .line 861
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->f:Lcom/rey/material/widget/Spinner$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/rey/material/widget/Spinner$OnItemClickListener;->a(Lcom/rey/material/widget/Spinner;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 862
    invoke-virtual {p0, p2}, Lcom/rey/material/widget/Spinner;->setSelection(I)V

    .line 864
    :cond_13
    const/4 v0, 0x1

    .line 869
    :goto_14
    return v0

    .line 867
    :cond_15
    invoke-virtual {p0, p2}, Lcom/rey/material/widget/Spinner;->setSelection(I)V

    .line 869
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public b()Landroid/view/View;
    .registers 3

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return-object v0
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 27

    .prologue
    .line 167
    invoke-super/range {p0 .. p4}, Lcom/rey/material/widget/FrameLayout;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->removeAllViews()V

    .line 171
    sget-object v4, Lcom/rey/material/R$styleable;->Spinner:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 173
    const/4 v8, -0x1

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v10, 0x1

    .line 177
    const/4 v12, -0x1

    .line 178
    const/4 v11, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    const/4 v5, -0x1

    .line 182
    const/4 v4, 0x0

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    move v13, v4

    move v4, v5

    move-object v5, v6

    :goto_24
    if-ge v13, v15, :cond_2f0

    .line 183
    invoke-virtual {v14, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 185
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_labelEnable:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_48

    .line 186
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/rey/material/widget/Spinner;->c:Z

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    .line 182
    :goto_40
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    move v12, v7

    move-object v7, v8

    move v8, v11

    move-object v11, v6

    goto :goto_24

    .line 187
    :cond_48
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_labelPadding:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_70

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto :goto_40

    .line 189
    :cond_70
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_labelTextSize:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_80

    .line 190
    const/4 v4, 0x0

    invoke-virtual {v14, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto :goto_40

    .line 191
    :cond_80
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_labelTextColor:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_8f

    .line 192
    invoke-virtual {v14, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto :goto_40

    .line 193
    :cond_8f
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_labelTextAppearance:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_ad

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto :goto_40

    .line 195
    :cond_ad
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_labelEllipsize:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_ff

    .line 196
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 197
    packed-switch v6, :pswitch_data_474

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v6

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_c9
    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    .line 214
    goto/16 :goto_40

    .line 199
    :pswitch_cf
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v6

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_c9

    .line 202
    :pswitch_db
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v6

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_c9

    .line 205
    :pswitch_e7
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v6

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_c9

    .line 208
    :pswitch_f3
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v6

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_c9

    .line 215
    :cond_ff
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_label:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_118

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual {v14, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 217
    :cond_118
    sget v16, Lcom/rey/material/R$styleable;->Spinner_android_gravity:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_130

    .line 218
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/rey/material/widget/Spinner;->s:I

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 219
    :cond_130
    sget v16, Lcom/rey/material/R$styleable;->Spinner_android_minWidth:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_149

    .line 220
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/rey/material/widget/Spinner;->setMinimumWidth(I)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 221
    :cond_149
    sget v16, Lcom/rey/material/R$styleable;->Spinner_android_minHeight:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_162

    .line 222
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/rey/material/widget/Spinner;->setMinimumHeight(I)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 223
    :cond_162
    sget v16, Lcom/rey/material/R$styleable;->Spinner_android_dropDownWidth:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_17a

    .line 224
    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/rey/material/widget/Spinner;->k:I

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 225
    :cond_17a
    sget v16, Lcom/rey/material/R$styleable;->Spinner_android_popupBackground:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_195

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    move-object/from16 v16, v0

    invoke-virtual {v14, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Landroid/graphics/drawable/Drawable;)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 227
    :cond_195
    sget v16, Lcom/rey/material/R$styleable;->Spinner_android_prompt:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_1b0

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    move-object/from16 v16, v0

    invoke-virtual {v14, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Ljava/lang/CharSequence;)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 229
    :cond_1b0
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_popupItemAnimation:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_1cf

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(I)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 231
    :cond_1cf
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_popupItemAnimOffset:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_1ee

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/rey/material/widget/Spinner$DropdownPopup;->b(I)V

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 233
    :cond_1ee
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_disableChildrenWhenDisabled:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_206

    .line 234
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/rey/material/widget/Spinner;->t:Z

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 235
    :cond_206
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_arrowSwitchMode:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_21e

    .line 236
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/rey/material/widget/Spinner;->o:Z

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 237
    :cond_21e
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_arrowAnimDuration:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_232

    .line 238
    const/4 v8, 0x0

    invoke-virtual {v14, v6, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    move-object v8, v7

    move v7, v12

    move-object/from16 v21, v11

    move v11, v6

    move-object/from16 v6, v21

    goto/16 :goto_40

    .line 239
    :cond_232
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_arrowSize:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_24a

    .line 240
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/rey/material/widget/Spinner;->m:I

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 241
    :cond_24a
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_arrowPadding:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_262

    .line 242
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/rey/material/widget/Spinner;->n:I

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 243
    :cond_262
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_arrowColor:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_275

    .line 244
    invoke-virtual {v14, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move v7, v12

    move-object/from16 v21, v11

    move v11, v8

    move-object v8, v6

    move-object/from16 v6, v21

    goto/16 :goto_40

    .line 245
    :cond_275
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_arrowInterpolator:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_28c

    .line 246
    const/4 v9, 0x0

    invoke-virtual {v14, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 247
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    .line 248
    goto/16 :goto_40

    .line 249
    :cond_28c
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_arrowAnimClockwise:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_29d

    .line 250
    const/4 v10, 0x1

    invoke-virtual {v14, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 251
    :cond_29d
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_dividerHeight:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_2b5

    .line 252
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/rey/material/widget/Spinner;->q:I

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 253
    :cond_2b5
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_dividerPadding:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_2cd

    .line 254
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/rey/material/widget/Spinner;->r:I

    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 255
    :cond_2cd
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_dividerAnimDuration:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_2e1

    .line 256
    const/4 v12, 0x0

    invoke-virtual {v14, v6, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    move-object/from16 v21, v11

    move v11, v8

    move-object v8, v7

    move v7, v6

    move-object/from16 v6, v21

    goto/16 :goto_40

    .line 257
    :cond_2e1
    sget v16, Lcom/rey/material/R$styleable;->Spinner_spn_dividerColor:I

    move/from16 v0, v16

    if-ne v6, v0, :cond_46d

    .line 258
    invoke-virtual {v14, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 261
    :cond_2f0
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    if-eqz v5, :cond_2fc

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    :cond_2fc
    if-ltz v4, :cond_307

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    :cond_307
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/rey/material/widget/Spinner;->c:Z

    if-eqz v4, :cond_31e

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->c()Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/rey/material/widget/Spinner;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :cond_31e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/rey/material/widget/Spinner;->m:I

    if-lez v4, :cond_424

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-nez v4, :cond_3f5

    .line 274
    if-nez v7, :cond_338

    .line 275
    const/high16 v4, -0x1000000

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/rey/material/util/ThemeUtil;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 277
    :cond_338
    if-gez v8, :cond_33b

    .line 278
    const/4 v8, 0x0

    .line 280
    :cond_33b
    new-instance v4, Lcom/rey/material/drawable/ArrowDrawable;

    sget v5, Lcom/rey/material/drawable/ArrowDrawable;->a:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/rey/material/widget/Spinner;->m:I

    invoke-direct/range {v4 .. v10}, Lcom/rey/material/drawable/ArrowDrawable;-><init>(IILandroid/content/res/ColorStateList;ILandroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/rey/material/drawable/ArrowDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 302
    :cond_353
    :goto_353
    move-object/from16 v0, p0

    iget v4, v0, Lcom/rey/material/widget/Spinner;->q:I

    if-lez v4, :cond_458

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    if-nez v4, :cond_439

    .line 304
    if-gez v12, :cond_362

    .line 305
    const/4 v12, 0x0

    .line 307
    :cond_362
    if-nez v11, :cond_39a

    .line 308
    const/4 v4, 0x2

    new-array v4, v4, [[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const v8, -0x10100a7

    aput v8, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_480

    aput-object v6, v4, v5

    .line 312
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/high16 v7, -0x1000000

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/rey/material/util/ThemeUtil;->c(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, -0x1000000

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/rey/material/util/ThemeUtil;->d(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 317
    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 320
    :cond_39a
    new-instance v4, Lcom/rey/material/drawable/DividerDrawable;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rey/material/widget/Spinner;->q:I

    invoke-direct {v4, v5, v11, v12}, Lcom/rey/material/drawable/DividerDrawable;-><init>(ILandroid/content/res/ColorStateList;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/rey/material/drawable/DividerDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 338
    :cond_3b0
    :goto_3b0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->x:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    if-eqz v4, :cond_3c6

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rey/material/widget/Spinner;->x:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    invoke-virtual {v4, v5}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Landroid/widget/ListAdapter;)V

    .line 340
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/rey/material/widget/Spinner;->x:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    .line 343
    :cond_3c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_3d5

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/Spinner;->a(Landroid/widget/SpinnerAdapter;)V

    .line 346
    :cond_3d5
    invoke-virtual/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_3f1

    .line 347
    new-instance v4, Lcom/rey/material/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lcom/rey/material/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 348
    const-string/jumbo v5, "Item 1"

    invoke-virtual {v4, v5}, Lcom/rey/material/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    move-object/from16 v0, p0

    invoke-super {v0, v4}, Lcom/rey/material/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    :cond_3f1
    invoke-virtual/range {p0 .. p0}, Lcom/rey/material/widget/Spinner;->requestLayout()V

    .line 353
    return-void

    .line 284
    :cond_3f5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rey/material/widget/Spinner;->m:I

    invoke-virtual {v4, v5}, Lcom/rey/material/drawable/ArrowDrawable;->b(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {v4, v10}, Lcom/rey/material/drawable/ArrowDrawable;->a(Z)V

    .line 287
    if-eqz v7, :cond_410

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {v4, v7}, Lcom/rey/material/drawable/ArrowDrawable;->a(Landroid/content/res/ColorStateList;)V

    .line 290
    :cond_410
    if-ltz v8, :cond_419

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {v4, v8}, Lcom/rey/material/drawable/ArrowDrawable;->a(I)V

    .line 293
    :cond_419
    if-eqz v9, :cond_353

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {v4, v9}, Lcom/rey/material/drawable/ArrowDrawable;->a(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_353

    .line 297
    :cond_424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eqz v4, :cond_353

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/rey/material/drawable/ArrowDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 299
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    goto/16 :goto_353

    .line 324
    :cond_439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rey/material/widget/Spinner;->q:I

    invoke-virtual {v4, v5}, Lcom/rey/material/drawable/DividerDrawable;->a(I)V

    .line 326
    if-eqz v11, :cond_44d

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    invoke-virtual {v4, v11}, Lcom/rey/material/drawable/DividerDrawable;->a(Landroid/content/res/ColorStateList;)V

    .line 329
    :cond_44d
    if-ltz v12, :cond_3b0

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    invoke-virtual {v4, v12}, Lcom/rey/material/drawable/DividerDrawable;->b(I)V

    goto/16 :goto_3b0

    .line 333
    :cond_458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    if-eqz v4, :cond_3b0

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/rey/material/drawable/DividerDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 335
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    goto/16 :goto_3b0

    :cond_46d
    move-object v6, v11

    move v11, v8

    move-object v8, v7

    move v7, v12

    goto/16 :goto_40

    .line 197
    nop

    :pswitch_data_474
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_db
        :pswitch_e7
        :pswitch_f3
    .end packed-switch

    .line 308
    :array_480
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 839
    invoke-super {p0, p1}, Lcom/rey/material/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 840
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    if-eqz v0, :cond_c

    .line 841
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/DividerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 842
    :cond_c
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eqz v0, :cond_15

    .line 843
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {v0, p1}, Lcom/rey/material/drawable/ArrowDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 844
    :cond_15
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 848
    invoke-super {p0}, Lcom/rey/material/widget/FrameLayout;->drawableStateChanged()V

    .line 849
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eqz v0, :cond_10

    .line 850
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/drawable/ArrowDrawable;->setState([I)Z

    .line 851
    :cond_10
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    if-eqz v0, :cond_1d

    .line 852
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/drawable/DividerDrawable;->setState([I)Z

    .line 853
    :cond_1d
    return-void
.end method

.method public getBaseline()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 583
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->b()Landroid/view/View;

    move-result-object v1

    .line 585
    if-eqz v1, :cond_d

    .line 586
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 587
    if-gez v2, :cond_e

    .line 607
    :cond_d
    :goto_d
    return v0

    .line 590
    :cond_e
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingTop()I

    move-result v0

    .line 591
    iget-object v3, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-eqz v3, :cond_1d

    .line 592
    iget-object v3, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v3}, Lcom/rey/material/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 594
    :cond_1d
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->getDividerDrawableHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 596
    iget v4, p0, Lcom/rey/material/widget/Spinner;->s:I

    and-int/lit8 v4, v4, 0x70

    .line 597
    sparse-switch v4, :sswitch_data_48

    .line 603
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_d

    .line 599
    :sswitch_3e
    add-int/2addr v0, v2

    goto :goto_d

    .line 601
    :sswitch_40
    add-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_d

    .line 597
    :sswitch_data_48
    .sparse-switch
        0x30 -> :sswitch_3e
        0x50 -> :sswitch_40
    .end sparse-switch
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->c()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->d()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .prologue
    .line 540
    iget v0, p0, Lcom/rey/material/widget/Spinner;->k:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/rey/material/widget/Spinner;->u:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 612
    invoke-super {p0}, Lcom/rey/material/widget/FrameLayout;->onDetachedFromWindow()V

    .line 613
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 614
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->g()V

    .line 615
    :cond_14
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 635
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    .prologue
    .line 762
    sub-int v1, p4, p2

    .line 763
    sub-int v3, p5, p3

    .line 764
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->getArrowDrawableWidth()I

    move-result v2

    .line 766
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eqz v0, :cond_33

    .line 767
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingTop()I

    move-result v4

    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-nez v0, :cond_d3

    const/4 v0, 0x0

    :goto_15
    add-int/2addr v0, v4

    .line 768
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->getDividerDrawableHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 769
    iget-boolean v5, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v5, :cond_db

    .line 770
    iget-object v5, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v0, v7, v4}, Lcom/rey/material/drawable/ArrowDrawable;->setBounds(IIII)V

    .line 775
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    if-eqz v0, :cond_55

    .line 776
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/rey/material/widget/Spinner;->q:I

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingRight()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingBottom()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/rey/material/drawable/DividerDrawable;->setBounds(IIII)V

    .line 778
    :cond_55
    iget-boolean v0, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v0, :cond_f5

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v2

    .line 779
    :goto_5e
    iget-boolean v4, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v4, :cond_fb

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 780
    :goto_67
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingTop()I

    move-result v2

    .line 781
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingBottom()I

    move-result v4

    sub-int v4, v3, v4

    .line 783
    iget-object v3, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-eqz v3, :cond_94

    .line 784
    iget-boolean v3, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v3, :cond_103

    .line 785
    iget-object v3, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    iget-object v5, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v5}, Lcom/rey/material/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v6}, Lcom/rey/material/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v1, v6}, Lcom/rey/material/widget/TextView;->layout(IIII)V

    .line 788
    :goto_8d
    iget-object v3, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v3}, Lcom/rey/material/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 791
    :cond_94
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->b()Landroid/view/View;

    move-result-object v5

    .line 792
    if-eqz v5, :cond_d2

    .line 795
    iget v3, p0, Lcom/rey/material/widget/Spinner;->s:I

    and-int/lit8 v3, v3, 0x7

    .line 796
    const v6, 0x800003

    if-ne v3, v6, :cond_11a

    .line 797
    iget-boolean v3, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v3, :cond_118

    const/4 v3, 0x5

    .line 801
    :cond_a8
    :goto_a8
    packed-switch v3, :pswitch_data_14c

    .line 812
    :pswitch_ab
    sub-int/2addr v1, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 816
    :goto_b4
    :pswitch_b4
    iget v1, p0, Lcom/rey/material/widget/Spinner;->s:I

    and-int/lit8 v1, v1, 0x70

    .line 818
    sparse-switch v1, :sswitch_data_15a

    .line 829
    sub-int v1, v4, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 833
    :goto_c5
    :sswitch_c5
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v5, v0, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 835
    :cond_d2
    return-void

    .line 767
    :cond_d3
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0}, Lcom/rey/material/widget/TextView;->getMeasuredHeight()I

    move-result v0

    goto/16 :goto_15

    .line 772
    :cond_db
    iget-object v5, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v0, v7, v4}, Lcom/rey/material/drawable/ArrowDrawable;->setBounds(IIII)V

    goto/16 :goto_33

    .line 778
    :cond_f5
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingLeft()I

    move-result v0

    goto/16 :goto_5e

    .line 779
    :cond_fb
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    goto/16 :goto_67

    .line 787
    :cond_103
    iget-object v3, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    iget-object v5, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v5}, Lcom/rey/material/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v6}, Lcom/rey/material/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v0, v2, v5, v6}, Lcom/rey/material/widget/TextView;->layout(IIII)V

    goto/16 :goto_8d

    .line 797
    :cond_118
    const/4 v3, 0x3

    goto :goto_a8

    .line 798
    :cond_11a
    const v6, 0x800005

    if-ne v3, v6, :cond_a8

    .line 799
    iget-boolean v3, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v3, :cond_125

    const/4 v3, 0x3

    goto :goto_a8

    :cond_125
    const/4 v3, 0x5

    goto :goto_a8

    .line 806
    :pswitch_127
    sub-int/2addr v1, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 807
    goto :goto_b4

    .line 809
    :pswitch_131
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 810
    goto/16 :goto_b4

    .line 823
    :sswitch_139
    sub-int v1, v4, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 824
    goto :goto_c5

    .line 826
    :sswitch_144
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, v4, v1

    .line 827
    goto/16 :goto_c5

    .line 801
    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_127
        :pswitch_ab
        :pswitch_b4
        :pswitch_ab
        :pswitch_131
    .end packed-switch

    .line 818
    :sswitch_data_15a
    .sparse-switch
        0x10 -> :sswitch_139
        0x30 -> :sswitch_c5
        0x50 -> :sswitch_144
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 15

    .prologue
    .line 653
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 654
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 655
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 656
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 658
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->getArrowDrawableWidth()I

    move-result v1

    add-int v8, v0, v1

    .line 659
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->getDividerDrawableHeight()I

    move-result v1

    add-int v9, v0, v1

    .line 661
    const/4 v1, 0x0

    .line 662
    const/4 v0, 0x0

    .line 663
    iget-object v2, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v2}, Lcom/rey/material/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 664
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    sub-int v1, v5, v8

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/widget/TextView;->measure(II)V

    .line 665
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0}, Lcom/rey/material/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 666
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0}, Lcom/rey/material/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 669
    :cond_59
    const/4 v3, 0x0

    .line 670
    const/4 v2, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->b()Landroid/view/View;

    move-result-object v10

    .line 673
    if-eqz v10, :cond_8a

    .line 676
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 677
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    packed-switch v2, :pswitch_data_112

    .line 685
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 688
    :goto_72
    iget v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    packed-switch v11, :pswitch_data_11a

    .line 696
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 700
    :goto_7f
    invoke-virtual {v10, v2, v3}, Landroid/view/View;->measure(II)V

    .line 701
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 702
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 705
    :cond_8a
    iget v11, p0, Lcom/rey/material/widget/Spinner;->h:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v8

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 706
    iget v1, p0, Lcom/rey/material/widget/Spinner;->i:I

    add-int/2addr v2, v0

    add-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 708
    sparse-switch v6, :sswitch_data_122

    move v2, v3

    .line 717
    :goto_a1
    sparse-switch v7, :sswitch_data_12c

    .line 726
    :goto_a4
    invoke-virtual {p0, v2, v1}, Lcom/rey/material/widget/Spinner;->setMeasuredDimension(II)V

    .line 728
    if-eqz v10, :cond_d6

    .line 729
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 732
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    packed-switch v4, :pswitch_data_136

    .line 740
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 743
    :goto_b4
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    packed-switch v4, :pswitch_data_13e

    .line 751
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 755
    :goto_bb
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ne v1, v2, :cond_c7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_d6

    .line 756
    :cond_c7
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v1, v0}, Landroid/view/View;->measure(II)V

    .line 758
    :cond_d6
    return-void

    .line 679
    :pswitch_d7
    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_72

    .line 682
    :pswitch_de
    sub-int v2, v5, v8

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_72

    .line 690
    :pswitch_e5
    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_7f

    .line 693
    :pswitch_ec
    sub-int v3, v4, v9

    sub-int/2addr v3, v0

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_7f

    .line 710
    :sswitch_f4
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_a1

    :sswitch_f9
    move v2, v5

    .line 713
    goto :goto_a1

    .line 719
    :sswitch_fb
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_a4

    :sswitch_100
    move v1, v4

    .line 722
    goto :goto_a4

    .line 734
    :pswitch_102
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_b4

    .line 737
    :pswitch_107
    sub-int/2addr v2, v8

    .line 738
    goto :goto_b4

    .line 745
    :pswitch_109
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_bb

    .line 748
    :pswitch_10e
    sub-int v0, v1, v0

    sub-int/2addr v0, v9

    .line 749
    goto :goto_bb

    .line 677
    :pswitch_data_112
    .packed-switch -0x2
        :pswitch_d7
        :pswitch_de
    .end packed-switch

    .line 688
    :pswitch_data_11a
    .packed-switch -0x2
        :pswitch_e5
        :pswitch_ec
    .end packed-switch

    .line 708
    :sswitch_data_122
    .sparse-switch
        -0x80000000 -> :sswitch_f4
        0x40000000 -> :sswitch_f9
    .end sparse-switch

    .line 717
    :sswitch_data_12c
    .sparse-switch
        -0x80000000 -> :sswitch_fb
        0x40000000 -> :sswitch_100
    .end sparse-switch

    .line 732
    :pswitch_data_136
    .packed-switch -0x2
        :pswitch_102
        :pswitch_107
    .end packed-switch

    .line 743
    :pswitch_data_13e
    .packed-switch -0x2
        :pswitch_109
        :pswitch_10e
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .prologue
    .line 1027
    check-cast p1, Lcom/rey/material/widget/Spinner$SavedState;

    .line 1029
    invoke-virtual {p1}, Lcom/rey/material/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/rey/material/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1031
    iget v0, p1, Lcom/rey/material/widget/Spinner$SavedState;->a:I

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->setSelection(I)V

    .line 1033
    iget-boolean v0, p1, Lcom/rey/material/widget/Spinner$SavedState;->b:Z

    if-eqz v0, :cond_20

    .line 1034
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1035
    if-eqz v0, :cond_20

    .line 1036
    new-instance v1, Lcom/rey/material/widget/Spinner$3;

    invoke-direct {v1, p0}, Lcom/rey/material/widget/Spinner$3;-><init>(Lcom/rey/material/widget/Spinner;)V

    .line 1045
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1048
    :cond_20
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 358
    if-ne p1, v0, :cond_21

    .line 359
    :goto_3
    iget-boolean v1, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eq v1, v0, :cond_20

    .line 360
    iput-boolean v0, p0, Lcom/rey/material/widget/Spinner;->z:Z

    .line 362
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    if-eqz v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1d

    .line 363
    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->d:Lcom/rey/material/widget/TextView;

    iget-boolean v0, p0, Lcom/rey/material/widget/Spinner;->z:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x4

    :goto_1a
    invoke-virtual {v1, v0}, Lcom/rey/material/widget/TextView;->setTextDirection(I)V

    .line 365
    :cond_1d
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->requestLayout()V

    .line 367
    :cond_20
    return-void

    .line 358
    :cond_21
    const/4 v0, 0x0

    goto :goto_3

    .line 363
    :cond_23
    const/4 v0, 0x3

    goto :goto_1a
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1018
    invoke-super {p0}, Lcom/rey/material/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1019
    new-instance v1, Lcom/rey/material/widget/Spinner$SavedState;

    invoke-direct {v1, v0}, Lcom/rey/material/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1020
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/rey/material/widget/Spinner$SavedState;->a:I

    .line 1021
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->i()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, v1, Lcom/rey/material/widget/Spinner$SavedState;->b:Z

    .line 1022
    return-object v1

    .line 1021
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->d(I)V

    .line 500
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->j:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->e(I)V

    .line 478
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 2

    .prologue
    .line 525
    iput p1, p0, Lcom/rey/material/widget/Spinner;->k:I

    .line 526
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/rey/material/widget/FrameLayout;->setEnabled(Z)V

    .line 546
    iget-boolean v0, p0, Lcom/rey/material/widget/Spinner;->t:Z

    if-eqz v0, :cond_18

    .line 547
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getChildCount()I

    move-result v1

    .line 548
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_18

    .line 549
    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 551
    :cond_18
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    .prologue
    .line 573
    iget v0, p0, Lcom/rey/material/widget/Spinner;->s:I

    if-eq v0, p1, :cond_11

    .line 574
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_c

    .line 575
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 576
    :cond_c
    iput p1, p0, Lcom/rey/material/widget/Spinner;->s:I

    .line 577
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->requestLayout()V

    .line 579
    :cond_11
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    .prologue
    .line 555
    iput p1, p0, Lcom/rey/material/widget/Spinner;->i:I

    .line 556
    invoke-super {p0, p1}, Lcom/rey/material/widget/FrameLayout;->setMinimumHeight(I)V

    .line 557
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    .prologue
    .line 561
    iput p1, p0, Lcom/rey/material/widget/Spinner;->h:I

    .line 562
    invoke-super {p0, p1}, Lcom/rey/material/widget/FrameLayout;->setMinimumWidth(I)V

    .line 563
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner;->a(Landroid/graphics/drawable/Drawable;)V

    .line 456
    return-void
.end method

.method public setSelection(I)V
    .registers 8

    .prologue
    .line 382
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_3a

    .line 383
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 385
    :goto_15
    iget v0, p0, Lcom/rey/material/widget/Spinner;->u:I

    if-eq v0, v3, :cond_32

    .line 386
    iput v3, p0, Lcom/rey/material/widget/Spinner;->u:I

    .line 388
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->g:Lcom/rey/material/widget/Spinner$OnItemSelectedListener;

    if-eqz v0, :cond_2f

    .line 389
    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->g:Lcom/rey/material/widget/Spinner$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner;->b()Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_33

    const-wide/16 v4, -0x1

    :goto_2b
    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/rey/material/widget/Spinner$OnItemSelectedListener;->a(Lcom/rey/material/widget/Spinner;Landroid/view/View;IJ)V

    .line 391
    :cond_2f
    invoke-direct {p0}, Lcom/rey/material/widget/Spinner;->e()V

    .line 393
    :cond_32
    return-void

    .line 389
    :cond_33
    iget-object v1, p0, Lcom/rey/material/widget/Spinner;->e:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    goto :goto_2b

    :cond_3a
    move v3, p1

    goto :goto_15
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 640
    invoke-super {p0, p1}, Lcom/rey/material/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->l:Lcom/rey/material/drawable/ArrowDrawable;

    if-eq v0, p1, :cond_e

    iget-object v0, p0, Lcom/rey/material/widget/Spinner;->p:Lcom/rey/material/drawable/DividerDrawable;

    if-ne v0, p1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
