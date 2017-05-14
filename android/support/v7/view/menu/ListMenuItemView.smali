.class public Landroid/support/v7/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# instance fields
.field private a:Landroid/support/v7/view/menu/MenuItemImpl;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:Landroid/content/Context;

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:Landroid/view/LayoutInflater;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 63
    sget v0, Landroid/support/v7/appcompat/R$attr;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuView:[I

    invoke-static {v0, p2, v1, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 72
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->h:Landroid/graphics/drawable/Drawable;

    .line 73
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->i:I

    .line 75
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->k:Z

    .line 77
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->j:Landroid/content/Context;

    .line 78
    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuView_subMenuArrow:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->l:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 81
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->d()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 257
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_icon:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 259
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 260
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->d()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 264
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_radio:I

    const/4 v2, 0x0

    .line 265
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 267
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->d()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 272
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_checkbox:I

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 275
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method private d()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->n:Landroid/view/LayoutInflater;

    if-nez v0, :cond_e

    .line 288
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->n:Landroid/view/LayoutInflater;

    .line 290
    :cond_e
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->n:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private setSubMenuArrowVisible(Z)V
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 200
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    :cond_c
    return-void

    .line 200
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->i()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->o:Z

    if-eqz v0, :cond_15

    :cond_d
    const/4 v0, 0x1

    .line 219
    :goto_e
    if-nez v0, :cond_17

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->k:Z

    if-nez v2, :cond_17

    .line 240
    :cond_14
    :goto_14
    return-void

    :cond_15
    move v0, v1

    .line 218
    goto :goto_e

    .line 223
    :cond_17
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_21

    if-nez p1, :cond_21

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->k:Z

    if-eqz v2, :cond_14

    .line 227
    :cond_21
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_28

    .line 228
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->a()V

    .line 231
    :cond_28
    if-nez p1, :cond_2e

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->k:Z

    if-eqz v2, :cond_45

    .line 232
    :cond_2e
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_43

    :goto_32
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    .line 235
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 232
    :cond_43
    const/4 p1, 0x0

    goto :goto_32

    .line 238
    :cond_45
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 121
    if-eqz p1, :cond_18

    .line 122
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_17
    :goto_17
    return-void

    .line 126
    :cond_18
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_17
.end method

.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .registers 5

    .prologue
    .line 103
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 104
    iput p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->m:I

    .line 106
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 108
    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->a(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->f()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->d()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 114
    return-void

    .line 106
    :cond_3d
    const/16 v0, 0x8

    goto :goto_b
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 90
    iget v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 91
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->j:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    :cond_20
    sget v0, Landroid/support/v7/appcompat/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 96
    sget v0, Landroid/support/v7/appcompat/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    .line 98
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_3f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->k:Z

    if-eqz v0, :cond_20

    .line 246
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 247
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_20

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_20

    .line 249
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 252
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 253
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 7

    .prologue
    const/16 v1, 0x8

    .line 135
    if-nez p1, :cond_d

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_d

    .line 178
    :cond_c
    :goto_c
    return-void

    .line 144
    :cond_d
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 145
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_1c

    .line 146
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->b()V

    .line 148
    :cond_1c
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 149
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    move-object v3, v2

    move-object v2, v0

    .line 158
    :goto_22
    if-eqz p1, :cond_55

    .line 159
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 161
    if-eqz p1, :cond_53

    const/4 v0, 0x0

    .line 162
    :goto_30
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_39

    .line 163
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 167
    :cond_39
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 168
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_c

    .line 151
    :cond_45
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_4c

    .line 152
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->c()V

    .line 154
    :cond_4c
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 155
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    move-object v3, v2

    move-object v2, v0

    goto :goto_22

    :cond_53
    move v0, v1

    .line 161
    goto :goto_30

    .line 171
    :cond_55
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5e

    .line 172
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 174
    :cond_5e
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_c
.end method

.method public setChecked(Z)V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 184
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_f

    .line 185
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->b()V

    .line 187
    :cond_f
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 195
    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 196
    return-void

    .line 189
    :cond_15
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_1c

    .line 190
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->c()V

    .line 192
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    goto :goto_11
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->o:Z

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->k:Z

    .line 118
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 6

    .prologue
    .line 205
    if-eqz p1, :cond_26

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 208
    :goto_b
    if-nez v0, :cond_18

    .line 209
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_18
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_25

    .line 213
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :cond_25
    return-void

    .line 205
    :cond_26
    const/16 v0, 0x8

    goto :goto_b
.end method
