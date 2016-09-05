.class public Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;
.super Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;
.source "MarketPlaceDetailFragment.java"


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field btnError:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100650
    .end annotation
.end field

.field btnSubmit:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064f
    .end annotation
.end field

.field contentCalculate:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10063a
    .end annotation
.end field

.field contentInput:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100636
    .end annotation
.end field

.field contentSubmit:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064e
    .end annotation
.end field

.field edtQuantity:Landroid/support/v7/widget/AppCompatEditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100639
    .end annotation
.end field

.field imageExpand:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100643
    .end annotation
.end field

.field layoutCalculateHidden:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10063b
    .end annotation
.end field

.field layoutLine:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100644
    .end annotation
.end field

.field spinnerColor:Lcom/rey/material/widget/Spinner;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100637
    .end annotation
.end field

.field spinnerSize:Lcom/rey/material/widget/Spinner;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100638
    .end annotation
.end field

.field private final t:Ljava/lang/String;

.field textBuyNow:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100642
    .end annotation
.end field

.field textDealPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100640
    .end annotation
.end field

.field textPointNeed:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10063d
    .end annotation
.end field

.field textPointPackage:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10063e
    .end annotation
.end field

.field textPointPackageBaht:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10063f
    .end annotation
.end field

.field textViewDetailShopAddress:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064c
    .end annotation
.end field

.field textViewDetailShopDelivered:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064a
    .end annotation
.end field

.field textViewDetailShopTel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064b
    .end annotation
.end field

.field textViewDetailShopWebsite:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10064d
    .end annotation
.end field

.field textViewDiscount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100632
    .end annotation
.end field

.field textViewFullPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100631
    .end annotation
.end field

.field textViewPoint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100633
    .end annotation
.end field

.field textViewPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100630
    .end annotation
.end field

.field textViewTimeLeft:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100635
    .end annotation
.end field

.field txtHeaderPoint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100634
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field viewShadow:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100651
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@@+DETAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;-><init>()V

    .line 68
    const-class v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->t:Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->u:Z

    .line 131
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f090439

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    if-eqz p1, :cond_56

    .line 189
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_89

    .line 190
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_56
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v3, 0x7f040142

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 199
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v1, v0}, Lcom/rey/material/widget/Spinner;->a(Landroid/widget/SpinnerAdapter;)V

    .line 200
    if-eqz p1, :cond_88

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_88

    .line 201
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0, v4}, Lcom/rey/material/widget/Spinner;->setSelection(I)V

    .line 203
    :cond_88
    return-void

    .line 192
    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 193
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_89
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;I)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 279
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    .line 281
    :try_start_17
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_120

    sget-object v0, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    :goto_21
    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_177

    move-result-object v1

    .line 284
    :try_start_25
    const-string/jumbo v0, "<uid>"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 286
    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_128

    move-result-object v0

    .line 291
    :goto_44
    :try_start_44
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_6a
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_b9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const-class v3, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "goBuyMarketPlace|url := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v0, "message"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v0, "isWebsite"

    iget-boolean v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->v:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    iget v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->j:I

    invoke-virtual {p0, v1, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l()V

    .line 324
    :cond_11f
    :goto_11f
    return-void

    .line 281
    :cond_120
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 287
    :catch_128
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_44

    .line 297
    :cond_12f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&qty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_174} :catch_177

    move-result-object v0

    goto/16 :goto_b9

    .line 320
    :catch_177
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11f
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Z)Z
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    if-nez v0, :cond_e

    .line 183
    :cond_d
    :goto_d
    return-void

    .line 163
    :cond_e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentInput:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090438

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 168
    const/4 v0, 0x1

    move v1, v0

    :goto_34
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v1, v0, :cond_60

    .line 169
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 168
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    .line 172
    :cond_60
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v3, 0x7f040142

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v1, v0}, Lcom/rey/material/widget/Spinner;->a(Landroid/widget/SpinnerAdapter;)V

    .line 176
    invoke-direct {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(I)V

    .line 177
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/Spinner;->a(Lcom/rey/material/widget/Spinner$OnItemSelectedListener;)V

    goto :goto_d
.end method

.method private h()V
    .registers 8

    .prologue
    const v6, 0x7f0901c5

    const/16 v4, 0x8

    .line 206
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v0, :cond_f

    .line 276
    :goto_e
    return-void

    .line 210
    :cond_f
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "View Campaign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c9

    .line 215
    :cond_6e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SAVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDiscount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    sget-object v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getOriginalPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u0e3f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewFullPrice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 225
    :goto_da
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0e3f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPricePerUnit()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09035e

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 229
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900b7

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_192
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewTimeLeft:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDayRemain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901bc

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopDelivered:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 234
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isDelivered()Z

    move-result v0

    if-eqz v0, :cond_2d0

    const v0, 0x7f0903a1

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e3
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopTel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyTel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d9

    const-string/jumbo v0, ""

    :goto_1ff
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e1

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyAddress()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_210
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e6

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCity()Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_21e
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2eb

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyCountry()Ljava/lang/String;

    move-result-object v2

    .line 242
    :goto_22c
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopAddress:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const-string/jumbo v0, ""

    .line 249
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopWebsite:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/bzbs/marketplace/util/LinkTextView;->a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_2ab
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v1, 0x7f050043

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentSubmit:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->f()V

    .line 275
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->i()V

    goto/16 :goto_e

    .line 222
    :cond_2c9
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_da

    .line 234
    :cond_2d0
    const v0, 0x7f0903a0

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e3

    .line 237
    :cond_2d9
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyTel()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1ff

    .line 239
    :cond_2e1
    const-string/jumbo v0, ""

    goto/16 :goto_210

    .line 240
    :cond_2e6
    const-string/jumbo v1, ""

    goto/16 :goto_21e

    .line 241
    :cond_2eb
    const-string/jumbo v2, ""

    goto/16 :goto_22c

    .line 253
    :cond_2f0
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDetailShopWebsite:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2ab
.end method

.method private i()V
    .registers 7

    .prologue
    const v5, 0x7f0903b1

    const v4, 0x7f0900af

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 328
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->k()V

    .line 329
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 332
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->viewShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    const-string/jumbo v1, "#f23d43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 336
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_40
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 347
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_62
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 363
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    const-string/jumbo v1, "#f23d43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 366
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getConditionAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_8b
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 370
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->viewShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    const-string/jumbo v1, "#f23d43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 374
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_b5
    :goto_b5
    return-void

    .line 338
    :cond_b6
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->l()Z

    move-result v0

    if-nez v0, :cond_40

    .line 339
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 340
    :cond_e9
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 348
    :cond_f3
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 349
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const v1, 0x7f0901bf

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 350
    :cond_110
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 351
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const v1, 0x7f0901c0

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 352
    :cond_12d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 353
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const v1, 0x7f09021b

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 354
    :cond_14a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 355
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 356
    :cond_164
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 357
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const-string/jumbo v1, "Subscribe"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62

    .line 359
    :cond_17d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnSubmit:Landroid/widget/TextView;

    const-string/jumbo v1, "Redeem"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_62
.end method

.method private j()Ljava/lang/String;
    .registers 9

    .prologue
    .line 567
    const-string/jumbo v0, ""

    .line 568
    const-string/jumbo v1, ""

    .line 569
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 570
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    .line 572
    :cond_14
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 573
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointType()Ljava/lang/String;

    move-result-object v1

    .line 575
    :cond_22
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)J

    move-result-wide v2

    .line 577
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_86

    long-to-float v2, v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_86

    const-string/jumbo v2, "8"

    .line 578
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string/jumbo v0, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 584
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f09033a

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090409

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09014e

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09014b

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090407

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static/range {v0 .. v7}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 585
    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_85
    return-object v0

    :cond_86
    const-string/jumbo v0, ""

    goto :goto_85
.end method

.method private k()V
    .registers 7

    .prologue
    const/16 v2, 0x8

    .line 681
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 682
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 694
    :goto_d
    return-void

    .line 684
    :cond_e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->contentCalculate:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->txtHeaderPoint:Landroid/widget/TextView;

    const v1, 0x7f0901c4

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointNeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserRequirePoint()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901c5

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackage:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pointServer"

    sget-object v4, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserPackagePoint()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u0e3f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textPointPackageBaht:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0e3f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserPackagePrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textBuyNow:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0e3f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUserSummaryPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d
.end method

.method private l()Z
    .registers 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUpdatedPoint()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getUpdatedPoint()Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->getPoString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method protected b()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->g()V

    .line 137
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->c()V

    .line 138
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h()V

    .line 141
    return-void
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->g()V

    .line 146
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->h()V

    .line 148
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPrice:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewPoint:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 150
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewTimeLeft:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 151
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->textViewDiscount:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 153
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->e()V

    .line 155
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 603
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->onActivityResult(IILandroid/content/Intent;)V

    .line 604
    const/4 v0, -0x1

    if-ne p2, v0, :cond_21

    .line 605
    const-string/jumbo v0, "action"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_21

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 607
    const-string/jumbo v1, "doRedeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 623
    :cond_21
    :goto_21
    return-void

    .line 610
    :cond_22
    const-string/jumbo v1, "doReviewList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 613
    const-string/jumbo v1, "doShareCampaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 616
    const-string/jumbo v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_21
.end method

.method public onClickCalculate(Landroid/view/View;)V
    .registers 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100641,
            0x7f10063c
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 665
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100641

    if-ne v0, v1, :cond_25

    .line 666
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 667
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->imageExpand:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 678
    :cond_24
    :goto_24
    return-void

    .line 671
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10063c

    if-ne v0, v1, :cond_24

    .line 672
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 673
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->layoutCalculateHidden:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->imageExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24
.end method

.method public onShare(Landroid/view/View;)V
    .registers 9
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10062e
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v0, :cond_5

    .line 661
    :cond_4
    :goto_4
    return-void

    .line 630
    :cond_5
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 633
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 634
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_29

    .line 635
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v1, 0x7f090251

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 639
    :cond_29
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Share"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 642
    if-nez v0, :cond_72

    .line 643
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v4, "market_like"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 645
    :cond_72
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 646
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v4, "market_like"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 650
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "campaigns/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/og/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 653
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDetail()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;

    invoke-direct {v6, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    invoke-virtual/range {v0 .. v6}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    goto/16 :goto_4
.end method

.method public onSubmit(Landroid/view/View;)V
    .registers 10
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10064e
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 384
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 385
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_20

    .line 386
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v1, 0x7f090251

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 505
    :cond_1f
    :goto_1f
    return-void

    .line 390
    :cond_20
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    if-eqz v1, :cond_32

    .line 392
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->btnError:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 395
    :cond_32
    if-eqz v0, :cond_319

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_319

    .line 398
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_1f

    .line 399
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->u:Z

    if-nez v0, :cond_1f

    .line 400
    iput-boolean v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->u:Z

    .line 401
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 411
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 416
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->j()Ljava/lang/String;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_75

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 423
    :cond_75
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isDelivered()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 426
    :cond_9b
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    .line 427
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f09032c

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09032a

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const v5, 0x7f0903b2

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    .line 426
    invoke-static/range {v0 .. v7}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->b(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_1f

    .line 434
    :cond_c1
    const-string/jumbo v0, "Click Redeem"

    .line 435
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 436
    const-string/jumbo v0, "Click Draw"

    .line 446
    :cond_d6
    :goto_d6
    const-string/jumbo v1, "BZB Campaign Details"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 450
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->b(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_1f

    .line 437
    :cond_11c
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13a

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 438
    :cond_13a
    const-string/jumbo v0, "Click Watch Ad"

    goto :goto_d6

    .line 439
    :cond_13e
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 440
    :cond_15c
    const-string/jumbo v0, "Click Free"

    goto/16 :goto_d6

    .line 441
    :cond_161
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 442
    const-string/jumbo v0, "Click Deal"

    goto/16 :goto_d6

    .line 443
    :cond_175
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 444
    const-string/jumbo v0, "Click Buy"

    goto/16 :goto_d6

    .line 451
    :cond_189
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a7

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 454
    :cond_1a7
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->c(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_1f

    .line 458
    :cond_1b4
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_273

    .line 459
    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    .line 460
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v3, :cond_26e

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    if-eqz v3, :cond_26e

    .line 461
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1ee

    .line 462
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v1, 0x7f0904ab

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_1f

    .line 464
    :cond_1ee
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_204

    .line 465
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v1, 0x7f0904ad

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_1f

    .line 467
    :cond_204
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->edtQuantity:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_222

    .line 468
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const v1, 0x7f0904ac

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_1f

    .line 472
    :cond_222
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerColor:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 473
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->spinnerSize:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 474
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    .line 475
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getSubCampaignStyle()Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->getStyles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/detail/Style;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getSubitems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;

    .line 476
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 478
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->edtQuantity:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_26e
    invoke-direct {p0, v2, v1, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 481
    :cond_273
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 483
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getInterfaceDisplay()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 484
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    .line 485
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 486
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->c(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    goto/16 :goto_1f

    .line 491
    :cond_2d2
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30f

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getInterfaceDisplay()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30f

    .line 492
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_301

    .line 493
    iput-boolean v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->v:Z

    .line 495
    :cond_301
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 497
    :cond_30f
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    const-string/jumbo v1, "Can not open."

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_1f

    .line 502
    :cond_319
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    invoke-direct {v0, p0, v7}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 503
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v4, "market_redeem"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f
.end method
