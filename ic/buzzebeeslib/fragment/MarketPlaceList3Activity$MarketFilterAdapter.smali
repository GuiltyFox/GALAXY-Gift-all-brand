.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceList3Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarketFilterAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignCategory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1694
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    .line 1695
    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    .line 1696
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1692
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1699
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1703
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1707
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v11, 0x36

    const/4 v10, 0x0

    .line 1716
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1723
    .local v8, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v6, 0x0

    .line 1724
    .local v6, "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    move-object v9, p2

    .line 1726
    .local v9, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b9

    .line 1727
    :cond_17
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1728
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lic/buzzebeeslib/R$layout;->bz_market_filter_row:I

    invoke-virtual {v7, v0, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1729
    new-instance v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;

    .end local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    invoke-direct {v6, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)V

    .line 1730
    .restart local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    sget v0, Lic/buzzebeeslib/R$id;->ivFilterImage:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    .line 1731
    sget v0, Lic/buzzebeeslib/R$id;->tvFilterName:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    .line 1732
    invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1748
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_3f
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v0, v2, v4, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1750
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 1751
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "All"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 1752
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_c0

    .line 1753
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_all_icon_orange:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1782
    :goto_6a
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "All"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1784
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->market_all:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1791
    :cond_88
    :goto_88
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_1b6

    .line 1792
    sget-object v0, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.samsung.privilege"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 1793
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    const/16 v2, 0xbc

    const/16 v3, 0xe4

    invoke-static {v10, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1802
    :goto_a3
    :try_start_a3
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$8(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v2, "Marketplace Category"

    const-string v3, "View"

    iget-object v4, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name_En:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b8} :catch_1c1

    .line 1807
    :goto_b8
    return-object v9

    .line 1734
    :cond_b9
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    check-cast v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;

    .restart local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    goto :goto_3f

    .line 1755
    :cond_c0
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_all_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6a

    .line 1757
    :cond_c8
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Free"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1758
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_de

    .line 1759
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_free_icon_orange:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6a

    .line 1761
    :cond_de
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_free_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6a

    .line 1763
    :cond_e6
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Deal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 1764
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_fd

    .line 1765
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_deal_icon_orange:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1767
    :cond_fd
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_deal_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1770
    :cond_106
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1773
    :cond_10f
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_143

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_active/picture"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, "cat_img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_6a

    .line 1777
    .end local v1    # "cat_img_url":Ljava/lang/String;
    :cond_143
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_inactive/picture"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1778
    .restart local v1    # "cat_img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_6a

    .line 1785
    .end local v1    # "cat_img_url":Ljava/lang/String;
    :cond_173
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Free"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 1786
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->market_free:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    .line 1787
    :cond_18c
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Deal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1788
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->market_deal:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    .line 1795
    :cond_1a5
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    const/16 v2, 0xfd

    const/16 v3, 0x96

    const/16 v4, 0x13

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a3

    .line 1798
    :cond_1b6
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a3

    .line 1803
    :catch_1c1
    move-exception v0

    goto/16 :goto_b8
.end method
