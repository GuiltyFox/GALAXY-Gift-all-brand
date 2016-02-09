.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketPlace3CategoryDynamicAdapter"
.end annotation


# instance fields
.field public data:Ljava/util/ArrayList;
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

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
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
    .line 735
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignCategory;>;"
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->data:Ljava/util/ArrayList;

    .line 736
    iput-object p3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->data:Ljava/util/ArrayList;

    .line 737
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 738
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 745
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 749
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 753
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 755
    .local v6, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->gInflater:Landroid/view/LayoutInflater;

    sget v4, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment_category_dynamic_row:I

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 757
    .local v10, "view":Landroid/view/View;
    sget v0, Lic/buzzebeeslib/R$idMenuDynamic;->layoutCategoryRoot:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 758
    .local v8, "layoutCategoryRoot":Landroid/widget/LinearLayout;
    sget v0, Lic/buzzebeeslib/R$idMenuDynamic;->imgCategory:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 759
    .local v2, "imgCategory":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$idMenuDynamic;->tvCategoryName:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 762
    .local v9, "tvCategoryName":Landroid/widget/TextView;
    :try_start_29
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "fonts/kit55p.ttf"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 763
    .local v7, "font":Landroid/graphics/Typeface;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_a5

    .line 768
    .end local v7    # "font":Landroid/graphics/Typeface;
    :goto_3c
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, v6, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v6, Lic/buzzebeeslib/bean/CampaignCategory;->Count:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-boolean v0, v6, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    if-eqz v0, :cond_9f

    .line 771
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_bg_icon_category_down:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 776
    :goto_69
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaigncat/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v6, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/picture"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "image_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 779
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;

    invoke-direct {v0, p0, v6}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;Lic/buzzebeeslib/bean/CampaignCategory;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    return-object v10

    .line 773
    .end local v1    # "image_url":Ljava/lang/String;
    :cond_9f
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_btn_category:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_69

    .line 764
    :catch_a5
    move-exception v0

    goto :goto_3c
.end method
