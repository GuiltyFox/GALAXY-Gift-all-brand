.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketPlace3TypeDynamicAdapter"
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignType;",
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
            "Lic/buzzebeeslib/bean/CampaignType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignType;>;"
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 614
    iput-object p3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->data:Ljava/util/ArrayList;

    .line 615
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 616
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;)Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 627
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

    const/16 v11, 0xff

    .line 631
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/CampaignType;

    .line 633
    .local v6, "categoryType":Lic/buzzebeeslib/bean/CampaignType;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->gInflater:Landroid/view/LayoutInflater;

    sget v4, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment_type_dynamic_row:I

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 635
    .local v10, "view":Landroid/view/View;
    sget v0, Lic/buzzebeeslib/R$idMenuDynamicRow;->layoutTypeRoot:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 636
    .local v8, "layoutTypeRoot":Landroid/widget/LinearLayout;
    sget v0, Lic/buzzebeeslib/R$idMenuDynamicRow;->imgType:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 637
    .local v2, "imgType":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$idMenuDynamicRow;->tvMenuCaption:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 640
    .local v9, "tvMenuCaption":Landroid/widget/TextView;
    :try_start_2b
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "fonts/kit55p.ttf"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 641
    .local v7, "font":Landroid/graphics/Typeface;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_1b3

    .line 646
    .end local v7    # "font":Landroid/graphics/Typeface;
    :goto_3e
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->mode:Ljava/lang/String;

    const-string v4, "nearby"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 647
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    :goto_4d
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    const-string v4, "all"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 653
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_cat_all:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 669
    :goto_5c
    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_btn_type:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 672
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 673
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 674
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 676
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_bg_icon_category_down:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 710
    :cond_9f
    :goto_9f
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;

    invoke-direct {v0, p0, v6}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;Lic/buzzebeeslib/bean/CampaignType;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    return-object v10

    .line 649
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, v6, Lic/buzzebeeslib/bean/CampaignType;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v6, Lic/buzzebeeslib/bean/CampaignType;->count:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d

    .line 654
    :cond_cd
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    const-string v4, "free_ads"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 655
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_cat_free:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5c

    .line 656
    :cond_dd
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    const-string v4, "draw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 657
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_cat_draw:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .line 658
    :cond_ee
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    const-string v4, "deal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 659
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_cat_deal:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .line 660
    :cond_ff
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    const-string v4, "nearby"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 661
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_cat_nearby:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .line 662
    :cond_110
    iget-object v0, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    const-string v4, "ads"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 663
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_cat_ads:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .line 665
    :cond_121
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "menu/gift/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v6, Lic/buzzebeeslib/bean/CampaignType;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "image_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    goto/16 :goto_5c

    .line 679
    .end local v1    # "image_url":Ljava/lang/String;
    :cond_14a
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "free_ads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 681
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_bg_icon_category_down:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_9f

    .line 684
    :cond_15f
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "draw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 686
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_bg_icon_category_down:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_9f

    .line 689
    :cond_174
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "deal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 691
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_bg_icon_category_down:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_9f

    .line 694
    :cond_189
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "nearby"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 696
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_bg_icon_category_down:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_9f

    .line 699
    :cond_19e
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 701
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_bg_icon_category_down:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_9f

    .line 642
    :catch_1b3
    move-exception v0

    goto/16 :goto_3e
.end method
