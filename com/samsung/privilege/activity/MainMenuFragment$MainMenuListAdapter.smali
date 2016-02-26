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
    .line 1500
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1501
    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    .line 1504
    return-void
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1965
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1966
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1967
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1968
    return-object v0
.end method


# virtual methods
.method public addItem(ILcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/samsung/privilege/bean/MainMenuItemModel;

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1540
    return-void
.end method

.method public addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 3
    .param p1, "item"    # Lcom/samsung/privilege/bean/MainMenuItemModel;

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
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
    .line 1535
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MainMenuItemModel;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1536
    return-void
.end method

.method public clearItemCount()V
    .registers 4

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1510
    return-void

    .line 1507
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1508
    .local v0, "model":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/bean/MainMenuItemModel;->setCount(I)V

    goto :goto_6
.end method

.method public clearItemHistory()V
    .registers 5

    .prologue
    .line 1522
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-gez v0, :cond_b

    .line 1528
    return-void

    .line 1523
    :cond_b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1524
    .local v1, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    .line 1525
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1522
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public clearItemNoti()V
    .registers 5

    .prologue
    .line 1513
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-gez v0, :cond_b

    .line 1519
    return-void

    .line 1514
    :cond_b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1515
    .local v1, "item":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 1516
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1513
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1567
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 29
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1573
    if-nez p2, :cond_19

    .line 1574
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 1575
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1578
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1579
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

    .line 1580
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

    .line 1581
    .local v24, "tf2":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "768830479847872"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "fonts/phetsarath_ot.ttf"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v24

    .line 1586
    :cond_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "517155661760483"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1033"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "fonts/zawgyi_one.ttf"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v24

    .line 1591
    :cond_ab
    new-instance v8, Lcom/androidquery/AQuery;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    .line 1593
    .local v8, "aq":Lcom/androidquery/AQuery;
    const v2, 0x7f0c0355

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1594
    const v2, 0x7f0c0356

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1595
    const v2, 0x7f0c0357

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1596
    const v2, 0x7f0c009e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1598
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    if-nez v2, :cond_18f

    .line 1599
    const v2, 0x7f0c034e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1600
    const v2, 0x7f0c034f

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1601
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1602
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1603
    const v2, 0x7f0c0352

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1604
    const v2, 0x7f0c0353

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1605
    const v2, 0x7f0c0350

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

    .line 1606
    const v2, 0x7f0c0354

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    .line 1608
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    const-string v4, "History"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 1609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v2, 0x7f0c009e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$12(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/widget/ProgressBar;)V

    .line 1612
    :cond_186
    const v2, 0x7f020330

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1961
    :cond_18e
    :goto_18e
    return-object p2

    .line 1613
    :cond_18f
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a32

    .line 1614
    const v2, 0x7f0c034e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1615
    const v2, 0x7f0c034f

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1616
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1617
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1618
    const v2, 0x7f0c0352

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1619
    const v2, 0x7f0c0353

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1620
    const v2, 0x7f0c0354

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

    .line 1621
    const v2, 0x7f0c0350

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

    .line 1622
    const v2, 0x7f0c0351

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

    .line 1624
    const-string v2, "buzzebees"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 1625
    const v2, 0x7f0c0355

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1628
    :cond_26a
    const/16 v19, 0x0

    .line 1629
    .local v19, "resBackgroundId":I
    const/16 v20, 0x0

    .line 1630
    .local v20, "resIconId":I
    const/16 v21, 0x0

    .line 1632
    .local v21, "resUnreadBackgroundId":I
    const-string v2, "news"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 1633
    const v19, 0x7f020329

    .line 1634
    const v20, 0x7f0202f1

    .line 1635
    const v21, 0x7f0203b7

    .line 1756
    :cond_285
    :goto_285
    const v2, 0x7f0c034e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v15

    check-cast v15, Lcom/androidquery/AQuery;

    .line 1757
    .local v15, "icon":Lcom/androidquery/AQuery;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1758
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    .line 1760
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->newCount:I

    if-lez v2, :cond_a24

    .line 1761
    const v2, 0x7f0c0354

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

    .line 1636
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_2c4
    const-string v2, "restuarant"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2da

    .line 1637
    const v19, 0x7f02032a

    .line 1638
    const v20, 0x7f020309

    .line 1639
    const v21, 0x7f0203b8

    .line 1640
    goto :goto_285

    :cond_2da
    const-string v2, "desserts"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f0

    .line 1641
    const v19, 0x7f02032b

    .line 1642
    const v20, 0x7f0202d5

    .line 1643
    const v21, 0x7f0203b9

    .line 1644
    goto :goto_285

    :cond_2f0
    const-string v2, "beauty"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_306

    .line 1645
    const v19, 0x7f02032c

    .line 1646
    const v20, 0x7f0202cd

    .line 1647
    const v21, 0x7f0203ba

    .line 1648
    goto :goto_285

    :cond_306
    const-string v2, "music_entertainment"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31d

    .line 1649
    const v19, 0x7f02032d

    .line 1650
    const v20, 0x7f0202ee

    .line 1651
    const v21, 0x7f0203bb

    .line 1652
    goto/16 :goto_285

    :cond_31d
    const-string v2, "all"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_334

    .line 1653
    const v19, 0x7f02032f

    .line 1654
    const v20, 0x7f0202c5

    .line 1655
    const v21, 0x7f0203bd

    .line 1656
    goto/16 :goto_285

    :cond_334
    const-string v2, "nearby"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 1657
    const v19, 0x7f020329

    .line 1658
    const v20, 0x7f0202ef

    .line 1659
    const v21, 0x7f0203b7

    .line 1660
    goto/16 :goto_285

    :cond_34b
    const-string v2, "language"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_572

    .line 1661
    const v19, 0x7f020329

    .line 1662
    const v21, 0x7f0203b7

    .line 1663
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

    .line 1664
    const v20, 0x7f0202dc

    .line 1672
    :goto_374
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902c5

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

    .line 1674
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

    .line 1675
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

    .line 1676
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902dc

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

    .line 1666
    const v20, 0x7f0202b8

    .line 1667
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

    .line 1668
    const v20, 0x7f0202b9

    .line 1669
    goto/16 :goto_374

    .line 1670
    :cond_432
    const v20, 0x7f0202dd

    goto/16 :goto_374

    .line 1678
    :cond_437
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902da

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

    .line 1680
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

    .line 1681
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

    .line 1682
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902dd

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

    .line 1684
    :cond_4c5
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902da

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

    .line 1687
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

    .line 1688
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902db

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
    :cond_53f
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902da

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

    .line 1693
    :cond_572
    const-string v2, "setting"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74e

    .line 1694
    const v19, 0x7f02032e

    .line 1695
    const v20, 0x7f02030a

    .line 1696
    const v21, 0x7f0203bc

    .line 1697
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902bf

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

    .line 1699
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

    .line 1700
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

    .line 1701
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d3

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
    :cond_613
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d1

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

    .line 1705
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

    .line 1706
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

    .line 1707
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d4

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
    :cond_6a1
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d1

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

    .line 1712
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

    .line 1713
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d2

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
    :cond_71b
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d1

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

    .line 1718
    :cond_74e
    const-string v2, "aboutus"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c7

    .line 1719
    const v19, 0x7f02032f

    .line 1720
    const v20, 0x7f0202c3

    .line 1721
    const v21, 0x7f0203bd

    .line 1722
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902c0

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

    .line 1723
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d5

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

    .line 1724
    :cond_7c7
    const-string v2, "friends"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_840

    .line 1725
    const v19, 0x7f02032a

    .line 1726
    const v20, 0x7f0202de

    .line 1727
    const v21, 0x7f0203b8

    .line 1728
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902c1

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

    .line 1729
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d6

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

    .line 1730
    :cond_840
    const-string v2, "buzzebees"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b9

    .line 1731
    const v19, 0x7f02032b

    .line 1732
    const v20, 0x7f0202d0

    .line 1733
    const v21, 0x7f0203b9

    .line 1734
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902c2

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

    .line 1735
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d7

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

    .line 1736
    :cond_8b9
    const-string v2, "inapps"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_932

    .line 1737
    const v19, 0x7f02032c

    .line 1738
    const v20, 0x7f0202df

    .line 1739
    const v21, 0x7f0203ba

    .line 1740
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902c3

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

    .line 1741
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d8

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

    .line 1742
    :cond_932
    const-string v2, "sign_out"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9ab

    .line 1743
    const v19, 0x7f02032d

    .line 1744
    const v20, 0x7f0202ec

    .line 1745
    const v21, 0x7f0203bb

    .line 1746
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902c4

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

    .line 1747
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902d9

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
    :cond_9ab
    const-string v2, "qrcode"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_285

    .line 1749
    const v19, 0x7f02032d

    .line 1750
    const v20, 0x7f020305

    .line 1751
    const v21, 0x7f0203bb

    .line 1752
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902c6

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

    .line 1753
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f0902de

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

    .line 1763
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_a24
    const v2, 0x7f0c0354

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_18e

    .line 1765
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    .end local v19    # "resBackgroundId":I
    .end local v20    # "resIconId":I
    .end local v21    # "resUnreadBackgroundId":I
    :cond_a32
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_baa

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v2, :cond_a5f

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 1769
    .local v9, "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->setNotiUnread(I)V

    .line 1772
    .end local v9    # "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_a5f
    const v2, 0x7f0c034e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1773
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

    .line 1774
    :cond_a83
    const v2, 0x7f0c034f

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1778
    :goto_a8f
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1779
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1780
    const v2, 0x7f0c0352

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1781
    const v2, 0x7f0c0353

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1782
    const v2, 0x7f0c0353

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

    .line 1783
    const v2, 0x7f0c0354

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    .line 1784
    const v2, 0x7f0c034e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v15

    check-cast v15, Lcom/androidquery/AQuery;

    .line 1786
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

    .line 1787
    :cond_b16
    const v2, 0x7f020348

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    .line 1788
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

    .line 1789
    .local v3, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v15}, Lcom/androidquery/AQuery;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1794
    .end local v3    # "img_url":Ljava/lang/String;
    :goto_b53
    const v2, 0x7f020328

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1796
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_play_animation:Z

    if-eqz v2, :cond_18e

    .line 1797
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v16

    .line 1798
    .local v16, "inFromRight":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1799
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1800
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1802
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1803
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$1;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_18e

    .line 1776
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    .end local v16    # "inFromRight":Landroid/view/animation/Animation;
    :cond_b95
    const v2, 0x7f0c034f

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_a8f

    .line 1791
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_ba3
    const v2, 0x7f0202ed

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto :goto_b53

    .line 1822
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    :cond_baa
    move-object/from16 v0, v18

    iget v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_18e

    .line 1823
    const v2, 0x7f0c034e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1824
    const v2, 0x7f0c034f

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1825
    const v2, 0x7f0c0350

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1826
    const v2, 0x7f0c0351

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->gone()Lcom/androidquery/AbstractAQuery;

    .line 1827
    const v2, 0x7f0c0352

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1828
    const v2, 0x7f0c0353

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1830
    new-instance v12, Ljava/util/Date;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_redeem_date:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1834
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

    .line 1838
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

    .line 1840
    const v2, 0x7f0c0352

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

    .line 1841
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e70

    .line 1842
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

    .line 1843
    const v2, 0x7f0c0353

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

    .line 1890
    :goto_ccd
    const v2, 0x7f0c0354

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->invisible()Lcom/androidquery/AbstractAQuery;

    .line 1892
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cfb

    .line 1893
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    if-eqz v2, :cond_1136

    .line 1894
    const v2, 0x7f0c0357

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    .line 1900
    :cond_cfb
    :goto_cfb
    const v2, 0x7f0c034e

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v15

    check-cast v15, Lcom/androidquery/AQuery;

    .line 1902
    .restart local v15    # "icon":Lcom/androidquery/AQuery;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080045

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1903
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

    .line 1904
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

    .line 1905
    const v2, 0x7f020349

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    .line 1926
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

    .line 1927
    .restart local v3    # "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v15}, Lcom/androidquery/AQuery;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0203a7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1929
    const v2, 0x7f0c0352

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2, v10}, Lcom/androidquery/AQuery;->textColor(I)Lcom/androidquery/AbstractAQuery;

    .line 1931
    const v2, 0x7f020328

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1933
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_play_animation:Z

    if-eqz v2, :cond_18e

    .line 1934
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v16

    .line 1935
    .restart local v16    # "inFromRight":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1936
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1937
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1939
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1940
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1942
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter$2;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_18e

    .line 1845
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v10    # "color":I
    .end local v15    # "icon":Lcom/androidquery/AQuery;
    .end local v16    # "inFromRight":Landroid/view/animation/Animation;
    :cond_dc8
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MM-yy"

    invoke-direct {v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1846
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

    .line 1847
    .local v11, "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f090355

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

    const v5, 0x7f090356

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f090357

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

    .line 1848
    .local v14, "detail":Ljava/lang/String;
    const v2, 0x7f0c0353

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

    .line 1850
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

    .line 1851
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

    .line 1852
    const v2, 0x7f0c0353

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

    .line 1854
    :cond_ed0
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MM-yy"

    invoke-direct {v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1855
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

    .line 1856
    .restart local v11    # "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f090355

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

    const v5, 0x7f090356

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const v5, 0x7f090357

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

    .line 1857
    .restart local v14    # "detail":Ljava/lang/String;
    const v2, 0x7f0c0353

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

    .line 1859
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

    .line 1860
    const v2, 0x7f0c0353

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

    .line 1862
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    if-nez v2, :cond_10dc

    .line 1864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$13(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 1866
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v2, v2, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1002

    .line 1867
    const v2, 0x7f0c0353

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

    .line 1868
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

    .line 1869
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

    .line 1870
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

    .line 1875
    :goto_103f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->hasApp:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$15(Lcom/samsung/privilege/activity/MainMenuFragment;)Z

    move-result v2

    if-eqz v2, :cond_1080

    .line 1876
    const v2, 0x7f0c0353

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

    .line 1872
    :cond_1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$13(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    goto :goto_103f

    .line 1878
    :cond_1080
    const v2, 0x7f0c0353

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

    .line 1881
    :cond_10ae
    const v2, 0x7f0c0353

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

    .line 1884
    :cond_10dc
    const v2, 0x7f0c0353

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

    .line 1887
    :cond_110a
    const v2, 0x7f0c0353

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

    .line 1896
    :cond_1136
    const v2, 0x7f0c0356

    invoke-virtual {v8, v2}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2}, Lcom/androidquery/AQuery;->visible()Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_cfb

    .line 1908
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

    .line 1909
    const v2, 0x7f02034b

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1912
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

    .line 1913
    const v2, 0x7f02034d

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1915
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

    .line 1916
    const v2, 0x7f02034c

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1919
    :cond_11a4
    const v2, 0x7f020347

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43

    .line 1923
    :cond_11ac
    const v2, 0x7f0202ed

    invoke-virtual {v15, v2}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_d43
.end method

.method public removeItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1562
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
    .line 1543
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1549
    :goto_c
    return-void

    .line 1543
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 1544
    .local v0, "model":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget-object v2, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1545
    invoke-virtual {v0, p2}, Lcom/samsung/privilege/bean/MainMenuItemModel;->setCount(I)V

    goto :goto_c
.end method
