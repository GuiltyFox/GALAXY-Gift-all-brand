.class Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainMenuListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MainMenuItemModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1486
    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    .line 1488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    .line 1489
    return-void
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1950
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1951
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1952
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1953
    return-object v0
.end method


# virtual methods
.method public addItem(ILcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/samsung/privilege/bean/MainMenuItemModel;

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1525
    return-void
.end method

.method public addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 3
    .param p1, "item"    # Lcom/samsung/privilege/bean/MainMenuItemModel;

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    return-void
.end method

.method public addItemAll(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MainMenuItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1520
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MainMenuItemModel;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1521
    return-void
.end method

.method public clearItemCount()V
    .registers 4

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1495
    return-void

    .line 1492
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1493
    .local v0, "model":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/MainMenuItemModel;->setCount(I)V

    goto :goto_6
.end method

.method public clearItemHistory()V
    .registers 5

    .prologue
    .line 1507
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-gez v0, :cond_b

    .line 1513
    return-void

    .line 1508
    :cond_b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1509
    .local v1, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    .line 1510
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1507
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public clearItemNoti()V
    .registers 5

    .prologue
    .line 1498
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-gez v0, :cond_b

    .line 1504
    return-void

    .line 1499
    :cond_b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1500
    .local v1, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 1501
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1498
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1552
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 29
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1558
    if-nez p2, :cond_19

    .line 1559
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 1560
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1563
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1564
    .local v18, "model":Lcom/samsung/privilege/bean/MainMenuItemModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v23

    .line 1565
    .local v23, "tf":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v24

    .line 1566
    .local v24, "tf2":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "768830479847872"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "fonts/phetsarath_ot.ttf"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v24

    .line 1571
    :cond_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "517155661760483"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "fonts/zawgyi_one.ttf"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v24

    .line 1576
    :cond_ab
    new-instance v8, Lcom/androidquery/AQuery;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    .line 1578
    .local v8, "aq":Lcom/androidquery/AQuery;
    const v2, 0x7f070348

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1579
    const v2, 0x7f070349

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1580
    const v2, 0x7f07034a

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1581
    const v2, 0x7f07009e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1583
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    if-nez v2, :cond_18f

    .line 1584
    const v2, 0x7f070341

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1585
    const v2, 0x7f070342

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1586
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1587
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1588
    const v2, 0x7f070345

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1589
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1590
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1591
    const v2, 0x7f070347

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    .line 1593
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    const-string v4, "History"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 1594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v2, 0x7f07009e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$12(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/widget/ProgressBar;)V

    .line 1597
    :cond_186
    const v2, 0x7f02032e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1946
    :cond_18e
    :goto_18e
    return-object p2

    .line 1598
    :cond_18f
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a32

    .line 1599
    const v2, 0x7f070341

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1600
    const v2, 0x7f070342

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1601
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1602
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1603
    const v2, 0x7f070345

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1604
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1605
    const v2, 0x7f070347

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1606
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1607
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title2:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1609
    const-string v2, "buzzebees"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 1610
    const v2, 0x7f070348

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1613
    :cond_26a
    const/16 v19, 0x0

    .line 1614
    .local v19, "resBackgroundId":I
    const/16 v20, 0x0

    .line 1615
    .local v20, "resIconId":I
    const/16 v21, 0x0

    .line 1617
    .local v21, "resUnreadBackgroundId":I
    const-string v2, "news"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 1618
    const v19, 0x7f020327

    .line 1619
    const v20, 0x7f0202ef

    .line 1620
    const v21, 0x7f0203af

    .line 1741
    :cond_285
    :goto_285
    const v2, 0x7f070341

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v15

    check-cast v15, Lcom/androidquery/AQuery;

    .line 1742
    .local v15, "icon":Lcom/androidquery/AQuery;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1743
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    .line 1745
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->newCount:I

    if-lez v2, :cond_a24

    .line 1746
    const v2, 0x7f070347

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->background(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->newCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_18e

    .line 1621
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_2c4
    const-string v2, "restuarant"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2da

    .line 1622
    const v19, 0x7f020328

    .line 1623
    const v20, 0x7f020307

    .line 1624
    const v21, 0x7f0203b0

    .line 1625
    goto :goto_285

    :cond_2da
    const-string v2, "desserts"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f0

    .line 1626
    const v19, 0x7f020329

    .line 1627
    const v20, 0x7f0202d3

    .line 1628
    const v21, 0x7f0203b1

    .line 1629
    goto :goto_285

    :cond_2f0
    const-string v2, "beauty"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_306

    .line 1630
    const v19, 0x7f02032a

    .line 1631
    const v20, 0x7f0202cb

    .line 1632
    const v21, 0x7f0203b2

    .line 1633
    goto :goto_285

    :cond_306
    const-string v2, "music_entertainment"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31d

    .line 1634
    const v19, 0x7f02032b

    .line 1635
    const v20, 0x7f0202ec

    .line 1636
    const v21, 0x7f0203b3

    .line 1637
    goto/16 :goto_285

    :cond_31d
    const-string v2, "all"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_334

    .line 1638
    const v19, 0x7f02032d

    .line 1639
    const v20, 0x7f0202c3

    .line 1640
    const v21, 0x7f0203b5

    .line 1641
    goto/16 :goto_285

    :cond_334
    const-string v2, "nearby"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 1642
    const v19, 0x7f020327

    .line 1643
    const v20, 0x7f0202ed

    .line 1644
    const v21, 0x7f0203af

    .line 1645
    goto/16 :goto_285

    :cond_34b
    const-string v2, "language"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_572

    .line 1646
    const v19, 0x7f020327

    .line 1647
    const v21, 0x7f0203af

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1054"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_400

    .line 1649
    const v20, 0x7f0202da

    .line 1657
    :goto_374
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02c5

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "768830479847872"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46a

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_437

    .line 1661
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02dc

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1650
    :cond_400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1108"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_419

    .line 1651
    const v20, 0x7f0202b6

    .line 1652
    goto/16 :goto_374

    :cond_419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1109"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_432

    .line 1653
    const v20, 0x7f0202b7

    .line 1654
    goto/16 :goto_374

    .line 1655
    :cond_432
    const v20, 0x7f0202db

    goto/16 :goto_374

    .line 1663
    :cond_437
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02da

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1665
    :cond_46a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "517155661760483"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f8

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c5

    .line 1667
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02dd

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1669
    :cond_4c5
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02da

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1672
    :cond_4f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53f

    .line 1673
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02db

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1675
    :cond_53f
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02da

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1678
    :cond_572
    const-string v2, "setting"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74e

    .line 1679
    const v19, 0x7f02032c

    .line 1680
    const v20, 0x7f020308

    .line 1681
    const v21, 0x7f0203b4

    .line 1682
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02bf

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "768830479847872"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_646

    .line 1685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_613

    .line 1686
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d3

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1688
    :cond_613
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d1

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1690
    :cond_646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "517155661760483"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d4

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a1

    .line 1692
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d4

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1694
    :cond_6a1
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d1

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1697
    :cond_6d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71b

    .line 1698
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d2

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1700
    :cond_71b
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d1

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1703
    :cond_74e
    const-string v2, "aboutus"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c7

    .line 1704
    const v19, 0x7f02032d

    .line 1705
    const v20, 0x7f0202c1

    .line 1706
    const v21, 0x7f0203b5

    .line 1707
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02c0

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1708
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d5

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1709
    :cond_7c7
    const-string v2, "friends"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_840

    .line 1710
    const v19, 0x7f020328

    .line 1711
    const v20, 0x7f0202dc

    .line 1712
    const v21, 0x7f0203b0

    .line 1713
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02c1

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1714
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d6

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1715
    :cond_840
    const-string v2, "buzzebees"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b9

    .line 1716
    const v19, 0x7f020329

    .line 1717
    const v20, 0x7f0202ce

    .line 1718
    const v21, 0x7f0203b1

    .line 1719
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02c2

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1720
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d7

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1721
    :cond_8b9
    const-string v2, "inapps"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_932

    .line 1722
    const v19, 0x7f02032a

    .line 1723
    const v20, 0x7f0202dd

    .line 1724
    const v21, 0x7f0203b2

    .line 1725
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02c3

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1726
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d8

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1727
    :cond_932
    const-string v2, "sign_out"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9ab

    .line 1728
    const v19, 0x7f02032b

    .line 1729
    const v20, 0x7f0202ea

    .line 1730
    const v21, 0x7f0203b3

    .line 1731
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02c4

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1732
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02d9

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1733
    :cond_9ab
    const-string v2, "qrcode"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_285

    .line 1734
    const v19, 0x7f02032b

    .line 1735
    const v20, 0x7f020303

    .line 1736
    const v21, 0x7f0203b3

    .line 1737
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02c6

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1738
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a02de

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_285

    .line 1748
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_a24
    const v2, 0x7f070347

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_18e

    .line 1750
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    .end local v19    # "resBackgroundId":I
    .end local v20    # "resIconId":I
    .end local v21    # "resUnreadBackgroundId":I
    :cond_a32
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_baa

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v2, :cond_a5f

    .line 1753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 1754
    .local v9, "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->setNotiUnread(I)V

    .line 1757
    .end local v9    # "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_a5f
    const v2, 0x7f070341

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1758
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    const-string v4, "campaign"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a83

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    const-string v4, "ads"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b95

    .line 1759
    :cond_a83
    const v2, 0x7f070342

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1763
    :goto_a8f
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1764
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1765
    const v2, 0x7f070345

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1766
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1767
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1768
    const v2, 0x7f070347

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    .line 1769
    const v2, 0x7f070341

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v15

    check-cast v15, Lcom/androidquery/AQuery;

    .line 1771
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    const-string v4, "campaign"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b16

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    const-string v4, "ads"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba3

    .line 1772
    :cond_b16
    const v2, 0x7f020346

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    .line 1773
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1774
    .local v3, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v15}, Lcom/androidquery/AQuery;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1779
    .end local v3    # "img_url":Ljava/lang/String;
    :goto_b53
    const v2, 0x7f020326

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1781
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_play_animation:Z

    if-eqz v2, :cond_18e

    .line 1782
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v16

    .line 1783
    .local v16, "inFromRight":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1784
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1785
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1787
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1788
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1790
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_18e

    .line 1761
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    .end local v16    # "inFromRight":Landroid/view/animation/Animation;
    :cond_b95
    const v2, 0x7f070342

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_a8f

    .line 1776
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_ba3
    const v2, 0x7f0202eb

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto :goto_b53

    .line 1807
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_baa
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_18e

    .line 1808
    const v2, 0x7f070341

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1809
    const v2, 0x7f070342

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1810
    const v2, 0x7f070343

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1811
    const v2, 0x7f070344

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1812
    const v2, 0x7f070345

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1813
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1815
    new-instance v12, Ljava/util/Date;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_redeem_date:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1819
    .local v12, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM yyyy hh:mm"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 1823
    .local v22, "strDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/Date;->getSeconds()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1825
    const v2, 0x7f070345

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1826
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e70

    .line 1827
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    if-eqz v2, :cond_dc8

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc8

    .line 1828
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1875
    :goto_ccd
    const v2, 0x7f070347

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    .line 1877
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cfb

    .line 1878
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    if-eqz v2, :cond_1136

    .line 1879
    const v2, 0x7f07034a

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1885
    :cond_cfb
    :goto_cfb
    const v2, 0x7f070341

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v15

    check-cast v15, Lcom/androidquery/AQuery;

    .line 1887
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090045

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1888
    .local v10, "color":I
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    if-eqz v2, :cond_11ac

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11ac

    .line 1889
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "GIFT_CAT_RESTAURANT"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1144

    .line 1890
    const v2, 0x7f020347

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    .line 1911
    :goto_d43
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/picture"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1912
    .restart local v3    # "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v15}, Lcom/androidquery/AQuery;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f02039f

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1914
    const v2, 0x7f070345

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2, v10}, Lcom/androidquery/AQuery;->textColor(I)Lcom/androidquery/AbstractAQuery;

    .line 1916
    const v2, 0x7f020326

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1918
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_play_animation:Z

    if-eqz v2, :cond_18e

    .line 1919
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v16

    .line 1920
    .restart local v16    # "inFromRight":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1921
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1922
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1924
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1925
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1927
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$2;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_18e

    .line 1830
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v10    # "color":I
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    .end local v16    # "inFromRight":Landroid/view/animation/Animation;
    :cond_dc8
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MM-yy"

    invoke-direct {v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v13, "dateformatMMDDYYYY":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-wide v4, v2, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1832
    .local v11, "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a0348

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-wide v4, v4, Lcom/samsung/privilege/bean/Purchasing;->PointPerUnit:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a0349

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a034a

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1833
    .local v14, "detail":Ljava/lang/String;
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2, v14}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1835
    .end local v11    # "d":Ljava/util/Date;
    .end local v13    # "dateformatMMDDYYYY":Ljava/text/SimpleDateFormat;
    .end local v14    # "detail":Ljava/lang/String;
    :cond_e70
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v4, "8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f78

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->PointType:Ljava/lang/String;

    const-string v4, "get"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f78

    .line 1836
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    if-eqz v2, :cond_ed0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ed0

    .line 1837
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1839
    :cond_ed0
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MM-yy"

    invoke-direct {v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1840
    .restart local v13    # "dateformatMMDDYYYY":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-wide v4, v2, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1841
    .restart local v11    # "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a0348

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-wide v4, v4, Lcom/samsung/privilege/bean/Purchasing;->PointPerUnit:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a0349

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0a034a

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1842
    .restart local v14    # "detail":Ljava/lang/String;
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2, v14}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1844
    .end local v11    # "d":Ljava/util/Date;
    .end local v13    # "dateformatMMDDYYYY":Ljava/text/SimpleDateFormat;
    .end local v14    # "detail":Ljava/lang/String;
    :cond_f78
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v4, "6"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110a

    .line 1845
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    .line 1847
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    if-nez v2, :cond_10dc

    .line 1849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$13(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1851
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1002

    .line 1852
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1853
    :cond_1002
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "manual"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10ae

    .line 1854
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1077

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1077

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v5, v5, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->appInstalledOrNot(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$14(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$13(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1860
    :goto_103f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->hasApp:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$15(Lcom/samsung/privilege/activity/MainMenuFragment;)Z

    move-result v2

    if-eqz v2, :cond_1080

    .line 1861
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->VerifyingMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1857
    :cond_1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$13(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    goto :goto_103f

    .line 1863
    :cond_1080
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1866
    :cond_10ae
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1869
    :cond_10dc
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v4, v4, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1872
    :cond_110a
    const v2, 0x7f070346

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->textSize(F)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_ccd

    .line 1881
    :cond_1136
    const v2, 0x7f070349

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_cfb

    .line 1893
    .restart local v10    # "color":I
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_1144
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "GIFT_CAT_DESSERTS"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1164

    .line 1894
    const v2, 0x7f020349

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1897
    :cond_1164
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "GIFT_CAT_BEAUTY"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1184

    .line 1898
    const v2, 0x7f02034b

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1900
    :cond_1184
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "GIFT_CAT_MUSIC"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a4

    .line 1901
    const v2, 0x7f02034a

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1904
    :cond_11a4
    const v2, 0x7f020345

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1908
    :cond_11ac
    const v2, 0x7f0202eb

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43
.end method

.method public removeItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setItemCount(Ljava/lang/String;I)V
    .registers 6
    .param p1, "categoryCode"    # Ljava/lang/String;
    .param p2, "itemCount"    # I

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1534
    :goto_c
    return-void

    .line 1528
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1529
    .local v0, "model":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1530
    invoke-virtual {v0, p2}, Lcom/samsung/privilege/bean/MainMenuItemModel;->setCount(I)V

    goto :goto_c
.end method
