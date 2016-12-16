.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;
.super Ljava/lang/Object;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;
    .registers 10

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04017c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 186
    const v0, 0x7f1006ed

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 187
    const v1, 0x7f10010d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 193
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    if-nez p2, :cond_4d

    .line 198
    const v2, 0x7f0903dc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 199
    const v1, 0x7f0202a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    :goto_4c
    return-object v4

    .line 202
    :cond_4d
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    .line 204
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->d(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "1054"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 205
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v3, v3, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_th()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_7b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "campaigncat/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_gift_inactive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :try_start_a0
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->e(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    move-result-object v2

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
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_bb} :catch_bc

    goto :goto_4c

    .line 211
    :catch_bc
    move-exception v0

    goto :goto_4c

    .line 206
    :cond_be
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v3, v3, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b
.end method
