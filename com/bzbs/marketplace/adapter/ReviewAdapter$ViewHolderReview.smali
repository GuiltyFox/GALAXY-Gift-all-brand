.class Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ReviewAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

.field btnLike:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006a0
    .end annotation
.end field

.field contentRating:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006ad
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

.field imgRating1:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100603
    .end annotation
.end field

.field imgRating2:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100604
    .end annotation
.end field

.field imgRating3:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100605
    .end annotation
.end field

.field imgRating4:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100606
    .end annotation
.end field

.field imgRating5:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100607
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
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    .line 170
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 171
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 172
    return-void
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->b(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "type_gift"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 347
    const/4 v2, 0x5

    .line 348
    new-array v3, v2, [Z

    move v0, v1

    .line 349
    :goto_15
    if-ge v0, v2, :cond_21

    .line 350
    if-ge v0, p1, :cond_1e

    .line 351
    aput-boolean v4, v3, v0

    .line 349
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 353
    :cond_1e
    aput-boolean v1, v3, v0

    goto :goto_1b

    .line 356
    :cond_21
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating1:Landroid/widget/ImageView;

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 357
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating2:Landroid/widget/ImageView;

    aget-boolean v1, v3, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 358
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating3:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 359
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating4:Landroid/widget/ImageView;

    const/4 v1, 0x3

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 360
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imgRating5:Landroid/widget/ImageView;

    const/4 v1, 0x4

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 362
    :cond_47
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 333
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 308
    new-instance v1, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    const/4 v2, 0x0

    if-eqz p3, :cond_13

    sget-object v0, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    :goto_7
    invoke-direct {v1, p1, p2, v2, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$5;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$5;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;)V

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 325
    return-void

    .line 308
    :cond_13
    sget-object v0, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->c:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    goto :goto_7
.end method

.method private a(Landroid/widget/ImageView;I)V
    .registers 4

    .prologue
    .line 281
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$4;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;ILandroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(ILjava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 5

    .prologue
    .line 336
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->layoutComment:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$6;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;Lcom/bzbs/marketplace/listener/OnTabItemListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    return-void
.end method

.method public a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 13

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/Sticker;

    .line 178
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->isHeader()Z

    move-result v1

    if-eqz v1, :cond_1b1

    .line 179
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 184
    :goto_37
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm aaa"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textPost:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textViewComment:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCommentCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textViewLike:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getLikes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textCreateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->textCreateDate:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 197
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlImageProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v3, 0x0

    new-instance v4, Lcom/bzbs/marketplace/control/GlideCircleTransform;

    iget-object v5, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    .line 199
    invoke-static {v5}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bzbs/marketplace/control/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f020275

    .line 200
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 201
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imageProfile:Landroid/widget/ImageView;

    .line 202
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 204
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRating()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(I)V

    .line 206
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->isLiked()Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 207
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

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

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->btnLike:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 212
    :goto_10f
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->btnLike:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a(Landroid/widget/ImageView;I)V

    .line 214
    if-eqz v0, :cond_155

    .line 215
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_155

    .line 216
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/marketplace/sticker/Sticker;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 217
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 218
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/sticker/Sticker;->b()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0202d3

    invoke-static {v1, v2, v0, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 225
    :cond_155
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ef

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ef

    .line 226
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0202d9

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 229
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$1;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_18a
    :goto_18a
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->b(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 248
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->layoutLike:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->contentRating:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    :goto_1a6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$3;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;Lcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void

    .line 181
    :cond_1b1
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_37

    .line 209
    :cond_1c9
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

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

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->btnLike:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_10f

    .line 235
    :cond_1ef
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_18a

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18a

    .line 236
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->a:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v2

    const v3, 0x7f0202d9

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/control/InitImage;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/io/File;I)V

    .line 239
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview$2;-><init>(Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18a

    .line 251
    :cond_22a
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->layoutLike:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewAdapter$ViewHolderReview;->contentRating:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1a6
.end method
