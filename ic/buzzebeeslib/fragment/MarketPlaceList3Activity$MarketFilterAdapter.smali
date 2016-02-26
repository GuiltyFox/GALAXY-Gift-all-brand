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
    .line 1721
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    .line 1722
    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    .line 1723
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1719
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1726
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1730
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1734
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

    .line 1743
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1750
    .local v8, "objCampaignCategory":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v6, 0x0

    .line 1751
    .local v6, "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    move-object v9, p2

    .line 1753
    .local v9, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d2

    .line 1754
    :cond_17
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1755
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lic/buzzebeeslib/R$layout;->bz_market_filter_row:I

    invoke-virtual {v7, v0, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1756
    new-instance v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;

    .end local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    invoke-direct {v6, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;)V

    .line 1757
    .restart local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    sget v0, Lic/buzzebeeslib/R$id;->ivFilterImage:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    .line 1758
    sget v0, Lic/buzzebeeslib/R$id;->tvFilterName:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    .line 1759
    invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1775
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_3f
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v0, v2, v4, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 1777
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 1778
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "All"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1779
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_da

    .line 1780
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_all_icon_orange:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1809
    :goto_6a
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1810
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "All"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 1811
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->market_all:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    :cond_88
    :goto_88
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_1d2

    .line 1819
    sget-object v0, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.samsung.privilege"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 1820
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    const/16 v2, 0xbc

    const/16 v3, 0xe4

    invoke-static {v10, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1830
    :goto_a3
    :try_start_a3
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v2, "BZB Marketplace"

    const-string v3, "View BZB Category"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name_En:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_d1} :catch_1dd

    .line 1835
    :goto_d1
    return-object v9

    .line 1761
    :cond_d2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    check-cast v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;

    .restart local v6    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;
    goto/16 :goto_3f

    .line 1782
    :cond_da
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_all_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6a

    .line 1784
    :cond_e2
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Free"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1785
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_f9

    .line 1786
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_free_icon_orange:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1788
    :cond_f9
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_free_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1790
    :cond_102
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Deal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1791
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_119

    .line 1792
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_deal_icon_orange:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1794
    :cond_119
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_down_deal_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1797
    :cond_122
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6a

    .line 1800
    :cond_12b
    iget-boolean v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_15f

    .line 1801
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

    .line 1802
    .local v1, "cat_img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_6a

    .line 1804
    .end local v1    # "cat_img_url":Ljava/lang/String;
    :cond_15f
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

    .line 1805
    .restart local v1    # "cat_img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v2, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->ivFilterImage:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_6a

    .line 1812
    .end local v1    # "cat_img_url":Ljava/lang/String;
    :cond_18f
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Free"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 1813
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->market_free:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    .line 1814
    :cond_1a8
    iget-object v0, v8, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-string v2, "Deal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1815
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    sget v3, Lic/buzzebeeslib/R$string;->market_deal:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    .line 1822
    :cond_1c1
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    const/16 v2, 0xfd

    const/16 v3, 0x96

    const/16 v4, 0x13

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a3

    .line 1825
    :cond_1d2
    iget-object v0, v6, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$MarketFilterAdapter$ViewHolderMarketFilterRow;->tvFilterName:Landroid/widget/TextView;

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a3

    .line 1831
    :catch_1dd
    move-exception v0

    goto/16 :goto_d1
.end method
