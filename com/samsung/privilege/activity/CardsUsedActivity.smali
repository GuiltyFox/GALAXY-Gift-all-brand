.class public Lcom/samsung/privilege/activity/CardsUsedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;,
        Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private btnSwithImageCodeXXX:Landroid/widget/ImageView;

.field cache_name:Ljava/lang/String;

.field private contentCode:Landroid/widget/LinearLayout;

.field private contentHistory:Landroid/widget/LinearLayout;

.field private contentImgCodeXXX:Landroid/widget/LinearLayout;

.field private contentNewPay:Landroid/widget/FrameLayout;

.field private dash_item:Lcom/bzbs/bean/CardsList;

.field private formatter:Ljava/text/DecimalFormat;

.field protected gCountDownTimer:Landroid/os/CountDownTimer;

.field gDialog:Landroid/app/ProgressDialog;

.field private imgBarcode:Landroid/widget/ImageView;

.field private isBarcode:Z

.field private isTopup:Z

.field private ivStatus:Landroid/widget/ImageView;

.field private layoutButtonGenerate:Landroid/widget/RelativeLayout;

.field private layoutButtonRetry:Landroid/widget/RelativeLayout;

.field mHandler:Landroid/os/Handler;

.field private mHistoryAdapter:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

.field private tvBalance:Landroid/widget/TextView;

.field private tvCodeSmall:Landroid/widget/TextView;

.field private tvHistory:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private tvTimer:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHandler:Landroid/os/Handler;

    .line 70
    const-string/jumbo v0, "history_card"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->cache_name:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->formatter:Ljava/text/DecimalFormat;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->isBarcode:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->isTopup:Z

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->checkCodeStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentNewPay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentCode:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/activity/CardsUsedActivity;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->swithImageCode(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->layoutButtonGenerate:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->layoutButtonRetry:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/privilege/activity/CardsUsedActivity;)Ljava/text/DecimalFormat;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->formatter:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->loadCardDetail()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/privilege/activity/CardsUsedActivity;Lcom/bzbs/bean/CardsList;)Lcom/bzbs/bean/CardsList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;
    .param p1, "x1"    # Lcom/bzbs/bean/CardsList;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentHistory:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvBalance:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->isTopup:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->setUI()V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/privilege/activity/CardsUsedActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->isBarcode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->ivStatus:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addUI(IZ)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "newAdded"    # Z

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 404
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 405
    .local v1, "vi":Landroid/view/View;
    const v2, 0x7f0400d4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 445
    if-eqz v1, :cond_17

    .line 446
    if-eqz p2, :cond_18

    .line 447
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentHistory:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 452
    :cond_17
    :goto_17
    return-void

    .line 449
    :cond_18
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentHistory:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_17
.end method

.method private checkCodeStatus()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 566
    const-string/jumbo v2, ""

    const v3, 0x7f09026f

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/wallet/pay_status?code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvCodeSmall:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenWallet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/samsung/privilege/activity/CardsUsedActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCodeStatus= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 571
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CardsUsedActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$6;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wallet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v3, v3, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Click Check Status"

    invoke-static {v2, v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private static genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6
    .param p0, "barcode_type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imgBarcode"    # Landroid/widget/ImageView;

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 725
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    :goto_24
    const-string/jumbo v1, "ENCODE_TYPE"

    const-string/jumbo v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    return-object v0

    .line 726
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 727
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 729
    :cond_53
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 730
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 732
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 733
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 735
    :cond_91
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 736
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 738
    :cond_b1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 739
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 740
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 741
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 742
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 743
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 744
    :cond_102
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 745
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 746
    :cond_11d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 747
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 748
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 749
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 750
    :cond_153
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 751
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 753
    :cond_173
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 754
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 755
    :cond_18e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 756
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 757
    :cond_1a9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 758
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 759
    :cond_1c4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 760
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 761
    :cond_1df
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 762
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 764
    :cond_1fa
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24
.end method

.method private getCode()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 455
    const-string/jumbo v3, ""

    const v4, 0x7f09026f

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 456
    const-string/jumbo v2, ""

    .line 458
    .local v2, "url":Ljava/lang/String;
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/wallet/paycode?cardId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v4, v4, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenWallet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_44} :catch_8e

    move-result-object v2

    .line 464
    sget-object v3, Lcom/samsung/privilege/activity/CardsUsedActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCode= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 466
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$4;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v4, v4, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Click Generate"

    invoke-static {v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :goto_8d
    return-void

    .line 459
    :catch_8e
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_8d
.end method

.method private initialLayout()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    .line 212
    const v4, 0x7f100137

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 213
    .local v3, "scrConent":Landroid/widget/ScrollView;
    const v4, 0x7f10013d

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 214
    .local v0, "imgCard":Landroid/widget/ImageView;
    const v4, 0x7f100125

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;

    .line 215
    const v4, 0x7f100142

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvCodeSmall:Landroid/widget/TextView;

    .line 216
    const v4, 0x7f100145

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvTimer:Landroid/widget/TextView;

    .line 217
    const v4, 0x7f10014b

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentHistory:Landroid/widget/LinearLayout;

    .line 218
    const v4, 0x7f10013e

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentCode:Landroid/widget/LinearLayout;

    .line 220
    const v4, 0x7f100146

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentNewPay:Landroid/widget/FrameLayout;

    .line 221
    const v4, 0x7f100148

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->layoutButtonGenerate:Landroid/widget/RelativeLayout;

    .line 222
    const v4, 0x7f100149

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->layoutButtonRetry:Landroid/widget/RelativeLayout;

    .line 223
    const v4, 0x7f100141

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->imgBarcode:Landroid/widget/ImageView;

    .line 225
    const v4, 0x7f100136

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 227
    .local v2, "pdLoading":Landroid/widget/ProgressBar;
    const v4, 0x7f10013a

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvBalance:Landroid/widget/TextView;

    .line 228
    const v4, 0x7f10014a

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvHistory:Landroid/widget/TextView;

    .line 229
    const v4, 0x7f10013f

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->ivStatus:Landroid/widget/ImageView;

    .line 233
    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->contentCode:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v5, v5, Lcom/bzbs/bean/CardsList;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 242
    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvBalance:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v7, v7, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/bzbs/data/UserLogin;->GetWalletAmount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " THB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 245
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    const v4, 0x7f100132

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 248
    .local v1, "layoutButtonBack":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/CardsUsedActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v4, 0x7f10014d

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    .line 290
    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 291
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 292
    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 294
    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/bzbs/event/RecyclerItemClickListener;

    new-instance v6, Lcom/samsung/privilege/activity/CardsUsedActivity$2;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$2;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    invoke-direct {v5, p0, v6}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 320
    return-void
.end method

.method private initialParams()V
    .registers 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "cardslist_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CardsList;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->cache_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->cache_name:Ljava/lang/String;

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->isTopup:Z

    .line 204
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->isTopup:Z

    if-eqz v1, :cond_2f

    .line 209
    :cond_2f
    return-void
.end method

.method private loadCardDetail()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/card/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v3, v3, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenWallet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, ""

    const v3, 0x7f09026f

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 330
    sget-object v2, Lcom/samsung/privilege/activity/CardsUsedActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadCardDetail= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 332
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$3;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 382
    return-void
.end method

.method public static randomSeriesForThreeCharacter()Ljava/lang/String;
    .registers 5

    .prologue
    .line 710
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 711
    .local v1, "rnd":Ljava/util/Random;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    .local v2, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    const/16 v3, 0x8

    if-ge v0, v3, :cond_25

    .line 713
    const/16 v3, 0x1a

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 717
    :cond_25
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setUI()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 389
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvHistory:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 392
    invoke-direct {p0, v0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->addUI(IZ)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 395
    :cond_21
    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    .line 396
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 400
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CardsUsedActivity$7;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    return-void
.end method

.method private swithImageCode(ZLjava/lang/String;)V
    .registers 15
    .param p1, "isBarcode"    # Z
    .param p2, "serial"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x8

    const/4 v9, -0x1

    const/high16 v8, 0x42c80000

    const/4 v10, 0x0

    .line 661
    const-string/jumbo v0, ""

    .line 663
    .local v0, "barcode_type":Ljava/lang/String;
    if-eqz p1, :cond_8a

    .line 665
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvCodeSmall:Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    const-string/jumbo v0, "CODE_128"

    .line 669
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CardsUsedActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-direct {v5, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 671
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    :try_start_21
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-static {v0, p2, v7}, Lcom/samsung/privilege/activity/CardsUsedActivity;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v3

    .line 672
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct {v6, p0, v3, v7, v8}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V

    .line 673
    .local v6, "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_6a

    .line 675
    :try_start_34
    invoke-virtual {v6}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 676
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3d
    .catch Lcom/google/zxing/WriterException; {:try_start_34 .. :try_end_3d} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_6a

    .line 705
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :goto_3d
    const v7, 0x7f100140

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 706
    .local v4, "layoutCode":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    return-void

    .line 677
    .end local v4    # "layoutCode":Landroid/widget/LinearLayout;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :catch_4a
    move-exception v2

    .line 678
    .local v2, "e":Lcom/google/zxing/WriterException;
    :try_start_4b
    const-string/jumbo v7, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(WriterException):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_69} :catch_6a

    goto :goto_3d

    .line 680
    .end local v2    # "e":Lcom/google/zxing/WriterException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :catch_6a
    move-exception v2

    .line 681
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 685
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8a
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->tvCodeSmall:Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const-string/jumbo v0, "QR_CODE"

    .line 689
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CardsUsedActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-direct {v5, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 691
    .restart local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :try_start_a0
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-static {v0, p2, v7}, Lcom/samsung/privilege/activity/CardsUsedActivity;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v3

    .line 692
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v6, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    invoke-direct {v6, p0, v3, v7, v8}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V

    .line 693
    .restart local v6    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b3} :catch_de

    .line 695
    :try_start_b3
    invoke-virtual {v6}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 696
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_bc
    .catch Lcom/google/zxing/WriterException; {:try_start_b3 .. :try_end_bc} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bc} :catch_de

    goto :goto_3d

    .line 697
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_bd
    move-exception v2

    .line 698
    .local v2, "e":Lcom/google/zxing/WriterException;
    :try_start_be
    const-string/jumbo v7, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(WriterException):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_dc} :catch_de

    goto/16 :goto_3d

    .line 700
    .end local v2    # "e":Lcom/google/zxing/WriterException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :catch_de
    move-exception v2

    .line 701
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 775
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public GetSerialCodeValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 789
    const/4 v1, 0x0

    .line 791
    .local v1, "serial":Ljava/lang/String;
    const v3, 0x7f10013e

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 792
    .local v0, "contentCode":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21

    .line 793
    const v3, 0x7f100142

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 794
    .local v2, "tvCode":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    .end local v2    # "tvCode":Landroid/widget/TextView;
    :cond_21
    return-object v1
.end method

.method protected cancelTimer()V
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 561
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 563
    :cond_9
    return-void
.end method

.method protected countDownTimer(J)V
    .registers 10
    .param p1, "expirein"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 527
    new-instance v0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;

    mul-long v2, p1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CardsUsedActivity$5;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;JJ)V

    .line 556
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->gCountDownTimer:Landroid/os/CountDownTimer;

    .line 557
    return-void
.end method

.method public doAllHistory(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 944
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Issuer"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string/jumbo v1, "cardId"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->startActivity(Landroid/content/Intent;)V

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Click All History"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public doGenerate(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getCode()V

    .line 654
    return-void
.end method

.method public doOnNotification()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->checkCodeStatus()V

    .line 324
    return-void
.end method

.method public doRetry(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->checkCodeStatus()V

    .line 658
    return-void
.end method

.method public doSwapBarcode(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 802
    const v6, 0x7f100141

    :try_start_3
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 803
    .local v3, "ivBarcode":Landroid/widget/ImageView;
    const v6, 0x7f100142

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 805
    .local v5, "tvCode":Landroid/widget/TextView;
    const-string/jumbo v6, "CODE_128"

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v2

    .line 806
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-direct {v4, p0, v2, v6, v7}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_51

    .line 808
    .local v4, "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :try_start_29
    invoke-virtual {v4}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 809
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_30
    .catch Lcom/google/zxing/WriterException; {:try_start_29 .. :try_end_30} :catch_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_51

    .line 816
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ivBarcode":Landroid/widget/ImageView;
    .end local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    .end local v5    # "tvCode":Landroid/widget/TextView;
    :goto_30
    return-void

    .line 810
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "ivBarcode":Landroid/widget/ImageView;
    .restart local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    .restart local v5    # "tvCode":Landroid/widget/TextView;
    :catch_31
    move-exception v1

    .line 811
    .local v1, "e":Lcom/google/zxing/WriterException;
    :try_start_32
    const-string/jumbo v6, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(WriterException):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_50} :catch_51

    goto :goto_30

    .line 813
    .end local v1    # "e":Lcom/google/zxing/WriterException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ivBarcode":Landroid/widget/ImageView;
    .end local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    .end local v5    # "tvCode":Landroid/widget/TextView;
    :catch_51
    move-exception v1

    .line 814
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(Exception):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public doSwapQRCode(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 820
    const v6, 0x7f100141

    :try_start_3
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 821
    .local v3, "ivBarcode":Landroid/widget/ImageView;
    const v6, 0x7f100142

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 823
    .local v5, "tvCode":Landroid/widget/TextView;
    const-string/jumbo v6, "QR_CODE"

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v2

    .line 824
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-direct {v4, p0, v2, v6, v7}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_51

    .line 826
    .local v4, "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :try_start_29
    invoke-virtual {v4}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 827
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_30
    .catch Lcom/google/zxing/WriterException; {:try_start_29 .. :try_end_30} :catch_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_51

    .line 834
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ivBarcode":Landroid/widget/ImageView;
    .end local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    .end local v5    # "tvCode":Landroid/widget/TextView;
    :goto_30
    return-void

    .line 828
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "ivBarcode":Landroid/widget/ImageView;
    .restart local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    .restart local v5    # "tvCode":Landroid/widget/TextView;
    :catch_31
    move-exception v1

    .line 829
    .local v1, "e":Lcom/google/zxing/WriterException;
    :try_start_32
    const-string/jumbo v6, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(WriterException):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_50} :catch_51

    goto :goto_30

    .line 831
    .end local v1    # "e":Lcom/google/zxing/WriterException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "ivBarcode":Landroid/widget/ImageView;
    .end local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    .end local v5    # "tvCode":Landroid/widget/TextView;
    :catch_51
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(Exception):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v4, 0x7f04002b

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->setContentView(I)V

    .line 96
    const v4, 0x7f05000d

    const v5, 0x7f05004e

    invoke-virtual {p0, v4, v5}, Lcom/samsung/privilege/activity/CardsUsedActivity;->overridePendingTransition(II)V

    .line 98
    sput-object p0, Lcom/bzbs/data/AppSetting;->gCardsUsedActivity:Lcom/samsung/privilege/activity/CardsUsedActivity;

    .line 103
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->initialParams()V

    .line 105
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->initialLayout()V

    .line 106
    iget-boolean v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->isTopup:Z

    if-nez v4, :cond_56

    .line 107
    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->cache_name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "response_text":Ljava/lang/String;
    sget-object v4, Lcom/samsung/privilege/activity/CardsUsedActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cache_name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 112
    :try_start_4a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lcom/bzbs/bean/CardsList;

    invoke-direct {v0, v2}, Lcom/bzbs/bean/CardsList;-><init>(Lorg/json/JSONObject;)V

    .line 115
    .local v0, "cards":Lcom/bzbs/bean/CardsList;
    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_56} :catch_94

    .line 127
    .end local v0    # "cards":Lcom/bzbs/bean/CardsList;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "response_text":Ljava/lang/String;
    :cond_56
    :goto_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wallet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v5, v5, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wallet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v5, v5, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "View Wallet"

    iget-object v6, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;

    iget-object v6, v6, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 121
    .restart local v3    # "response_text":Ljava/lang/String;
    :catch_94
    move-exception v1

    .line 122
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_56
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/bzbs/data/AppSetting;->gCardsUsedActivity:Lcom/samsung/privilege/activity/CardsUsedActivity;

    .line 162
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 134
    const v0, 0x7f05004d

    const v1, 0x7f05000e

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->overridePendingTransition(II)V

    .line 136
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->clearPostListener()V

    .line 137
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 143
    sput-object p0, Lcom/bzbs/data/AppSetting;->gCardsUsedActivity:Lcom/samsung/privilege/activity/CardsUsedActivity;

    .line 152
    new-instance v0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Lcom/samsung/privilege/activity/CardsUsedActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->addWalletListener(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->loadCardDetail()V

    .line 155
    return-void
.end method
