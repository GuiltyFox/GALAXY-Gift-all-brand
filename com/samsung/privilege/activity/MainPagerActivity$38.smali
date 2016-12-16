.class Lcom/samsung/privilege/activity/MainPagerActivity$38;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

.field final synthetic c:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .registers 4

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->b:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 2601
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 2540
    return-void
.end method

.method public onPageSelected(I)V
    .registers 8

    .prologue
    const v5, 0x7f1006ed

    const v4, 0x7f10010d

    .line 2544
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->j(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 2545
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->j(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2546
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->j(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2547
    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2548
    const-string/jumbo v2, "#7ed1f3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2556
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->k(Lcom/samsung/privilege/activity/MainPagerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    .line 2558
    iget-object v2, v1, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    if-eqz v2, :cond_e7

    iget-object v2, v1, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 2559
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2566
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->b:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(I)Landroid/view/View;

    move-result-object v2

    .line 2567
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2568
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2569
    sget v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2571
    const-string/jumbo v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2583
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    .line 2585
    iget-object v3, v1, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    if-eqz v3, :cond_123

    iget-object v3, v1, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_123

    .line 2586
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, v1, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2592
    :goto_c0
    const-string/jumbo v0, "Main Page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scroll Bar Category "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;

    .line 2595
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;I)I

    .line 2596
    return-void

    .line 2561
    :cond_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/campaigncat/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_inactive/picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2562
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_6d

    .line 2588
    :cond_123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/campaigncat/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_active/picture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2589
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$38;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_c0
.end method
