.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;
.super Ljava/lang/Object;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabView(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;
    .registers 13
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 174
    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040156

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 175
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f10065e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 176
    .local v2, "imageIcon":Landroid/widget/ImageView;
    const v6, 0x7f100102

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .local v4, "textTitle":Landroid/widget/TextView;
    sget v6, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenWidth:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 182
    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v7}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 183
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    if-nez p2, :cond_4d

    .line 187
    const v6, 0x7f090370

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 188
    const v6, 0x7f02029c

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    :goto_4c
    return-object v5

    .line 191
    :cond_4d
    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v6, v6, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    .line 193
    .local v3, "objCat":Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;
    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    # getter for: Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    invoke-static {v6}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->access$300(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1054"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 194
    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v6, v6, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_th()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_7b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "campaigncat/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_gift_inactive"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "cat_img_url":Ljava/lang/String;
    :try_start_a0
    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    # getter for: Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    invoke-static {v6}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->access$400(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_bb} :catch_bc

    goto :goto_4c

    .line 200
    :catch_bc
    move-exception v6

    goto :goto_4c

    .line 195
    .end local v0    # "cat_img_url":Ljava/lang/String;
    :cond_be
    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v6, v6, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b
.end method
