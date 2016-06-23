.class Lcom/samsung/privilege/activity/MainPagerActivity$37;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;


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


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 2286
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->val$listCats:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabView(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;
    .registers 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 2289
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040160

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 2290
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f10067b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2291
    .local v1, "imageIcon":Landroid/widget/ImageView;
    const v5, 0x7f100103

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2293
    .local v3, "textTitle":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenWidth:I

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2314
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->val$listCats:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/CampaignCategory;

    .line 2316
    .local v2, "objCat":Lcom/bzbs/bean/CampaignCategory;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1033"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 2317
    iget-object v5, v2, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2322
    :goto_47
    if-nez p2, :cond_ca

    .line 2323
    const-string/jumbo v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2324
    iget-object v5, v2, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    if-eqz v5, :cond_8f

    iget-object v5, v2, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 2325
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, v2, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2330
    :goto_7b
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;
    invoke-static {v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1500(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_88

    .line 2331
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # setter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;
    invoke-static {v5, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1502(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;

    .line 2343
    :cond_88
    :goto_88
    return-object v4

    .line 2319
    :cond_89
    iget-object v5, v2, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 2327
    :cond_8f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/campaigncat/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_active/picture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2328
    .local v0, "cat_img_url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_7b

    .line 2334
    .end local v0    # "cat_img_url":Ljava/lang/String;
    :cond_ca
    const-string/jumbo v5, "#7ed1f3"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2335
    iget-object v5, v2, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    if-eqz v5, :cond_fd

    iget-object v5, v2, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fd

    .line 2336
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, v2, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_88

    .line 2338
    :cond_fd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/campaigncat/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_inactive/picture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2339
    .restart local v0    # "cat_img_url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$37;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_88
.end method
