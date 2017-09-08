.class Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RequestHelpAdapter.java"


# instance fields
.field final synthetic a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

.field imageHeader:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004fc
    .end annotation
.end field

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f2
    .end annotation
.end field

.field layoutComment:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004ab
    .end annotation
.end field

.field textCreateDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f8
    .end annotation
.end field

.field textCreateTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f9
    .end annotation
.end field

.field textDisplay:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004f7
    .end annotation
.end field

.field textPost:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004fa
    .end annotation
.end field

.field textViewComment:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004ac
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/privilege/adapter/RequestHelpAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    .line 123
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 124
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 125
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 189
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;ILjava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a(ILjava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->layoutComment:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$3;-><init>(Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;Lcom/bzbs/marketplace/listener/OnTabItemListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method public a(ILcom/bzbs/marketplace/model/review/ReviewModel;)V
    .registers 15

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f0201ca

    const/4 v8, 0x0

    .line 128
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-static {v0}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/samsung/privilege/adapter/RequestHelpAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/Sticker;

    .line 131
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->isHeader()Z

    move-result v1

    if-eqz v1, :cond_104

    .line 132
    iget-object v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-static {v2}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/samsung/privilege/adapter/RequestHelpAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 137
    :goto_3d
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm aaa"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textPost:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textViewComment:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCommentCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textCreateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->textCreateDate:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getCreatedTime()J

    move-result-wide v4

    mul-long/2addr v4, v10

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    if-eqz v0, :cond_d2

    .line 150
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d2

    .line 151
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/marketplace/sticker/Sticker;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 152
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    iget-object v2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-static {v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/samsung/privilege/adapter/RequestHelpAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/sticker/Sticker;->b()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0201c6

    invoke-static {v1, v2, v0, v3}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 160
    :cond_d2
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11c

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 161
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-static {v0}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/samsung/privilege/adapter/RequestHelpAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v9}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$1;-><init>(Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_103
    :goto_103
    return-void

    .line 134
    :cond_104
    iget-object v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imageHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-static {v2}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/samsung/privilege/adapter/RequestHelpAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_3d

    .line 170
    :cond_11c
    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_103

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 171
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->a:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-static {v0}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/samsung/privilege/adapter/RequestHelpAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2, v9}, Lcom/bzbs/marketplace/control/InitImage;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/io/File;I)V

    .line 174
    iget-object v0, p0, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;->imagePost:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview$2;-><init>(Lcom/samsung/privilege/adapter/RequestHelpAdapter$ViewHolderReview;ILcom/bzbs/marketplace/model/review/ReviewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_103
.end method
