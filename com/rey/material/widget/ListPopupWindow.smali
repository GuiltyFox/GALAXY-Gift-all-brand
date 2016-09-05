.class public Lcom/rey/material/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# static fields
.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private final A:Lcom/rey/material/widget/ListPopupWindow$ListSelectorHider;

.field private B:Ljava/lang/Runnable;

.field private C:Landroid/os/Handler;

.field private D:Landroid/graphics/Rect;

.field private E:Z

.field private F:I

.field a:I

.field private c:Landroid/content/Context;

.field private d:Lcom/rey/material/widget/PopupWindow;

.field private e:Landroid/widget/ListAdapter;

.field private f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Landroid/view/View;

.field private r:I

.field private s:Landroid/database/DataSetObserver;

.field private t:Landroid/view/View;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;

.field private w:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final x:Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

.field private final y:Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;

.field private final z:Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 78
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/rey/material/widget/ListPopupWindow;->b:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_14

    .line 83
    :goto_13
    return-void

    .line 80
    :catch_14
    move-exception v0

    .line 81
    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    .line 91
    iput v0, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    .line 99
    iput v2, p0, Lcom/rey/material/widget/ListPopupWindow;->n:I

    .line 101
    iput-boolean v2, p0, Lcom/rey/material/widget/ListPopupWindow;->o:Z

    .line 102
    iput-boolean v2, p0, Lcom/rey/material/widget/ListPopupWindow;->p:Z

    .line 103
    const v0, 0x7fffffff

    iput v0, p0, Lcom/rey/material/widget/ListPopupWindow;->a:I

    .line 106
    iput v2, p0, Lcom/rey/material/widget/ListPopupWindow;->r:I

    .line 117
    new-instance v0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->x:Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    .line 118
    new-instance v0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->y:Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 119
    new-instance v0, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;-><init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->z:Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;

    .line 120
    new-instance v0, Lcom/rey/material/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/ListPopupWindow$ListSelectorHider;-><init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->A:Lcom/rey/material/widget/ListPopupWindow$ListSelectorHider;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->C:Landroid/os/Handler;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    .line 229
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    .line 231
    sget-object v0, Lcom/rey/material/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    sget v1, Lcom/rey/material/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/ListPopupWindow;->i:I

    .line 235
    sget v1, Lcom/rey/material/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    .line 237
    iget v1, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    if-eqz v1, :cond_60

    .line 238
    iput-boolean v3, p0, Lcom/rey/material/widget/ListPopupWindow;->k:Z

    .line 240
    :cond_60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    new-instance v0, Lcom/rey/material/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lcom/rey/material/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    .line 243
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/rey/material/widget/PopupWindow;->setInputMethodMode(I)V

    .line 246
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 247
    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->a(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/ListPopupWindow;->F:I

    .line 248
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 1066
    const/4 v0, 0x0

    .line 1067
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1068
    if-lez v1, :cond_1d

    .line 1069
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1071
    :cond_1d
    return v0
.end method

.method static synthetic a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private b(Z)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1812
    sget-object v0, Lcom/rey/material/widget/ListPopupWindow;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 1814
    :try_start_5
    sget-object v0, Lcom/rey/material/widget/ListPopupWindow;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    .line 1821
    :cond_16
    :goto_16
    return-void

    .line 1815
    :catch_17
    move-exception v0

    .line 1816
    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1818
    :cond_22
    if-eqz p1, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_16

    .line 1819
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/rey/material/widget/PopupWindow;->setClippingEnabled(Z)V

    goto :goto_16
.end method

.method static synthetic c(Lcom/rey/material/widget/ListPopupWindow;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/rey/material/widget/ListPopupWindow;)I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->l:I

    return v0
.end method

.method static synthetic e(Lcom/rey/material/widget/ListPopupWindow;)I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->m:I

    return v0
.end method

.method static synthetic f(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->x:Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic g(Lcom/rey/material/widget/ListPopupWindow;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->C:Landroid/os/Handler;

    return-object v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->q:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 709
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 710
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    .line 711
    check-cast v0, Landroid/view/ViewGroup;

    .line 712
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 715
    :cond_15
    return-void
.end method

.method private m()I
    .registers 11

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1081
    .line 1083
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    if-nez v0, :cond_125

    .line 1085
    iget-object v5, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    .line 1093
    new-instance v0, Lcom/rey/material/widget/ListPopupWindow$3;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/ListPopupWindow$3;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->B:Ljava/lang/Runnable;

    .line 1103
    new-instance v4, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow;->E:Z

    if-nez v0, :cond_112

    move v0, v1

    :goto_1b
    invoke-direct {v4, v5, v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    .line 1104
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2b

    .line 1105
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1107
    :cond_2b
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1108
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1109
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1110
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1111
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    new-instance v4, Lcom/rey/material/widget/ListPopupWindow$4;

    invoke-direct {v4, p0}, Lcom/rey/material/widget/ListPopupWindow$4;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1127
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->z:Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1129
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->w:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_5f

    .line 1130
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->w:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1133
    :cond_5f
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    .line 1135
    iget-object v6, p0, Lcom/rey/material/widget/ListPopupWindow;->q:Landroid/view/View;

    .line 1136
    if-eqz v6, :cond_19a

    .line 1139
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1140
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1146
    iget v5, p0, Lcom/rey/material/widget/ListPopupWindow;->r:I

    packed-switch v5, :pswitch_data_19e

    .line 1158
    const-string/jumbo v0, "ListPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid hint position "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/rey/material/widget/ListPopupWindow;->r:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :goto_95
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1166
    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1168
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1169
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    move v1, v0

    move-object v0, v4

    .line 1175
    :goto_b0
    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v4, v0}, Lcom/rey/material/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v1

    .line 1190
    :goto_b6
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_13c

    .line 1192
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1193
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 1197
    iget-boolean v1, p0, Lcom/rey/material/widget/ListPopupWindow;->k:Z

    if-nez v1, :cond_194

    .line 1198
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    move v7, v0

    .line 1205
    :goto_d8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_191

    .line 1207
    const-string/jumbo v0, "status_bar_height"

    invoke-direct {p0, v0}, Lcom/rey/material/widget/ListPopupWindow;->a(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "navigation_bar_height"

    invoke-direct {p0, v1}, Lcom/rey/material/widget/ListPopupWindow;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1214
    :goto_f0
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v1}, Lcom/rey/material/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_f9

    .line 1216
    :cond_f9
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/rey/material/widget/ListPopupWindow;->b()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    invoke-virtual {v1, v4, v5}, Lcom/rey/material/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v1

    sub-int v4, v1, v0

    .line 1220
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow;->o:Z

    if-nez v0, :cond_10f

    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    if-ne v0, v3, :cond_143

    .line 1221
    :cond_10f
    add-int v0, v4, v7

    .line 1249
    :goto_111
    return v0

    :cond_112
    move v0, v2

    .line 1103
    goto/16 :goto_1b

    .line 1148
    :pswitch_115
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_95

    .line 1153
    :pswitch_11d
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1154
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_95

    .line 1178
    :cond_125
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->q:Landroid/view/View;

    .line 1179
    if-eqz v1, :cond_197

    .line 1180
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1182
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    move v6, v1

    goto/16 :goto_b6

    .line 1201
    :cond_13c
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    goto :goto_d8

    .line 1225
    :cond_143
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    packed-switch v0, :pswitch_data_1a6

    .line 1239
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1243
    :goto_14e
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    sub-int/2addr v4, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v0

    .line 1247
    if-lez v0, :cond_159

    add-int/2addr v6, v7

    .line 1249
    :cond_159
    add-int/2addr v0, v6

    goto :goto_111

    .line 1227
    :pswitch_15b
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_14e

    .line 1233
    :pswitch_176
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_14e

    :cond_191
    move v0, v2

    goto/16 :goto_f0

    :cond_194
    move v7, v0

    goto/16 :goto_d8

    :cond_197
    move v6, v2

    goto/16 :goto_b6

    :cond_19a
    move v1, v2

    goto/16 :goto_b0

    .line 1146
    nop

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_11d
        :pswitch_115
    .end packed-switch

    .line 1225
    :pswitch_data_1a6
    .packed-switch -0x2
        :pswitch_15b
        :pswitch_176
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 251
    iput p1, p0, Lcom/rey/material/widget/ListPopupWindow;->l:I

    .line 252
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow;->t:Landroid/view/View;

    .line 437
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->s:Landroid/database/DataSetObserver;

    if-nez v0, :cond_23

    .line 274
    new-instance v0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->s:Landroid/database/DataSetObserver;

    .line 278
    :cond_c
    :goto_c
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow;->e:Landroid/widget/ListAdapter;

    .line 279
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_17

    .line 280
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->s:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 283
    :cond_17
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_22

    .line 284
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    :cond_22
    return-void

    .line 275
    :cond_23
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 276
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->e:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->s:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_c
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 705
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/rey/material/widget/ListPopupWindow;->E:Z

    .line 322
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/PopupWindow;->setFocusable(Z)V

    .line 323
    return-void
.end method

.method public b()Landroid/view/View;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->t:Landroid/view/View;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 255
    iput p1, p0, Lcom/rey/material/widget/ListPopupWindow;->m:I

    .line 256
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 443
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->i:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 298
    iput p1, p0, Lcom/rey/material/widget/ListPopupWindow;->r:I

    .line 299
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow;->k:Z

    if-nez v0, :cond_6

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    goto :goto_5
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 452
    iput p1, p0, Lcom/rey/material/widget/ListPopupWindow;->i:I

    .line 453
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 489
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    return v0
.end method

.method public e(I)V
    .registers 3

    .prologue
    .line 471
    iput p1, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow;->k:Z

    .line 473
    return-void
.end method

.method public f()V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 585
    invoke-direct {p0}, Lcom/rey/material/widget/ListPopupWindow;->m()I

    move-result v5

    .line 590
    invoke-virtual {p0}, Lcom/rey/material/widget/ListPopupWindow;->j()Z

    move-result v2

    .line 592
    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v4}, Lcom/rey/material/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 593
    iget v4, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    if-ne v4, v0, :cond_46

    move v4, v0

    .line 603
    :goto_19
    iget v6, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    if-ne v6, v0, :cond_67

    .line 606
    if-eqz v2, :cond_56

    .line 607
    :goto_1f
    if-eqz v2, :cond_5a

    .line 608
    iget-object v2, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    iget v6, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    if-ne v6, v0, :cond_58

    :goto_27
    invoke-virtual {v2, v0, v1}, Lcom/rey/material/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 623
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/rey/material/widget/ListPopupWindow;->p:Z

    if-nez v2, :cond_35

    iget-boolean v2, p0, Lcom/rey/material/widget/ListPopupWindow;->o:Z

    if-nez v2, :cond_35

    move v1, v3

    :cond_35
    invoke-virtual {v0, v1}, Lcom/rey/material/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 625
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/rey/material/widget/ListPopupWindow;->b()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/rey/material/widget/ListPopupWindow;->i:I

    iget v3, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 685
    :cond_45
    :goto_45
    return-void

    .line 597
    :cond_46
    iget v4, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    if-ne v4, v7, :cond_53

    .line 598
    invoke-virtual {p0}, Lcom/rey/material/widget/ListPopupWindow;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_19

    .line 600
    :cond_53
    iget v4, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    goto :goto_19

    :cond_56
    move v5, v0

    .line 606
    goto :goto_1f

    :cond_58
    move v0, v1

    .line 608
    goto :goto_27

    .line 612
    :cond_5a
    iget-object v6, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    iget v2, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    if-ne v2, v0, :cond_65

    move v2, v0

    :goto_61
    invoke-virtual {v6, v2, v0}, Lcom/rey/material/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_2a

    :cond_65
    move v2, v1

    goto :goto_61

    .line 617
    :cond_67
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    if-eq v0, v7, :cond_2a

    .line 620
    iget v5, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    goto :goto_2a

    .line 628
    :cond_6e
    iget v2, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    if-ne v2, v0, :cond_da

    move v2, v0

    .line 638
    :goto_73
    iget v4, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    if-ne v4, v0, :cond_f7

    move v4, v0

    .line 648
    :goto_78
    iget-object v5, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v5, v2, v4}, Lcom/rey/material/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 649
    invoke-direct {p0, v3}, Lcom/rey/material/widget/ListPopupWindow;->b(Z)V

    .line 653
    iget-object v2, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    iget-boolean v4, p0, Lcom/rey/material/widget/ListPopupWindow;->p:Z

    if-nez v4, :cond_10d

    iget-boolean v4, p0, Lcom/rey/material/widget/ListPopupWindow;->o:Z

    if-nez v4, :cond_10d

    :goto_8a
    invoke-virtual {v2, v3}, Lcom/rey/material/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 654
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    iget-object v2, p0, Lcom/rey/material/widget/ListPopupWindow;->y:Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v1, v2}, Lcom/rey/material/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 655
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/rey/material/widget/ListPopupWindow;->b()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/rey/material/widget/ListPopupWindow;->i:I

    iget v4, p0, Lcom/rey/material/widget/ListPopupWindow;->j:I

    iget v5, p0, Lcom/rey/material/widget/ListPopupWindow;->n:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/widget/PopupWindowCompat;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 657
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 659
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow;->E:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 660
    :cond_b4
    invoke-virtual {p0}, Lcom/rey/material/widget/ListPopupWindow;->h()V

    .line 662
    :cond_b7
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow;->E:Z

    if-nez v0, :cond_c2

    .line 663
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->A:Lcom/rey/material/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    :cond_c2
    iget v0, p0, Lcom/rey/material/widget/ListPopupWindow;->l:I

    if-eqz v0, :cond_45

    .line 668
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/rey/material/widget/ListPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/rey/material/widget/ListPopupWindow$1;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_45

    .line 631
    :cond_da
    iget v2, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    if-ne v2, v7, :cond_ed

    .line 632
    iget-object v2, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/rey/material/widget/ListPopupWindow;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/rey/material/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_73

    .line 634
    :cond_ed
    iget-object v2, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    iget v4, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    invoke-virtual {v2, v4}, Lcom/rey/material/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto/16 :goto_73

    .line 641
    :cond_f7
    iget v4, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    if-ne v4, v7, :cond_103

    .line 642
    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v4, v5}, Lcom/rey/material/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto/16 :goto_78

    .line 644
    :cond_103
    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    iget v5, p0, Lcom/rey/material/widget/ListPopupWindow;->g:I

    invoke-virtual {v4, v5}, Lcom/rey/material/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto/16 :goto_78

    :cond_10d
    move v3, v1

    .line 653
    goto/16 :goto_8a
.end method

.method public f(I)V
    .registers 2

    .prologue
    .line 499
    iput p1, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    .line 500
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->dismiss()V

    .line 692
    invoke-direct {p0}, Lcom/rey/material/widget/ListPopupWindow;->l()V

    .line 693
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 694
    iput-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    .line 695
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->x:Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public g(I)V
    .registers 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_1a

    .line 511
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 512
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow;->D:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/rey/material/widget/ListPopupWindow;->h:I

    .line 516
    :goto_19
    return-void

    .line 514
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/rey/material/widget/ListPopupWindow;->f(I)V

    goto :goto_19
.end method

.method public h()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    .line 768
    if-eqz v0, :cond_b

    .line 770
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->a(Lcom/rey/material/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 772
    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 774
    :cond_b
    return-void
.end method

.method public h(I)V
    .registers 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/PopupWindow;->setInputMethodMode(I)V

    .line 731
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->d:Lcom/rey/material/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public k()Lcom/rey/material/widget/ListView;
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow;->f:Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method
