.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CampaignListPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CampaignListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignView;",
            ">;"
        }
    .end annotation
.end field

.field private font:Landroid/graphics/Typeface;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 826
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/CampaignView;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 827
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 828
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    .line 829
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    .line 830
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 834
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 836
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 841
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 845
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/bean/CampaignView;

    .line 859
    .local v8, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    const/4 v13, 0x0

    .line 860
    .local v13, "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    move-object/from16 v16, p2

    .line 862
    .local v16, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b6

    .line 863
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300b4

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 864
    new-instance v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .end local v13    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;)V

    .line 865
    .restart local v13    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    const/high16 v2, 0x7f4d0000

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 866
    const v2, 0x7f430002

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    .line 867
    const v2, 0x7f430004

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    .line 868
    const v2, 0x7f430005

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    .line 869
    const v2, 0x7f430001

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    .line 872
    :try_start_6c
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 873
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 874
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 876
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 877
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 878
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_ba} :catch_1ff

    .line 883
    :goto_ba
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 888
    :goto_bf
    const v14, 0x7f020320

    .line 908
    .local v14, "resource_back":I
    :try_start_c2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c7} :catch_1fa

    .line 915
    :goto_c7
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    iget-object v4, v8, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    iget-object v4, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1e8

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1df

    .line 920
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v2, "#,###,###"

    invoke-direct {v12, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 922
    .local v12, "formatter":Ljava/text/DecimalFormat;
    const-string v15, ""

    .line 924
    .local v15, "strCampaign_remain":Ljava/lang/String;
    :try_start_fa
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f09030f

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v8, Lcom/samsung/privilege/bean/CampaignView;->Qty:I

    int-to-long v4, v4

    invoke-virtual {v12, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_126} :catch_1be

    move-result-object v15

    .line 929
    :goto_127
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 938
    .end local v12    # "formatter":Ljava/text/DecimalFormat;
    .end local v15    # "strCampaign_remain":Ljava/lang/String;
    :goto_132
    iget v2, v8, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget v2, v8, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v10, v4, v6

    .line 939
    .local v10, "dblRemain":D
    iget v2, v8, Lcom/samsung/privilege/bean/CampaignView;->DayProceed:I

    const/4 v4, 0x2

    if-gt v2, v4, :cond_1f1

    const-wide/16 v4, 0x0

    cmpl-double v2, v10, v4

    if-lez v2, :cond_1f1

    .line 940
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 947
    :goto_15b
    invoke-virtual {v8}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlMedium()Ljava/lang/String;

    move-result-object v3

    .line 949
    .local v3, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$8(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lcom/bitmapfun/util/ImageFetcher;->IMAGE_LOADING_TRANS:I

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 953
    :try_start_170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Category-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryName:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$9(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "View Campaign Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1b5} :catch_1fd

    .line 958
    :goto_1b5
    return-object v16

    .line 885
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v10    # "dblRemain":D
    .end local v14    # "resource_back":I
    :cond_1b6
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    check-cast v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .restart local v13    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_bf

    .line 925
    .restart local v12    # "formatter":Ljava/text/DecimalFormat;
    .restart local v14    # "resource_back":I
    .restart local v15    # "strCampaign_remain":Ljava/lang/String;
    :catch_1be
    move-exception v9

    .line 926
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$7(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView|Exception := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_127

    .line 932
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "formatter":Ljava/text/DecimalFormat;
    .end local v15    # "strCampaign_remain":Ljava/lang/String;
    :cond_1df
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_132

    .line 935
    :cond_1e8
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_132

    .line 942
    .restart local v10    # "dblRemain":D
    :cond_1f1
    iget-object v2, v13, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15b

    .line 909
    .end local v10    # "dblRemain":D
    :catch_1fa
    move-exception v2

    goto/16 :goto_c7

    .line 954
    .restart local v3    # "img_url":Ljava/lang/String;
    .restart local v10    # "dblRemain":D
    :catch_1fd
    move-exception v2

    goto :goto_1b5

    .line 879
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v10    # "dblRemain":D
    .end local v14    # "resource_back":I
    :catch_1ff
    move-exception v2

    goto/16 :goto_ba
.end method
