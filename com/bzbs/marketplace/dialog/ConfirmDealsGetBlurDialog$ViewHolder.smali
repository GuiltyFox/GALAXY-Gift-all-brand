.class Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;
.super Ljava/lang/Object;
.source "ConfirmDealsGetBlurDialog.java"


# instance fields
.field LayoutMainComman:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10028e
    .end annotation
.end field

.field final synthetic a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

.field btnClose:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100290
    .end annotation
.end field

.field btnOK:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001ed
    .end annotation
.end field

.field imgCampaign:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100287
    .end annotation
.end field

.field layoutRoot:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100285
    .end annotation
.end field

.field svCondition:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10028a
    .end annotation
.end field

.field tvCampaignClose:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100574
    .end annotation
.end field

.field tvCampaignDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100288
    .end annotation
.end field

.field tvCampaignUse:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100573
    .end annotation
.end field

.field tvShowTimeRedeem:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100289
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 218
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 220
    invoke-direct {p0}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a()V

    .line 221
    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    const v6, 0x7f0202d5

    const/high16 v5, 0x41f00000    # 30.0f

    .line 224
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-virtual {v2, v5}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 229
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->tvShowTimeRedeem:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    const v5, 0x7f0903c8

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getString(I)Ljava/lang/String;

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

    .line 232
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomInput()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomInput()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 233
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    const-string/jumbo v2, "Register"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_90
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

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

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 238
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->g()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const-string/jumbo v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    const v2, 0x7f090368

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    const v3, 0x7f090413

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    const v4, 0x7f0904bc

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{use}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"> \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\" </font>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "{br}"

    const-string/jumbo v4, "<br/>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 245
    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;

    const v4, 0x7f0904bb

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{close}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\"> \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" </font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "{br}"

    const-string/jumbo v3, "<br/>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->tvCampaignUse:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ConfirmDealsGetBlurDialog$ViewHolder;->tvCampaignClose:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method
