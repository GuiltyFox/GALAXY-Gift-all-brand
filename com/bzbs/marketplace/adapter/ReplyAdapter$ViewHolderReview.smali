.class Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ReplyAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

.field btnLike:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006a0
    .end annotation
.end field

.field contentView:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10069b
    .end annotation
.end field

.field imageHeader:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006a1
    .end annotation
.end field

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100698
    .end annotation
.end field

.field imageProfile:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001c4
    .end annotation
.end field

.field layoutComment:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100650
    .end annotation
.end field

.field layoutLike:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100652
    .end annotation
.end field

.field textCreateDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10069d
    .end annotation
.end field

.field textCreateTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10069e
    .end annotation
.end field

.field textDisplay:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10069c
    .end annotation
.end field

.field textPost:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10069f
    .end annotation
.end field

.field textViewComment:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100651
    .end annotation
.end field

.field textViewLike:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100654
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    .line 164
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 166
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 276
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a(ILjava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->layoutComment:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$4;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;Lcom/bzbs/marketplace/listener/OnTabItemListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method public a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 13

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/Sticker;

    .line 172
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->isHeader()Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 173
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 177
    :goto_37
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm aaa"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->textDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->textPost:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->textViewComment:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCommentCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->textViewLike:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getLikes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->textCreateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->textCreateDate:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 188
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlImageProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v3, 0x0

    new-instance v4, Lcom/bzbs/marketplace/control/GlideCircleTransform;

    iget-object v5, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    .line 190
    invoke-static {v5}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bzbs/marketplace/control/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f020275

    .line 191
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 192
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imageProfile:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 195
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->isLiked()Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 196
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v2, 0x7f02029d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->btnLike:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 201
    :goto_108
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12e

    .line 202
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cf-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e3

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "f-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e3

    .line 203
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->layoutLike:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    :cond_12e
    :goto_12e
    if-eqz v0, :cond_16f

    .line 210
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16f

    .line 211
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/marketplace/sticker/Sticker;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 212
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/sticker/Sticker;->b()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0202d3

    invoke-static {v1, v2, v0, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 220
    :cond_16f
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ec

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ec

    .line 221
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0202d3

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 224
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$1;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_1a4
    :goto_1a4
    return-void

    .line 175
    :cond_1a5
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_37

    .line 198
    :cond_1bd
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v2, 0x7f02029e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->btnLike:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_108

    .line 205
    :cond_1e3
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->layoutLike:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_12e

    .line 230
    :cond_1ec
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a4

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    .line 231
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v2

    const v3, 0x7f0202d3

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/control/InitImage;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/io/File;I)V

    .line 234
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview$2;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReview;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a4
.end method
