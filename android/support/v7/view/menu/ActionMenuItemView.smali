.class public Landroid/support/v7/view/menu/ActionMenuItemView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/support/v7/view/menu/MenuItemImpl;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

.field private e:Landroid/support/v7/widget/ForwardingListener;

.field private f:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->g:Z

    .line 79
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 81
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->i:I

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 86
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->k:I

    .line 88
    invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->j:I

    .line 92
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    .line 93
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->f:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->d:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method private b()Z
    .registers 6

    .prologue
    const/16 v4, 0x1e0

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->b(Landroid/content/res/Resources;)I

    move-result v1

    .line 109
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper;->a(Landroid/content/res/Resources;)I

    move-result v2

    .line 111
    if-ge v1, v4, :cond_2b

    const/16 v3, 0x280

    if-lt v1, v3, :cond_26

    if-ge v2, v4, :cond_2b

    :cond_26
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method static synthetic c(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    .line 188
    :goto_b
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 189
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->m()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->g:Z

    if-nez v3, :cond_1f

    iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->h:Z

    if-eqz v3, :cond_20

    :cond_1f
    move v2, v1

    :cond_20
    and-int/2addr v0, v2

    .line 191
    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    :goto_25
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void

    :cond_29
    move v0, v2

    .line 187
    goto :goto_b

    .line 191
    :cond_2b
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 195
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    .line 196
    if-eqz p1, :cond_2d

    .line 197
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 198
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 199
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->k:I

    if-le v1, v2, :cond_1c

    .line 200
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->k:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 201
    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->k:I

    .line 202
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 204
    :cond_1c
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->k:I

    if-le v0, v2, :cond_2a

    .line 205
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->k:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 206
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->k:I

    .line 207
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 209
    :cond_2a
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    :cond_2d
    invoke-virtual {p0, p1, v3, v3, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->c()V

    .line 214
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->f:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    .line 163
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->d:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    .line 159
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 225
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->c()V

    .line 229
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .registers 4

    .prologue
    .line 126
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 128
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setId(I)V

    .line 132
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 133
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 134
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 135
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/ForwardingListener;

    if-nez v0, :cond_39

    .line 136
    new-instance v0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/ForwardingListener;

    .line 139
    :cond_39
    return-void

    .line 132
    :cond_3a
    const/16 v0, 0x8

    goto :goto_1e
.end method

.method public needsDividerAfter()Z
    .registers 2

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->d:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_b

    .line 153
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->d:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 155
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->g:Z

    .line 99
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->c()V

    .line 100
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 274
    :goto_9
    return v0

    .line 250
    :cond_a
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 251
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 252
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 253
    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 256
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWidth()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getHeight()I

    move-result v6

    .line 258
    aget v7, v3, v2

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    .line 259
    aget v8, v3, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v8

    .line 260
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v8

    if-nez v8, :cond_40

    .line 261
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 262
    sub-int v0, v8, v0

    .line 264
    :cond_40
    iget-object v8, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v5, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 265
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_61

    .line 267
    const v1, 0x800035

    aget v3, v3, v2

    add-int/2addr v3, v6

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v5, v1, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 273
    :goto_5c
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 274
    goto :goto_9

    .line 271
    :cond_61
    const/16 v0, 0x51

    invoke-virtual {v5, v0, v1, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_5c
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a()Z

    move-result v1

    .line 280
    if-eqz v1, :cond_1d

    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->j:I

    if-ltz v0, :cond_1d

    .line 281
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->j:I

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    .line 281
    invoke-super {p0, v0, v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 285
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 287
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 288
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 289
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 290
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_6c

    iget v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->i:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 293
    :goto_36
    if-eq v2, v5, :cond_45

    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->i:I

    if-lez v2, :cond_45

    if-ge v3, v0, :cond_45

    .line 295
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 299
    :cond_45
    if-nez v1, :cond_6b

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6b

    .line 302
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .line 303
    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 304
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 306
    :cond_6b
    return-void

    .line 290
    :cond_6c
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->i:I

    goto :goto_36
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 344
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/ForwardingListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/ForwardingListener;

    .line 144
    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    .prologue
    .line 171
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .prologue
    .line 175
    return-void
.end method

.method public setExpandedFormat(Z)V
    .registers 3

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->h:Z

    if-eq v0, p1, :cond_f

    .line 179
    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->h:Z

    .line 180
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_f

    .line 181
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->h()V

    .line 184
    :cond_f
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    .prologue
    .line 117
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->j:I

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 119
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    .prologue
    .line 222
    return-void
.end method
