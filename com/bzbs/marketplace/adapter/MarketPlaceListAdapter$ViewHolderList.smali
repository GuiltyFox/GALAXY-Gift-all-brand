.class Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MarketPlaceListAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field contentImageView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006b3
    .end annotation
.end field

.field contentItemList:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006b1
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field imageViewCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006af
    .end annotation
.end field

.field textViewCart:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006b7
    .end annotation
.end field

.field textViewDiscount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100685
    .end annotation
.end field

.field textViewFullPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100684
    .end annotation
.end field

.field textViewPrice:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100683
    .end annotation
.end field

.field textViewTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100682
    .end annotation
.end field

.field textViewType:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006b6
    .end annotation
.end field

.field textViewUsePoint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006b4
    .end annotation
.end field

.field tvDetail:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006b5
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 143
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    .line 144
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 135
    const-string/jumbo v0, "Draw"

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->b:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "Free"

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->c:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "Get"

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->d:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "Earn"

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->e:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "Add to cart"

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->f:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "See more"

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "% OFF"

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->h:Ljava/lang/String;

    .line 145
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 146
    invoke-static {p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->b:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->c:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09021c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->d:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->e:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->f:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 348
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 349
    const-string/jumbo v0, "?"

    const-string/jumbo v1, "-large?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 351
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

.method public a(ILcom/bzbs/marketplace/listener/OnTabCartItemListener;)V
    .registers 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;Lcom/bzbs/marketplace/listener/OnTabCartItemListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-void
.end method

.method public a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->contentItemList:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$2;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;)V
    .registers 13

    .prologue
    const v10, 0x7f0901c5

    const/16 v9, 0x8

    const/4 v8, 0x0

    const v7, 0x7f0f008f

    const/4 v6, 0x1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BZB Category-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "View BZB Campaign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BZB Category-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , View BZB Campaign Banner ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->imageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 160
    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    move-result v0

    sub-int/2addr v1, v0

    .line 163
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v6, :cond_2bd

    .line 164
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    :goto_e5
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->contentImageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 174
    :cond_10d
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewFullPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_117
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewFullPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getOriginalPrice()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090403

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewFullPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewFullPrice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 183
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPricePerUnit()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090403

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getQty()D

    move-result-wide v0

    double-to-int v0, v0

    if-ge v0, v6, :cond_2d8

    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->tvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09040b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_1a5
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointPerUnit()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0901e0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "0"

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e9

    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ec

    :cond_1e9
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewUsePoint:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    const v2, 0x7f0f0037

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewUsePoint:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewPrice:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 198
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 199
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewType:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 201
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fb

    .line 202
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :goto_246
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getQty()D

    move-result-wide v0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDayRemain()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4fb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDayRemain()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4fb

    .line 278
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->tvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_2a1
    :goto_2a1
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53c

    .line 290
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_2bc
    return-void

    .line 166
    :cond_2bd
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_e5

    .line 177
    :cond_2cc
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewFullPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_117

    .line 186
    :cond_2d8
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->tvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0903f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a5

    .line 191
    :cond_2ec
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0901c6

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f3

    .line 204
    :cond_2fb
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_318

    .line 205
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_246

    .line 207
    :cond_318
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_335

    .line 208
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_246

    .line 210
    :cond_335
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_377

    .line 211
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDiscount()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_246

    .line 253
    :cond_377
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39f

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_426

    .line 254
    :cond_39f
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 257
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewUsePoint:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointPerUnit()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v0, ""

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_401

    const-string/jumbo v0, ""

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_418

    :cond_401
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_40b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_246

    :cond_418
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_40b

    .line 259
    :cond_426
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d0

    .line 260
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "use"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_465

    .line 265
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_246

    .line 267
    :cond_465
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 269
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewUsePoint:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getPointPerUnit()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4ab

    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c2

    :cond_4ab
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4b5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_246

    :cond_4c2
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b5

    .line 272
    :cond_4d0
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewDiscount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDiscount()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_246

    .line 279
    :cond_4fb
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_51b

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_51b

    .line 280
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->tvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a1

    .line 281
    :cond_51b
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getDayProceed()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2a1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2a1

    .line 282
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->tvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a1

    .line 293
    :cond_53c
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewTitle:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2bc
.end method
