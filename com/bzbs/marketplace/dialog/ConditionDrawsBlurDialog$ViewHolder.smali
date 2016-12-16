.class Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;
.super Ljava/lang/Object;
.source "ConditionDrawsBlurDialog.java"


# instance fields
.field LayoutMainComman:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10029e
    .end annotation
.end field

.field final synthetic a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

.field btnClose:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1002a0
    .end annotation
.end field

.field btnOK:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001ef
    .end annotation
.end field

.field imgCampaign:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100297
    .end annotation
.end field

.field layoutRoot:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100295
    .end annotation
.end field

.field svCondition:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10029a
    .end annotation
.end field

.field tvCampaignDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100298
    .end annotation
.end field

.field tvCondition1:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10029b
    .end annotation
.end field

.field tvCondition2:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10029c
    .end annotation
.end field

.field tvCondition3:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10029d
    .end annotation
.end field

.field tvShowTimeRedeem:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100299
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 221
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 224
    invoke-direct {p0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->a()V

    .line 225
    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    const v6, 0x7f0202dc

    const/high16 v5, 0x41f00000    # 30.0f

    .line 228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v2, v5}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 229
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->tvCondition3:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 232
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->tvCondition3:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 234
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->tvShowTimeRedeem:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    const v5, 0x7f0903e6

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->getString(I)Ljava/lang/String;

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

    .line 237
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

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

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 239
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->tvCondition1:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 242
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->tvCondition3:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_ef
    return-void

    .line 244
    :cond_f0
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$ViewHolder;->tvCondition3:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ef
.end method
