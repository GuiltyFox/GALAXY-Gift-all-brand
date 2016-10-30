.class Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;
.super Ljava/lang/Object;
.source "ErrorBlurDialog.java"


# instance fields
.field LayoutMainComman:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10028e
    .end annotation
.end field

.field final synthetic a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

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

.field tvCampaignDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100288
    .end annotation
.end field

.field tvError:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10029f
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 181
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 184
    if-eqz p3, :cond_d

    .line 185
    invoke-direct {p0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a()V

    .line 186
    :cond_d
    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    const/high16 v6, 0x41f00000    # 30.0f

    const v5, 0x7f0202d5

    .line 189
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    invoke-virtual {v2, v6}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a(F)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    invoke-virtual {v4, v6}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    iget-object v2, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->f()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 196
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->g()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->f()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->f()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->b(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->f()Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_7f
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->tvError:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    const v2, 0x7f0901ba

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 206
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->btnOK:Landroid/widget/Button;

    new-instance v1, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder$1;-><init>(Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_ac
    return-void

    .line 199
    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->h()Lcom/bzbs/marketplace/model/PurchaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/PurchaseModel;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture/modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->b(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->imgCampaign:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 201
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->tvCampaignDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->h()Lcom/bzbs/marketplace/model/PurchaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/PurchaseModel;->getAgencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7f
.end method
