.class public Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "MarketPlaceViewPagerFragment.java"


# instance fields
.field contentImageCover:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100659
    .end annotation
.end field

.field private g:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

.field imageMarketCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10065a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Lcom/bzbs/marketplace/model/marketplace/detail/Picture;)Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;
    .registers 5

    .prologue
    .line 33
    new-instance v0, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;

    invoke-direct {v0}, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string/jumbo v2, "MarketPlaceViewPager:Images"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 46
    const v0, 0x7f040142

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 64
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 65
    const-string/jumbo v0, "?"

    const-string/jumbo v1, "-large?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "MarketPlaceViewPager:Images"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->g:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    .line 53
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->g:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->g:Lcom/bzbs/marketplace/model/marketplace/detail/Picture;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "MarketPlaceViewPagerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imgUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f0202d2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->imageMarketCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceViewPagerFragment;->contentImageCover:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    :cond_79
    return-void
.end method
