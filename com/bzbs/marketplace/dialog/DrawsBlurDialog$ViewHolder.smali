.class Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;
.super Ljava/lang/Object;
.source "DrawsBlurDialog.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

.field btnClose:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100260
    .end annotation
.end field

.field imgCampaign:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100247
    .end annotation
.end field

.field layoutRoot:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100253
    .end annotation
.end field

.field svCondition:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10024a
    .end annotation
.end field

.field tvCampaignDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100255
    .end annotation
.end field

.field tvDraws1:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100396
    .end annotation
.end field

.field tvDraws2:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100397
    .end annotation
.end field

.field tvDraws3:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100398
    .end annotation
.end field

.field tvDraws4:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100399
    .end annotation
.end field

.field tvDraws5:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10039a
    .end annotation
.end field

.field tvShowTimeRedeem:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100256
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 167
    if-eqz p3, :cond_d

    .line 168
    invoke-direct {p0}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a()V

    .line 169
    :cond_d
    return-void
.end method

.method private a()V
    .registers 9

    .prologue
    const v6, 0x7f0201b7

    const/high16 v5, 0x41f00000    # 30.0f

    .line 172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-virtual {v2, v5}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->B:I

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 173
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->tvShowTimeRedeem:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    const v5, 0x7f09020e

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const-string/jumbo v0, ""

    .line 181
    const-string/jumbo v2, ""

    .line 182
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-static {v1}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    if-eqz v1, :cond_ec

    .line 184
    invoke-static {}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-static {v1}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-static {v2}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->b(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-static {v1}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->tvDraws5:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getVoucherExpireDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 198
    :cond_ec
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->tvDraws5:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-static {v2}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->a(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getVoucherExpireDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/bzbs/marketplace/util/DateUtils;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method
