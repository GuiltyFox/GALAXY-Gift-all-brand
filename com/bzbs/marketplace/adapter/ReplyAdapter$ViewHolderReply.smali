.class Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ReplyAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

.field btnLike:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006cc
    .end annotation
.end field

.field contentView:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c7
    .end annotation
.end field

.field imageHeader:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006cd
    .end annotation
.end field

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c4
    .end annotation
.end field

.field imageProfile:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001d9
    .end annotation
.end field

.field layoutLike:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10067e
    .end annotation
.end field

.field textCreateDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c9
    .end annotation
.end field

.field textCreateTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006ca
    .end annotation
.end field

.field textDisplay:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006c8
    .end annotation
.end field

.field textPost:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006cb
    .end annotation
.end field

.field textViewLike:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100680
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 314
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    .line 315
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 316
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 317
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 432
    return-void
.end method

.method private a(Landroid/widget/ImageView;ILcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 4

    .prologue
    .line 424
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a(ILjava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 320
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textPost:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textViewLike:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getLikes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm aaa"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textCreateTime:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->textCreateDate:Landroid/widget/TextView;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 330
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlImageProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v2, Lcom/bzbs/marketplace/control/GlideCircleTransform;

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    .line 332
    invoke-static {v3}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/marketplace/control/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v1, 0x7f020278

    .line 333
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 334
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imageProfile:Landroid/widget/ImageView;

    .line 335
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 337
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->btnLike:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a(Landroid/widget/ImageView;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    .line 339
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 340
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imageHeader:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :cond_b8
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fd

    .line 344
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    .line 345
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->a:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Lcom/bzbs/marketplace/adapter/ReplyAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0202d8

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 348
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imagePost:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$1;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :goto_ec
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->contentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply$2;-><init>(Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;Lcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-void

    .line 355
    :cond_f7
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ec

    .line 358
    :cond_fd
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReplyAdapter$ViewHolderReply;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ec
.end method
