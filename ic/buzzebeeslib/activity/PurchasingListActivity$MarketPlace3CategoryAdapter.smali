.class Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "PurchasingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketPlace3CategoryAdapter"
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

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1006
    iput-object p3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->data:Ljava/util/ArrayList;

    .line 1007
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 1008
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)Lic/buzzebeeslib/activity/PurchasingListActivity;
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1015
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1019
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1023
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 1025
    .local v0, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->gInflater:Landroid/view/LayoutInflater;

    sget v7, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment_category_row:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1027
    .local v5, "view":Landroid/view/View;
    sget v6, Lic/buzzebeeslib/R$idMarketPlace3FragmentCategory;->chkCategoryName:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1030
    .local v1, "chkCategoryName":Landroid/widget/CheckBox;
    iget-boolean v6, v0, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v6, :cond_5b

    .line 1031
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 1032
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1038
    :goto_25
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1040
    sget v6, Lic/buzzebeeslib/R$idMarketPlace3FragmentCategory;->layoutRoot:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1041
    .local v3, "layoutRoot":Landroid/widget/RelativeLayout;
    sget v6, Lic/buzzebeeslib/R$idMarketPlace3FragmentCategory;->tvCategoryName:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1044
    .local v4, "tvCategoryName":Landroid/widget/TextView;
    :try_start_38
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/kit55p.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1045
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_62

    .line 1051
    .end local v2    # "font":Landroid/graphics/Typeface;
    :goto_47
    iget-object v6, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1055
    new-instance v6, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$MarketPlace3CategoryAdapter;)V

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1076
    return-object v5

    .line 1034
    .end local v3    # "layoutRoot":Landroid/widget/RelativeLayout;
    .end local v4    # "tvCategoryName":Landroid/widget/TextView;
    :cond_5b
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 1035
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_25

    .line 1046
    .restart local v3    # "layoutRoot":Landroid/widget/RelativeLayout;
    .restart local v4    # "tvCategoryName":Landroid/widget/TextView;
    :catch_62
    move-exception v6

    goto :goto_47
.end method
