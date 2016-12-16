.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;
.super Ljava/lang/Object;
.source "ReviewGiftBlurDialog.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

.field btnOK:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001ef
    .end annotation
.end field

.field contentHighRate:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060b
    .end annotation
.end field

.field contentLessRate:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100609
    .end annotation
.end field

.field etComment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060a
    .end annotation
.end field

.field imgClose:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1002b8
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

.field layoutRoot:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100295
    .end annotation
.end field

.field progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006b1
    .end annotation
.end field

.field radioGroup:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060c
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100304
    .end annotation
.end field

.field tvRatingHeader:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100602
    .end annotation
.end field

.field tvTopic:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100608
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 342
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 345
    if-eqz p3, :cond_d

    .line 346
    invoke-direct {p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->a()V

    .line 347
    :cond_d
    return-void
.end method

.method private a()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 356
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 357
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 358
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 359
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 361
    const/4 v0, 0x0

    .line 362
    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "status_bar_height"

    const-string/jumbo v5, "dimen"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 363
    if-lez v3, :cond_39

    .line 364
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 367
    :cond_39
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v0, v1, v0

    invoke-direct {v3, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 368
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->layoutRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 372
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvName:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 374
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvTopic:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 375
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->tvRatingHeader:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 377
    :cond_79
    return-void
.end method
