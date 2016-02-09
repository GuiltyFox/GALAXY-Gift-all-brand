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
    .line 823
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/CampaignView;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 824
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 825
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    .line 826
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    .line 827
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 831
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 833
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
    .line 838
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 842
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/privilege/bean/CampaignView;

    .line 856
    .local v7, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    const/4 v12, 0x0

    .line 857
    .local v12, "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    move-object/from16 v15, p2

    .line 859
    .local v15, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_180

    .line 860
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300b4

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 861
    new-instance v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .end local v12    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;)V

    .line 862
    .restart local v12    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    const/high16 v1, 0x7f4d0000

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 863
    const v1, 0x7f430002

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    .line 864
    const v1, 0x7f430004

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    .line 865
    const v1, 0x7f430005

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    .line 866
    const v1, 0x7f430001

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    .line 869
    :try_start_62
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 870
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 871
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 873
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 874
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 875
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_b0} :catch_1c8

    .line 880
    :goto_b0
    invoke-virtual {v15, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 885
    :goto_b3
    const v13, 0x7f02031e

    .line 905
    .local v13, "resource_back":I
    :try_start_b6
    invoke-virtual {v15, v13}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_1c3

    .line 912
    :goto_b9
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1b2

    .line 916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 917
    new-instance v11, Ljava/text/DecimalFormat;

    const-string v1, "#,###,###"

    invoke-direct {v11, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 919
    .local v11, "formatter":Ljava/text/DecimalFormat;
    const-string v14, ""

    .line 921
    .local v14, "strCampaign_remain":Ljava/lang/String;
    :try_start_ec
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a0308

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v7, Lcom/samsung/privilege/bean/CampaignView;->Qty:I

    int-to-long v3, v3

    invoke-virtual {v11, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_118} :catch_188

    move-result-object v14

    .line 926
    :goto_119
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 935
    .end local v11    # "formatter":Ljava/text/DecimalFormat;
    .end local v14    # "strCampaign_remain":Ljava/lang/String;
    :goto_124
    iget v1, v7, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget v1, v7, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v8, v3, v5

    .line 936
    .local v8, "dblRemain":D
    iget v1, v7, Lcom/samsung/privilege/bean/CampaignView;->DayProceed:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1bb

    const-wide/16 v3, 0x0

    cmpl-double v1, v8, v3

    if-lez v1, :cond_1bb

    .line 937
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 944
    :goto_14d
    invoke-virtual {v7}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlMedium()Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$8(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    iget-object v3, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lcom/bitmapfun/util/ImageFetcher;->IMAGE_LOADING_TRANS:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 949
    :try_start_162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryName:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$9(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "View"

    iget-object v5, v7, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_17f} :catch_1c6

    .line 954
    :goto_17f
    return-object v15

    .line 882
    .end local v2    # "img_url":Ljava/lang/String;
    .end local v8    # "dblRemain":D
    .end local v13    # "resource_back":I
    :cond_180
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    check-cast v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .restart local v12    # "holder":Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_b3

    .line 922
    .restart local v11    # "formatter":Ljava/text/DecimalFormat;
    .restart local v13    # "resource_back":I
    .restart local v14    # "strCampaign_remain":Ljava/lang/String;
    :catch_188
    move-exception v10

    .line 923
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$7(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView|Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_119

    .line 929
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "formatter":Ljava/text/DecimalFormat;
    .end local v14    # "strCampaign_remain":Ljava/lang/String;
    :cond_1a9
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_124

    .line 932
    :cond_1b2
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_124

    .line 939
    .restart local v8    # "dblRemain":D
    :cond_1bb
    iget-object v1, v12, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14d

    .line 906
    .end local v8    # "dblRemain":D
    :catch_1c3
    move-exception v1

    goto/16 :goto_b9

    .line 950
    .restart local v2    # "img_url":Ljava/lang/String;
    .restart local v8    # "dblRemain":D
    :catch_1c6
    move-exception v1

    goto :goto_17f

    .line 876
    .end local v2    # "img_url":Ljava/lang/String;
    .end local v8    # "dblRemain":D
    .end local v13    # "resource_back":I
    :catch_1c8
    move-exception v1

    goto/16 :goto_b0
.end method
