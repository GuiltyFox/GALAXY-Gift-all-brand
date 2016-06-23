.class Lcom/samsung/privilege/activity/MainPagerActivity$38;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->processJsonCategory(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$listCats:Ljava/util/ArrayList;

.field final synthetic val$viewPagerTab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->val$listCats:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->val$viewPagerTab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 2412
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 2351
    return-void
.end method

.method public onPageSelected(I)V
    .registers 13
    .param p1, "position"    # I

    .prologue
    const v10, 0x7f10067b

    const v9, 0x7f100103

    .line 2355
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1500(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6d

    .line 2356
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1500(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2357
    .local v2, "imageIconPrevious":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1500(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2358
    .local v5, "textTitlePrevious":Landroid/widget/TextView;
    sget v7, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenWidth:I

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2359
    const-string/jumbo v7, "#7ed1f3"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2367
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->val$listCats:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1600(Lcom/samsung/privilege/activity/MainPagerActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/CampaignCategory;

    .line 2369
    .local v3, "objCat":Lcom/bzbs/bean/CampaignCategory;
    iget-object v7, v3, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    if-eqz v7, :cond_e7

    iget-object v7, v3, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e7

    .line 2370
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    iget-object v8, v3, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2377
    .end local v2    # "imageIconPrevious":Landroid/widget/ImageView;
    .end local v3    # "objCat":Lcom/bzbs/bean/CampaignCategory;
    .end local v5    # "textTitlePrevious":Landroid/widget/TextView;
    :cond_6d
    :goto_6d
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->val$viewPagerTab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v7, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getTabAt(I)Landroid/view/View;

    move-result-object v6

    .line 2378
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2379
    .local v1, "imageIcon":Landroid/widget/ImageView;
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2380
    .local v4, "textTitle":Landroid/widget/TextView;
    sget v7, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenWidth:I

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2382
    const-string/jumbo v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2394
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->val$listCats:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/bean/CampaignCategory;

    .line 2396
    .restart local v3    # "objCat":Lcom/bzbs/bean/CampaignCategory;
    iget-object v7, v3, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    if-eqz v7, :cond_123

    iget-object v7, v3, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_123

    .line 2397
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    iget-object v8, v3, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2403
    :goto_c0
    const-string/jumbo v7, "Main Page"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Scroll Bar Category "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # setter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;
    invoke-static {v7, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1502(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;

    .line 2406
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # setter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I
    invoke-static {v7, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1602(Lcom/samsung/privilege/activity/MainPagerActivity;I)I

    .line 2407
    return-void

    .line 2372
    .end local v1    # "imageIcon":Landroid/widget/ImageView;
    .end local v4    # "textTitle":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    .restart local v2    # "imageIconPrevious":Landroid/widget/ImageView;
    .restart local v5    # "textTitlePrevious":Landroid/widget/TextView;
    :cond_e7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "api/campaigncat/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_inactive/picture"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2373
    .local v0, "cat_img_url":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_6d

    .line 2399
    .end local v0    # "cat_img_url":Ljava/lang/String;
    .end local v2    # "imageIconPrevious":Landroid/widget/ImageView;
    .end local v5    # "textTitlePrevious":Landroid/widget/TextView;
    .restart local v1    # "imageIcon":Landroid/widget/ImageView;
    .restart local v4    # "textTitle":Landroid/widget/TextView;
    .restart local v6    # "view":Landroid/view/View;
    :cond_123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "api/campaigncat/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_active/picture"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2400
    .restart local v0    # "cat_img_url":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_c0
.end method
