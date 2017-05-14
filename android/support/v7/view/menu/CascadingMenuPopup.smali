.class final Landroid/support/v7/view/menu/CascadingMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final j:Landroid/support/v7/widget/MenuItemHoverListener;

.field private k:I

.field private l:I

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private w:Landroid/view/ViewTreeObserver;

.field private x:Landroid/widget/PopupWindow$OnDismissListener;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->g:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 115
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$2;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->j:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 175
    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->k:I

    .line 176
    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->l:I

    .line 200
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->a:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    .line 202
    iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->c:I

    .line 203
    iput p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->d:I

    .line 204
    iput-boolean p5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->e:Z

    .line 206
    iput-boolean v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->t:Z

    .line 207
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->d()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->o:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 211
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 210
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->b:I

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->f:Landroid/os/Handler;

    .line 214
    return-void
.end method

.method private a(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .registers 7

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1d

    .line 457
    invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_19

    .line 463
    :goto_18
    return-object v0

    .line 456
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 463
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private a(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 477
    iget-object v0, p1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v5

    .line 478
    if-nez v5, :cond_d

    move-object v0, v3

    .line 520
    :goto_c
    return-object v0

    .line 486
    :cond_d
    invoke-virtual {p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a()Landroid/widget/ListView;

    move-result-object v6

    .line 487
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 488
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_36

    .line 489
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 490
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    .line 491
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuAdapter;

    .line 499
    :goto_25
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v7

    :goto_29
    if-ge v2, v7, :cond_52

    .line 500
    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuAdapter;->a(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    if-ne v5, v8, :cond_3a

    move v0, v2

    .line 505
    :goto_32
    if-ne v0, v4, :cond_3d

    move-object v0, v3

    .line 507
    goto :goto_c

    .line 494
    :cond_36
    check-cast v0, Landroid/support/v7/view/menu/MenuAdapter;

    move v1, v2

    goto :goto_25

    .line 499
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 511
    :cond_3d
    add-int/2addr v0, v1

    .line 514
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 515
    if-ltz v0, :cond_4b

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_4d

    :cond_4b
    move-object v0, v3

    .line 517
    goto :goto_c

    .line 520
    :cond_4d
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :cond_52
    move v0, v4

    goto :goto_32
.end method

.method static synthetic a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/CascadingMenuPopup;Z)Z
    .registers 2

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->y:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/View;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private c()Landroid/support/v7/widget/MenuPopupWindow;
    .registers 6

    .prologue
    .line 222
    new-instance v0, Landroid/support/v7/widget/MenuPopupWindow;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->c:I

    iget v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 224
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->j:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V

    .line 225
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 227
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 228
    iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->l:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    .line 230
    return-object v0
.end method

.method private c(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 345
    new-instance v0, Landroid/support/v7/view/menu/MenuAdapter;

    iget-boolean v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->e:Z

    invoke-direct {v0, p1, v6, v3}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v3

    if-nez v3, :cond_cc

    iget-boolean v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->t:Z

    if-eqz v3, :cond_cc

    .line 353
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuAdapter;->a(Z)V

    .line 360
    :cond_1d
    :goto_1d
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->a:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->b:I

    invoke-static {v0, v4, v3, v5}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    .line 361
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->c()Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v8

    .line 362
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 363
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 364
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->l:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 368
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_db

    .line 369
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 370
    invoke-direct {p0, v0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v3

    move-object v5, v0

    .line 376
    :goto_51
    if-eqz v3, :cond_f3

    .line 378
    invoke-virtual {v8, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 379
    invoke-virtual {v8, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 381
    invoke-direct {p0, v7}, Landroid/support/v7/view/menu/CascadingMenuPopup;->d(I)I

    move-result v9

    .line 382
    if-ne v9, v1, :cond_df

    move v0, v1

    .line 383
    :goto_60
    iput v9, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->o:I

    .line 385
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 389
    invoke-virtual {v3, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 390
    iget-object v10, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v10}, Landroid/support/v7/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v10

    aget v11, v9, v2

    add-int/2addr v10, v11

    .line 391
    iget-object v11, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v11}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v11

    aget v1, v9, v1

    add-int/2addr v1, v11

    .line 396
    iget v9, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->l:I

    and-int/lit8 v9, v9, 0x5

    const/4 v11, 0x5

    if-ne v9, v11, :cond_e8

    .line 397
    if-eqz v0, :cond_e1

    .line 398
    add-int v0, v10, v7

    .line 410
    :goto_85
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 413
    invoke-virtual {v8, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 425
    :goto_8b
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->o:I

    invoke-direct {v0, v8, p1, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V

    .line 426
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 431
    if-nez v5, :cond_cb

    iget-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->u:Z

    if-eqz v0, :cond_cb

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_cb

    .line 432
    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 433
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v6, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 435
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 437
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v3, v0, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 441
    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 443
    :cond_cb
    return-void

    .line 354
    :cond_cc
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 356
    invoke-static {p1}, Landroid/support/v7/view/menu/MenuPopup;->b(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuAdapter;->a(Z)V

    goto/16 :goto_1d

    :cond_db
    move-object v3, v4

    move-object v5, v4

    .line 373
    goto/16 :goto_51

    :cond_df
    move v0, v2

    .line 382
    goto :goto_60

    .line 400
    :cond_e1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v10, v0

    goto :goto_85

    .line 403
    :cond_e8
    if-eqz v0, :cond_f0

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v10

    goto :goto_85

    .line 406
    :cond_f0
    sub-int v0, v10, v7

    goto :goto_85

    .line 415
    :cond_f3
    iget-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->p:Z

    if-eqz v0, :cond_fc

    .line 416
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->r:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 418
    :cond_fc
    iget-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->q:Z

    if-eqz v0, :cond_105

    .line 419
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->s:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 421
    :cond_105
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 422
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_8b
.end method

.method private d()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v1

    .line 291
    if-ne v1, v0, :cond_a

    const/4 v0, 0x0

    :cond_a
    return v0
.end method

.method private d(I)I
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a()Landroid/widget/ListView;

    move-result-object v0

    .line 306
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 307
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 309
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 310
    iget-object v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->n:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 312
    iget v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->o:I

    if-ne v5, v2, :cond_3a

    .line 313
    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 314
    iget v3, v4, Landroid/graphics/Rect;->right:I

    if-le v0, v3, :cond_38

    move v0, v1

    .line 323
    :goto_37
    return v0

    :cond_38
    move v0, v2

    .line 317
    goto :goto_37

    .line 319
    :cond_3a
    aget v0, v3, v1

    sub-int/2addr v0, p1

    .line 320
    if-gez v0, :cond_41

    move v0, v2

    .line 321
    goto :goto_37

    :cond_41
    move v0, v1

    .line 323
    goto :goto_37
.end method

.method private d(Landroid/support/v7/view/menu/MenuBuilder;)I
    .registers 5

    .prologue
    .line 595
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_1a

    .line 596
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 597
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_17

    move v0, v1

    .line 602
    :goto_16
    return v0

    .line 595
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 602
    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 680
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->k:I

    if-eq v0, p1, :cond_12

    .line 681
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->k:I

    .line 682
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    .line 683
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 682
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->l:I

    .line 685
    :cond_12
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->a:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 332
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->c(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 336
    :goto_e
    return-void

    .line 334
    :cond_f
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    if-eq v0, p1, :cond_14

    .line 690
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    .line 693
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->k:I

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    .line 694
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v1

    .line 693
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->l:I

    .line 696
    :cond_14
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .prologue
    .line 700
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->x:Landroid/widget/PopupWindow$OnDismissListener;

    .line 701
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 218
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->t:Z

    .line 219
    return-void
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->p:Z

    .line 713
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->r:I

    .line 714
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 724
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->u:Z

    .line 725
    return-void
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->q:Z

    .line 719
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->s:I

    .line 720
    return-void
.end method

.method public dismiss()V
    .registers 5

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 263
    if-lez v1, :cond_28

    .line 264
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    new-array v2, v1, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 266
    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_28

    .line 267
    aget-object v2, v0, v1

    .line 268
    iget-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 269
    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 266
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 273
    :cond_28
    return-void
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 3

    .prologue
    .line 705
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 707
    :goto_9
    return-object v0

    .line 705
    :cond_a
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    .line 707
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_9
.end method

.method public isShowing()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 607
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->d(Landroid/support/v7/view/menu/MenuBuilder;)I

    move-result v1

    .line 608
    if-gez v1, :cond_9

    .line 662
    :cond_8
    :goto_8
    return-void

    .line 613
    :cond_9
    add-int/lit8 v0, v1, 0x1

    .line 614
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 615
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 616
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 620
    :cond_20
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 621
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 622
    iget-boolean v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->y:Z

    if-eqz v1, :cond_3b

    .line 624
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 625
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 627
    :cond_3b
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 629
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 630
    if-lez v1, :cond_80

    .line 631
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->c:I

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->o:I

    .line 636
    :goto_56
    if-nez v1, :cond_87

    .line 638
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 640
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->v:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_65

    .line 641
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->v:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->a(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 644
    :cond_65
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->w:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_7a

    .line 645
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->w:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 646
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->w:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 648
    :cond_78
    iput-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->w:Landroid/view/ViewTreeObserver;

    .line 654
    :cond_7a
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->x:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_8

    .line 633
    :cond_80
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->d()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->o:I

    goto :goto_56

    .line 655
    :cond_87
    if-eqz p2, :cond_8

    .line 659
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 660
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto/16 :goto_8
.end method

.method public onDismiss()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 538
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_9
    if-ge v2, v4, :cond_27

    .line 540
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 541
    iget-object v5, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_23

    .line 549
    :goto_1b
    if-eqz v0, :cond_22

    .line 550
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 552
    :cond_22
    return-void

    .line 539
    :cond_23
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_27
    move-object v0, v1

    goto :goto_1b
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_f

    const/16 v1, 0x52

    if-ne p2, v1, :cond_f

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 281
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 676
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 569
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 570
    iget-object v3, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_7

    .line 572
    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    move v0, v1

    .line 585
    :goto_1f
    return v0

    .line 577
    :cond_20
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 578
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 580
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->v:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_32

    .line 581
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->v:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->a(Landroid/support/v7/view/menu/MenuBuilder;)Z

    :cond_32
    move v0, v1

    .line 583
    goto :goto_1f

    .line 585
    :cond_34
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .prologue
    .line 563
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->v:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 564
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    :cond_6
    :goto_6
    return-void

    .line 240
    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    .line 241
    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->c(Landroid/support/v7/view/menu/MenuBuilder;)V

    goto :goto_d

    .line 243
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->m:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->n:Landroid/view/View;

    .line 247
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->n:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 248
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->w:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_41

    const/4 v0, 0x1

    .line 249
    :goto_2f
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->w:Landroid/view/ViewTreeObserver;

    .line 250
    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->w:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_6

    .line 248
    :cond_41
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public updateMenuView(Z)V
    .registers 4

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 557
    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 559
    :cond_22
    return-void
.end method
